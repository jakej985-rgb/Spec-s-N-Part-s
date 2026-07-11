# Maintenance Page

---

## Purpose
- Track, schedule, and log vehicle maintenance tasks and history for each vehicle.

---

## Widgets
- Maintenance timeline (past & upcoming service items)
- Add maintenance dialog (date, mileage, type, notes, receipts)
- Filters (vehicle, interval, type)
- Quick action cards (oil change, tire rotation)

---

## Actions
- Create, edit, and delete maintenance records.
- Schedule recurring maintenance reminders.
- Attach photos/receipts to records.
- Export maintenance history as CSV or share.

---

## Uses Classes
- MaintenanceRecord (model + persistence)
- NotificationService (reminders)
- Vehicles (to link records)
- StorageService (attachments)

---

## Acceptance Criteria
- Users can add and view maintenance records tied to a vehicle.
- Recurring reminders fire and can be marked complete.
- Attachments persist and are viewable in the record detail.

---

## Future Ideas
- Predictive maintenance suggestions based on vehicle usage.
- Integration with service providers and parts ordering.

---