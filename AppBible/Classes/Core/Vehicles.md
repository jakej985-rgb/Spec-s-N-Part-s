# Vehicles

---

## Purpose

* *Represents a vehicle owned by the user.*

---

## Properties

* VIN (optional)
* Nickname (optional)
* Year 
* Make
* Model
* Trim (optional)
* FactorySpecs ()
* CurrentSpecs ()
* MaintenanceRecords ()
* FuelLogs ()
* Reminders ()
* Photos ()
* Documents ()
* Mileage (optional)

---

## Methods

### Commands

- ##### Add Maintenance Record

Purpose:
Adds a maintenance record to this vehicle.

Needs:
- MaintenanceRecord

Returns:
- Nothing

Type:
Command
- ##### Remove Maintenance Record

Purpose:
Removes a maintenance record to this vehicle.

Needs:
- MaintenanceRecord

Returns:
- Nothing

Type:
Command
- Add Photo
- Remove Photo
- Add Document
- Remove Document
- Add Modification
- Remove Modification
- Add Fuel Log

### Queries

- Get Factory Specs
- Get Current Specs
- Get Maintenance History
- Get Photos
- Get Documents

---

## Relationships
- 
---
### Uses

* FactorySpecs
* CurrentSpecs
* Add Maintenance Record
* FuelLogs
* Reminders
* Photos
* Documents

---
### Used By

* Garage Screen
* Home Screen
* Vehicle Details

---

### Status

:green_circle: V0.1

---

## Validation Rules

A Vehicle must have enough information to be uniquely identified.

Minimum required:

- Year
- Make
- Model

Optional:

- VIN
- Trim
- Nickname

### RoadMap

```text
Version 0.1

Vehicle
├── VIN
├── Nickname
├── Year
├── Make
├── Model
└── Trim

Version 0.2

Vehicle
├── CurrentSpecs
└── FactorySpecs

Version 0.3

Vehicle
├── Photos
└── Documents

Version 0.4

Vehicle
├── FuelLogs
└── Maintenance
```

---

### ChangeLog

##### v0.1

```text
class Vehicle {
  string vin;
  string nickname;
  int year;
  string make;
  string model;
  string trim;
}
```

---

## Open Questions

- TODO