# Cloud Sync Feature

---

## Purpose
Enable users to sync their vehicle data across multiple devices (phone, tablet, web) in real-time.

---

## How It Works
- User logs in with email/password; backend generates JWT token.
- All local changes (add vehicle, log maintenance, etc.) are marked for sync.
- Background worker syncs changes to cloud every 30 seconds or on-demand.
- Other logged-in devices receive updates via polling or push notifications.

---

## Sync Events
- Vehicle added/edited → synced within seconds.
- Maintenance logged → visible on other devices immediately after sync.
- Settings changed (theme, units) → synced and applied to other devices.

---

## User Experience
- Sync status icon shows in header: cloud with checkmark (synced), cloud with hour-glass (syncing), cloud with exclamation (error).
- Manual sync button available via pull-to-refresh or settings.
- On errors, show notification with option to retry or review changes.

---

## Offline Behavior
- Changes continue to work offline; sync happens when network returns.
- No error shown unless user explicitly checks sync status.

---

## Privacy & Security
- User password never stored; only JWT used for API calls.
- Data encrypted in transit (HTTPS).
- User can revoke sessions from Settings > Devices.

---

## Acceptance Criteria
- User can add vehicle on phone, see it on tablet after refresh/sync.
- Maintenance log syncs within 60 seconds.
- Offline changes sync when internet returns.
- Sync status is visible and actionable.

---

## Future Ideas
- Real-time sync via WebSocket for instant updates.
- Selective sync (sync only selected vehicles).
- Export sync logs for debugging multi-device issues.

---
