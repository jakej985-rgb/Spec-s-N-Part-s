# Offline-First Architecture

---

## Core Principles
- All reads and writes hit local SQLite first; never wait for network.
- Background sync populates changes to the server asynchronously.
- Conflict resolution favors local changes on update; remote data is advisory.
- No network required for core features (view vehicles, log maintenance, browse specs).

---

## Read Strategy
1. Query local SQLite immediately; return results to UI.
2. If data is stale (synced_at > X hours), trigger a background refresh in parallel.
3. UI shows local copy with a "refreshing..." indicator if in-flight sync is active.

---

## Write Strategy
1. Optimistic update: insert/update record locally and immediately update UI.
2. Mark record as `synced: false` in SyncLog.
3. Sync worker (background task) batches changes and sends to server.
4. On server response, mark as `synced: true` and update timestamps.
5. On error, show notification and retain local change for retry.

---

## Sync Conflict Resolution
- **Local wins**: if user made a local change and server has a newer version, keep local and re-sync.
- **Merge for collections**: if arrays or lists conflict, append non-duplicate entries (e.g., maintenance records).
- **Retry with exponential backoff**: on sync failure, retry with 2s, 4s, 8s... up to 5 retries.

---

## Data Stale Indicator
- Query includes `synced_at` timestamp; if older than 24 hours, show subtle "not recently synced" indicator.
- User can manually trigger sync via settings or pull-to-refresh.

---

## Sync Metadata
- SyncLog table tracks all pending and completed operations.
- Keeps history of sync attempts and errors for debugging.

---

## Scenarios

### Offline Usage
1. User is on airplane mode; can still add vehicles, log maintenance, browse fluids.
2. Changes saved locally with sync: false.
3. When internet returns, changes auto-sync in background.

### Slow Network
1. Large uploads (photos) may take time; show progress bar.
2. User can close app; sync continues in background.

### Sync Failure
1. Server returns 500: show "Service unavailable" and retry later.
2. Conflict (same record modified on another device): show resolver dialog.
3. Auth error: require re-login.

---

## Future Ideas
- Selective sync (sync only selected vehicles or recent records).
- Differential sync using checksums to avoid re-uploading unchanged data.
- Peer-to-peer sync via Bluetooth for nearby devices.

---
