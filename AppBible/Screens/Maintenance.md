# Maintenance Screen

---

## Purpose

Track, log, and view historical vehicle maintenance events (oil changes, tire rotations, repairs) and manage scheduled service intervals for the selected vehicle.

---

## User Goals

- View full maintenance history timeline for the active vehicle.
- Log new maintenance service events with cost, mileage, notes, and receipts.
- Filter past records by service type, date, or category.
- Export service history logs for resale or records.

---

## Responsibilities

This screen is responsible for:

- Rendering the chronological maintenance timeline.
- Presenting the Add/Edit Maintenance record form.
- Managing record photo & document attachments.
- Calculating total maintenance cost totals.

---

## Does NOT Do

This screen is NOT responsible for:

- Storing aftermarket performance modifications (handled by ModificationsScreen).
- Calculating fuel efficiency (handled by FuelLog).

---

## Widgets

- App Bar with vehicle title and export action
- Maintenance timeline list (date, mileage, service type, cost, attachment icons)
- Summary banner (total maintenance spend, last service date)
- Search & Filter bar (by service type, date range)
- Add Maintenance Floating Action Button (FAB)
- Add/Edit Maintenance dialog modal with photo & doc upload buttons

---

## User Actions

- Tap FAB to open Add Maintenance dialog.
- Tap maintenance record to view or edit full details & attachments.
- Upload/camera capture receipt photos or document PDFs.
- Filter list by service type (e.g. Oil Change, Brakes, Transmission).
- Export maintenance log.

---

## Commands

- MaintenanceRecord.toJson()
- MaintenanceRepository.addRecord()
- MaintenanceRepository.updateRecord()
- MaintenanceRepository.deleteRecord()
- StorageService.saveAttachment()

---

## Queries

- MaintenanceRepository.getRecordsForVehicle(vehicleId)
- MaintenanceRepository.getTotalCost(vehicleId)

---

## Uses Classes

### Domain

- MaintenanceRecord
- Vehicle
- Photo
- Doc

### Services

- StorageService
- ExportService
- NotificationService

### Navigation Targets

- VehicleDetailsScreen
- RemindersScreen

---

## Inputs

- Active Vehicle context

---

## Outputs

- Saved/updated MaintenanceRecord instances
- Attachment file references

---

## Navigation Flow

Maintenance Screen

- → Vehicle Details Screen
- → Reminders Screen

---

## States

### Loading

Show progress indicator while reading maintenance history logs.

### Empty

Display illustration: "No maintenance records logged yet" with Add Record button.

### Success

Display chronological list of maintenance cards with cost breakdown and attachment previews.

### Error

Show error banner if maintenance history fail to load.

---

## Validation

- Maintenance record requires valid date, service type, and positive mileage value.
- Cost must be non-negative number.

---

## Acceptance Criteria

- Maintenance events persist and render in reverse chronological order.
- Photo and document attachments can be attached and viewed cleanly.
- Export action produces valid CSV summary of service logs.

---

## Future Enhancements

- Receipt OCR parser to auto-extract cost, date, and vendor.
- Service provider contact integration.

---

## Notes

All maintenance entries are scoped by `vehicleId`.
