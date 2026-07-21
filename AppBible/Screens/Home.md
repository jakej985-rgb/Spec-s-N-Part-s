# Home Screen

---

## Purpose

Provide a dashboard overview of the active vehicle, displaying current status, upcoming maintenance reminders, recent activity logs, and quick action shortcuts.

---

## User Goals

- View active vehicle details at a glance.
- Monitor upcoming service reminders and due mileage.
- Perform quick actions (log service, log fuel fill-up, view specs).
- Switch active vehicle quickly.

---

## Responsibilities

This screen is responsible for:

- Displaying the active vehicle summary card.
- Summarizing upcoming maintenance reminders.
- Providing one-tap shortcuts for common tasks.
- Showing recent maintenance and fuel logs.

---

## Does NOT Do

This screen is NOT responsible for:

- Managing full vehicle lists (owned by GarageScreen).
- Formulating complex service schedules.
- Direct data persistence.

---

## Widgets

- App Bar with active vehicle selector & notification bell
- Active Vehicle summary card (nickname, YMMT, VIN, mileage)
- Upcoming Reminders widget card
- Quick Action buttons (Add Service, Log Fuel, View Fluids, Add Mod)
- Recent Activity feed list

---

## User Actions

- Tap vehicle selector to switch active vehicle.
- Tap quick action button to launch action modal or navigate.
- Tap a reminder card to view/complete reminder.
- Tap recent activity item to view log detail.

---

## Commands

- Garage.selectVehicle()
- Reminder.markCompleted()
- Navigate to MaintenanceScreen
- Navigate to FuelLogScreen
- Navigate to FluidsScreen

---

## Queries

- Garage.selectedVehicle
- RemindersRepository.getUpcoming(vehicleId)
- MaintenanceRepository.getRecent(vehicleId)
- FuelLogRepository.getLatest(vehicleId)

---

## Uses Classes

### Domain

- Vehicle
- Garage
- Reminder
- MaintenanceRecord
- FuelLog

### Services

- NotificationService
- StorageService

### Navigation Targets

- GarageScreen
- MaintenanceScreen
- FluidsScreen
- PartsScreen
- SettingsScreen

---

## Inputs

- Selected Vehicle context from Garage

---

## Outputs

- Quick navigation events
- Reminder state updates

---

## Navigation Flow

Home Screen

- → Garage Screen
- → Maintenance Screen
- → Fluids Screen
- → Parts Screen
- → Settings Screen

---

## States

### Loading

Show loading skeleton cards while fetching active vehicle dashboard data.

### Empty

Show empty dashboard banner prompt if no vehicles exist in Garage.

### Success

Display populated dashboard with active vehicle header, reminder list, and activity feed.

### Error

Display retry banner if dashboard data fail to load.

---

## Validation

- Actions require an active vehicle context to be selected.

---

## Acceptance Criteria

- Dashboard reflects active vehicle state in real-time.
- Upcoming reminders list sorts by due date and mileage proximity.
- Quick action buttons pre-populate active vehicle ID when opening log forms.

---

## Future Enhancements

- Customizable dashboard widget arrangement.
- Telemetry & live OBD-II device connection status.

---

## Notes

The Home Screen acts as the primary daily operational view for vehicle owners.
