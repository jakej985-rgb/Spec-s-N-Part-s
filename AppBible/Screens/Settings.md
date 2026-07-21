# Settings Screen

---

## Purpose

Central place for user preferences, unit system toggles (Metric vs. Imperial), theme selection, data backup/sync options, and privacy permissions management.

---

## User Goals

- Change application theme (Light, Dark, System default).
- Select measurement units (Miles/Gallons vs. Kilometers/Liters).
- View cloud sync status and trigger manual backup.
- Manage app permissions (camera, storage).
- Reset or export application data.

---

## Responsibilities

This screen is responsible for:

- Reading and updating global `UserPreferences`.
- Triggering dynamic theme changes across the UI.
- Directing users to OS system settings for permissions.
- Displaying app version and legal/privacy notices.

---

## Does NOT Do

This screen is NOT responsible for:

- Modifying vehicle domain objects.
- Performing vehicle maintenance logging.

---

## Widgets

- App Bar titled "Settings"
- Theme selector radio row (Light / Dark / System)
- Unit system toggle (Imperial / Metric)
- Cloud Backup & Sync row with status badge
- OS Permissions settings shortcut button
- Data Export / Reset data row (with confirmation modal)
- About & Version info card

---

## User Actions

- Select preferred theme.
- Toggle between Metric and Imperial units.
- Tap "Sync Now" to force cloud backup.
- Tap "Export Data" to generate JSON export of vehicles and maintenance logs.
- Tap "Reset Data" to wipe local database (requires double confirmation).

---

## Commands

- UserPreferences.setTheme()
- UserPreferences.setUnits()
- SyncService.forceSync()
- PermissionService.openAppSettings()
- Database.resetAll()

---

## Queries

- UserPreferences.themeMode
- UserPreferences.unitSystem
- SyncService.lastSyncTime
- PackageInfo.version

---

## Uses Classes

### Domain

- UserPreferences

### Services

- PreferenceService
- SyncService
- PermissionService
- ExportService

### Navigation Targets

- GarageScreen

---

## Inputs

- Global UserPreferences state

---

## Outputs

- Updated preference values
- Data export file

---

## Navigation Flow

Settings Screen

- → Garage Screen

---

## States

### Loading

Show spinner while loading settings profile or checking sync status.

### Success

Display current settings state with interactive toggles.

### Error

Show snackbar notification if preference save fails.

---

## Validation

- Resetting data requires user to type confirmation keyword (e.g. "DELETE").

---

## Acceptance Criteria

- Toggling theme updates application theme immediately without app restart.
- Changing units recalculates displayed values across all screens.
- Settings persist across app restarts.

---

## Future Enhancements

- Per-vehicle unit overrides.
- Custom notification sound selection for reminders.

---

## Notes

Preferences are saved locally via `SharedPreferences`.
