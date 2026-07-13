# Vehicles

---

## Purpose

* *Represents a vehicle owned by the user.*

---

## Properties

* VIN
* Nickname
* Year
* Make
* Model
* Trim
* FactorySpecs
* CurrentSpecs
* MaintenanceRecords
* FuelLogs
* Reminders
* Photos
* Documents

---

## Relationships
- 
---
### Uses

* FactorySpecs
* CurrentSpecs
* MaintenanceRecords
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

[x] V0.1

---

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