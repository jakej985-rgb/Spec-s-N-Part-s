# Reminders Feature

---

## Purpose
Notify users of upcoming maintenance, inspections, registration renewals, and custom reminders.

---

## Core Functionality
- Set reminders by date or mileage threshold.
- Receive notifications when due (push, in-app banner).
- Snooze reminders (1 day, 1 week, 1 month).
- Mark reminders as complete and log maintenance event automatically.
- View all reminders in a unified calendar/list view.

---

## Reminder Types
- Maintenance (oil change, tire rotation, inspections)
- Registration renewal (license plate, insurance)
- Safety inspections (vehicle safety, emissions)
- Custom user reminders

---

## Notification Strategy
- Local notifications for offline reminders.
- Push notifications when app is backgrounded (requires permission).
- In-app banner when app is active.
- Repeat notifications: initially at due date, then daily until marked complete or snoozed.

---

## UX Flow
1. User logs maintenance event (e.g., oil change).
2. App prompts: "Set reminder for next oil change?"
3. User selects date or mileage (or uses suggestion: 5000 miles/6 months).
4. Reminder saved and notification scheduled.
5. On due date or when mileage threshold reached, user receives notification.
6. Tap notification to open Maintenance screen and log the event.
7. After logging, user is prompted to set next reminder (cycle repeats).

---

## Mileage-Based Reminders
- Requires periodic mileage updates from user.
- TripLog can provide current mileage; app estimates based on driving patterns.
- Shows progress toward mileage threshold on home dashboard.

---

## Calendar View
- Dedicated Reminders screen shows:
  - Overdue reminders (red)
  - Due soon (yellow)
  - Future reminders (gray)
  - Completed/snoozed reminders (checked)

---

## Integration
- Maintenance screen: when adding record, option to set next reminder.
- Home screen: upcoming reminders widget.
- Sync: reminders shared across devices.

---

## Acceptance Criteria
- User receives notification at the correct date or mileage threshold.
- Reminder can be snoozed without dismissing it.
- Logging maintenance from notification automatically clears reminder.
- Reminders persist and sync across devices.

---

## Future Ideas
- Smart reminder timing (e.g., send on Saturday morning before suggested Monday service).
- Integration with dealer calendars for automated recall alerts.
- Group reminders by vehicle for multi-car users.

---
