# Reminder

---

## Purpose

Data model representing scheduled service, inspection, registration, or custom reminders triggered by date or mileage thresholds.

---

## Properties

* `id` (`String`): Unique reminder identifier.
* `vehicleId` (`String`): ID of the vehicle this reminder belongs to.
* `type` (`ReminderType`): Category enum (`maintenance`, `registration`, `inspection`, `custom`).
* `title` (`String`): Title of the reminder.
* `description` (`String?`): Optional detailed description.
* `dueDate` (`DateTime?`): Target due date for calendar notifications.
* `dueMileage` (`int?`): Target mileage threshold.
* `isCompleted` (`bool`): Status indicating if the reminder has been fulfilled.
* `snoozedUntil` (`DateTime?`): Optional snooze timestamp.
* `createdAt` (`DateTime`): Timestamp when record was created.
* `updatedAt` (`DateTime`): Timestamp when record was last updated.
