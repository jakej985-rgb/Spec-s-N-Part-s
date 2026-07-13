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

[x] Designing

---

### ChangeLog

##### v0.1

class Vehicle {
  string vin;
  string nickname;
  int year;
  string make;
  string model;
  string trim;
}