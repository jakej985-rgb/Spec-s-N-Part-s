# Modifications Screen

---

## Purpose

Track, log, and view aftermarket performance, suspension, wheel, interior, and exterior modifications for the selected vehicle, calculating total modification expenditure.

---

## User Goals

- View all custom modifications logged for a vehicle.
- Track total modification investment costs.
- Categorize modifications (Engine, Suspension, Wheels, Exhaust, etc.).
- Indicate bolt-on vs. permanent modifications.
- Attach installation receipts or before/after photos.

---

## Responsibilities

This screen is responsible for:

- Displaying the modifications list grouped by category.
- Calculating and displaying total modification expenditure.
- Presenting the Add/Edit Modification dialog form.
- Filtering modifications by category or bolt-on status.

---

## Does NOT Do

This screen is NOT responsible for:

- Managing factory powertrain specs (handled by VehicleDetailsScreen).
- Managing routine oil/filter maintenance logs (handled by MaintenanceScreen).

---

## Widgets

- App Bar with title and total mod cost summary badge
- Category Filter chips (All, Engine, Suspension, Wheels, Exhaust, Interior, Exterior, Other)
- Modification card list (name, category, cost, date installed, bolt-on badge, notes)
- Add Modification Floating Action Button (FAB)
- Add/Edit Modification modal form
- Attachment upload buttons (photos, receipts)

---

## User Actions

- Tap FAB to open Add Modification form.
- Filter modifications by category.
- Toggle bolt-on filter.
- Tap modification card to view/edit full notes and cost.
- Delete a modification record.

---

## Commands

- Modification.toJson()
- ModificationsRepository.addModification()
- ModificationsRepository.updateModification()
- ModificationsRepository.deleteModification()

---

## Queries

- ModificationsRepository.getModificationsForVehicle(vehicleId)
- ModificationsRepository.getTotalCost(vehicleId)

---

## Uses Classes

### Domain

- Modification
- ModCategory
- Vehicle

### Services

- StorageService
- ModificationsRepository

### Navigation Targets

- VehicleDetailsScreen
- PartsScreen

---

## Inputs

- Active Vehicle context

---

## Outputs

- Saved/updated Modification instances
- Updated total mod cost calculations

---

## Navigation Flow

Modifications Screen

- → Vehicle Details Screen
- → Parts Screen

---

## States

### Loading

Show progress indicator while loading modification entries.

### Empty

Display empty illustration: "No modifications logged yet" with Add Mod button.

### Success

Display modification card list grouped by category with running cost total.

### Error

Show error banner if modification records fail to load.

---

## Validation

- Modification entry requires name, category, date installed, and non-negative cost.

---

## Acceptance Criteria

- Modifications render correctly grouped by category.
- Total modification cost sums up accurately across all entries.
- Bolt-on badge toggles cleanly.

---

## Future Enhancements

- Dyno chart before/after overlay integration.
- Community mod build comparisons.

---

## Notes

Modifications use `ModCategory` enum for category classification.
