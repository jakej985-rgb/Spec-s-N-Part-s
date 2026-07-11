# Data Model

---

## Overview
Entity-relationship model for core domain objects: Vehicles, MaintenanceRecords, FluidSpecs, Modifications, Parts, and Reminders.

---

## Core Entities

### Vehicle
Primary entity representing a user's car.
- Attributes: id, name, vin, year, make, model, trim, image, selected
- Relationships: has many MaintenanceRecords, FluidSpecs, Modifications, Reminders, Parts
- Validation: VIN must be unique if provided; year must be >= 1900; make, model required
- Soft delete: no; just archive by creating a new vehicle record if needed

### Maintenance Record
Tracks service events and maintenance history.
- Attributes: id, vehicle_id, date, mileage, type, description, cost, attachments
- Relationships: belongs to Vehicle; may link to Reminders
- Validation: date and vehicle_id required; type from enum
- Use: log oil changes, tire rotations, inspections, repairs

### Fluid Spec
Factory fluid recommendations for a vehicle.
- Attributes: id, vehicle_id, fluid_type, specification, capacity, interval
- Relationships: belongs to Vehicle
- Validation: fluid_type from enum; specification required
- Use: display on Fluids screen and link to Parts page

### Modification
Custom engine, suspension, or other aftermarket changes.
- Attributes: id, vehicle_id, category, name, description, date_installed, cost, images
- Relationships: belongs to Vehicle
- Validation: category from enum; name required
- Use: track performance or cosmetic modifications and associated costs

### Parts Wishlist Entry
Bookmarked or saved parts for future purchase.
- Attributes: id, vehicle_id, part_number, name, category, vendor_links
- Relationships: belongs to Vehicle
- Validation: part_number or name required
- Use: quickly add and organize parts of interest across vendors

### Reminder
Maintenance or service reminders tied to date or mileage.
- Attributes: id, vehicle_id, type, due_date, due_mileage, description, completed
- Relationships: belongs to Vehicle; may reference MaintenanceRecords
- Validation: type from enum; due_date or due_mileage required
- Use: notify users of upcoming maintenance

---

## Relationships Diagram

```
Vehicle
  |-- MaintenanceRecord (1:M)
  |-- FluidSpec (1:M)
  |-- Modification (1:M)
  |-- Parts (1:M)
  |-- Reminder (1:M)
```

---

## Aggregate Root
Vehicle is the aggregate root. All operations on child entities should flow through Vehicle for consistency.

---

## Value Objects
- VIN (validated, normalized)
- Money (amount + currency)
- Date/Interval (due date + optional mileage-based interval)

---

## Future Ideas
- Component entity for tracking individual performance parts (e.g., intercooler, headers).
- Mod package pre-sets (common builds).
- Cross-vehicle templates for bulk maintenance logging.

---
