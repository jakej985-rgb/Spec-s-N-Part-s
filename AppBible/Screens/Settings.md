# Settings Page

---

## Purpose
- Central place for user preferences and app-level settings: units, theme, privacy, and sync.

---

## Widgets
- Theme toggle (Light / Dark / System)
- Unit selector (Metric / Imperial) with preview
- Account & sync status row
- Privacy & permissions shortcuts (camera, storage)
- Advanced toggles (beta features, diagnostics)

---

## Actions
- Toggle theme and persist preference.
- Change units; update UI previews and persisted user profile.
- Open permission settings (camera, storage) and link to system settings.
- Trigger account sync and show status.
- Reset app data (with confirmation).

---

## Uses Classes
- UserPreferences (persisted settings)
- PermissionService (navigate to system settings)
- SyncService (cloud sync status)
- Analytics (settings changes)

---

## Acceptance Criteria
- User can change theme and units and the app reflects those changes immediately.
- Permission shortcuts open the appropriate OS settings.
- Settings persist across app restarts and sync when enabled.

---

## Future Ideas
- Per-vehicle unit overrides.
- Import/export settings profile.

---
