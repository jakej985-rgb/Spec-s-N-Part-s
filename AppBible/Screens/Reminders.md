# Reminders Screen

---

## Purpose

View, schedule, and manage maintenance, registration, inspection, and custom service reminders based on date or mileage thresholds.

---

## User Goals

- View overdue, due soon, and upcoming service reminders.
- Set reminders by date or target mileage threshold.
- Snooze reminders when not ready to perform service.
- Mark reminders as complete and automatically transition them into maintenance logs.

---

## Responsibilities

This screen is responsible for:

- Displaying reminders sorted by urgency (Overdue, Due Soon, Future).
- Rendering calendar / list toggle view of reminders.
- Presenting the Add/Edit Reminder dialog modal.
- Handling snooze actions (1 day, 1 week, 1 month).
- Scheduling local notifications via `NotificationService`.

---

## Does NOT Do

This screen is NOT responsible for:

- Generating automatic vehicle mileage updates without user/trip log inputs.
- Storing full maintenance receipts (handled by MaintenanceRecord).

---

## Widgets

- App Bar with title and view toggle (List / Calendar)
- Status Tab bar (Overdue, Due Soon, Upcoming, Completed)
- Reminder Card (title, type badge, due date, due mileage, snooze button, checkmark button)
- Add Reminder Floating Action Button (FAB)
- Add/Edit Reminder dialog modal with date picker & mileage field

---

## User Actions

- Tap checkmark on reminder card to mark complete (triggers log maintenance prompt).
- Tap snooze button to select snooze duration.
- Filter reminders by type (`maintenance`, `registration`, `inspection`, `custom`).
- Tap FAB to create new reminder.

---

## Commands

- Reminder.toJson()
- RemindersRepository.addReminder()
- RemindersRepository.snoozeReminder()
- RemindersRepository.completeReminder()
- NotificationService.scheduleNotification()

---

## Queries

- RemindersRepository.getRemindersForVehicle(vehicleId)
- RemindersRepository.getOverdueCount(vehicleId)

---

## Uses Classes

### Domain

- Reminder
- ReminderType
- Vehicle

### Services

- NotificationService
- RemindersRepository

### Navigation Targets

- MaintenanceScreen
- HomeScreen

---

## Inputs

- Active Vehicle context

---

## Outputs

- Scheduled local notifications
- Completed reminder status events

---

## Navigation Flow

Reminders Screen

- → Maintenance Screen (when logging completed reminder)
- → Home Screen

---

## States

### Loading

Show skeleton loader while reading scheduled reminders.

### Empty

Display empty state illustration: "All caught up! No upcoming reminders."

### Success

Display categorized reminder list with color-coded due status badges (Red = Overdue, Yellow = Due Soon, Gray = Future).

### Error

Show error banner if reminders fail to load.

---

## Validation

- Reminder requires title, type, and at least one due threshold (dueDate or dueMileage).

---

## Acceptance Criteria

- Reminders sort correctly by due date / mileage proximity.
- Marking a reminder complete prompts user to log maintenance.
- Snoozing a reminder updates the `snoozedUntil` timestamp and reschedules notifications.

---

## Future Enhancements

- Mileage estimation algorithm based on driving history.
- Smart notification timing (e.g. weekend service alerts).

---

## Notes

Reminders use `ReminderType` enum.
