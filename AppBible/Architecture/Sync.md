# Cloud Sync Architecture

---

## Overview
Multi-device sync using REST API; local changes are batched and sent to cloud, then pulled to other devices.

---

## Sync Flow

### Upload (Local → Server)
1. Background worker polls SyncLog for `synced: false` records.
2. Batches changes (max 100 per request) and sends to `/api/sync/push` endpoint.
3. Server validates and applies changes (upsert semantics).
4. Returns success or per-record error status.
5. Client marks successful changes as `synced: true` and logs errors.

### Download (Server → Other Devices)
1. On app launch or per background schedule, client polls `/api/sync/pull` with last sync timestamp.
2. Server returns changed records since timestamp.
3. Client applies changes locally (merge strategy: local wins on conflict).
4. Updates local `synced_at` timestamp.

---

## Endpoints

### POST /api/sync/push
- Body: array of {table, operation, record_data}
- Response: {success, errors: [{record_id, error}]}

### GET /api/sync/pull?since={ISO8601_timestamp}
- Response: array of {table, operation, record_data, timestamp}

### GET /api/sync/status
- Response: {last_pull, last_push, pending_count}

---

## Conflict Resolution
- **Local changes take precedence**: if a record is modified locally and on the server, client keeps local version and re-syncs.
- **Merge non-conflicting fields**: if different fields are changed on each side, merge them.
- **Manual resolution**: on critical conflicts, show user a dialog to choose version or custom merge.

---

## Auth & Security
- All sync requests require JWT token in Authorization header.
- Token refresh handled before each sync request.
- Sensitive data (VIN, maintenance cost) encrypted in transit (HTTPS).
- Server validates user ownership of records before accepting changes.

---

## Retry & Error Handling
- Exponential backoff: 2s, 4s, 8s, 16s, 32s (max 5 attempts).
- Network error → retry later.
- 4xx client error (auth, validation) → log error and notify user; do not retry.
- 5xx server error → retry with backoff.

---

## Data Transfer
- Use delta sync where possible (send only changed fields).
- Compress large payloads (>100KB).
- Attachments (photos) sent as separate multipart uploads.

---

## Bandwidth Optimization
- Sync only metadata on metered connections; full data on WiFi.
- User can toggle "Low Bandwidth Mode" in settings.

---

## Future Ideas
- Calendar-based sync scheduling (sync every night at 2am).
- Selective sync per vehicle or record type.
- P2P sync for offline multi-user handoff (e.g., family cars).

---
