# Vehicle Details

---

## Purpose
- Show full vehicle information and technical specifications (drivetrain, engine, transmission, fluids, maintenance history).

---

## Widgets
- Vehicle header (image, name, year, VIN)
- Spec sections (engine, transmission, drivetrain, dimensions)
- Fluids summary with recommended specs
- Maintenance history list and upcoming reminders
- Edit button and share/export actions

---

## Actions
- Edit vehicle metadata and specs.
- Add maintenance from details view.
- Share or export vehicle information.
- Toggle primary vehicle and set reminders.

---

## Uses Classes
- Vehicles
- SpecsRepository (factory & current specs)
- MaintenanceRecord
- ApiClient (fetch detailed specs when required)

---

## Acceptance Criteria
- All spec sections load and are readable on mobile.
- Edit actions persist and update dependent screens.
- Maintenance items link back to Maintenance page.

---

## Future Ideas
- Deep links to specific spec sections.
- Side-by-side compare view for aftermarket vs factory specs.

---