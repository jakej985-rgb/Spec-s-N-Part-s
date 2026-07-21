# Data Model

---

## Overview
Entity-relationship model for core domain objects: Vehicles, Powertrain, LubeSpec/FluidSpecs, MaintenanceRecords, FuelLogs, Modifications, Parts, Reminders, and ServiceSchedules.

---

## Core Entities

### Vehicle
Primary entity representing a user's car.
- Attributes: vin, nickname, year, make, model, trim, factoryPowertrain, currentPowertrain, factoryLubeSpec, currentLubeSpec
- Relationships: has many MaintenanceRecords, FuelLogs, Modifications, Reminders, Parts, ServiceSchedules
- Validation: year, make, model required

### Powertrain
Specification entity combining engine, transmission, and drivetrain setup.
- Attributes: engine (EngineType, EngineCylinders, EngineForm, engineSize), transmission (TransmissionType, TransmissionGears), driveType (Drivetrain)
- Relationships: belongs to Vehicle (as factory or current specs)

### LubeSpec & FluidSpec
Factory and custom fluid specifications for a vehicle.
- Attributes: engineOilSpec, transmissionFluidSpec, transferCaseFluidSpec, frontDiffFluidSpec, rearDiffFluidSpec, coolantSpec, brakeFluidSpec, powerSteeringFluidSpec
- Base class: FluidSpec (type, capacity, specification)

### Maintenance Record
Tracks service events and maintenance history.
- Attributes: id, vehicleId, date, mileage, serviceType, description, cost, currency, notes, attachments
- Relationships: belongs to Vehicle; may link to Reminders

### Fuel Log
Tracks fuel fill-up events, efficiency, and cost.
- Attributes: fuelGrade (FuelGrade), miles, gallons, price, date
- Relationships: belongs to Vehicle

### Modification
Custom engine, suspension, or other aftermarket changes.
- Attributes: id, vehicleId, category (ModCategory), name, description, dateInstalled, cost, notes, isBoltOn
- Relationships: belongs to Vehicle

### Part
Bookmarked or saved replacement/aftermarket parts.
- Attributes: id, vehicleId, partNumber, name, brand, category (PartCategory), description, price, vendorUrl, notes
- Relationships: belongs to Vehicle

### Reminder
Maintenance or service reminders tied to date or mileage.
- Attributes: id, vehicleId, type (ReminderType), title, description, dueDate, dueMileage, isCompleted, snoozedUntil
- Relationships: belongs to Vehicle; may reference MaintenanceRecords

### Service Schedule
Factory recommended maintenance schedule intervals.
- Attributes: id, vehicleId, serviceType, intervalMonths, intervalMiles, description, isEssential
- Relationships: belongs to Vehicle

---

## Relationships Diagram

```
Vehicle
  |-- Powertrain (1:1 Factory, 1:1 Current)
  |-- LubeSpec (1:1 Factory, 1:1 Current)
  |-- MaintenanceRecord (1:M)
  |-- FuelLog (1:M)
  |-- Modification (1:M)
  |-- Part (1:M)
  |-- Reminder (1:M)
  |-- ServiceSchedule (1:M)
```

---

## Aggregate Root
Vehicle is the aggregate root. All operations on child entities flow through Vehicle for domain consistency.
