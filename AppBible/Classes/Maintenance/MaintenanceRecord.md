# Maintenance Record

---

## Purpose

* *Model for a single maintenance or service event tied to a vehicle.*

---

## Properties

* ID
* Vehicle ID
* Date
* Mileage (optional)
* Type
* Description
* Cost (optional)
* Currency (optional)
* Attachments (optional)
* Created At
* Updated At
* Synced At (optional)

---
## Methods

### Commands

- Update Notes
- Attach Receipt
- Attach Photo

### Queries

- Get Cost
- Get Mileage
- Get Date
---

## Relationships
- 
---
### Uses

* Attachments

---
### Used By

* Vehicles
* Maintenance Screen

---

### Status

:green_circle: V0.1

---
## Validation Rules

A Maintenance Record must have enough information to document a service event.

Minimum required:

- Date
- Type
- Description

Optional:

- Mileage
- Cost
- Currency
- Attachments

---

## Archiving (Soft Delete)

A Maintenance Record is immutable after creation to preserve financial and service history.

- No soft delete; records are immutable after creation
- Update only allowed for cost and notes within 24 hours
- After 24 hours, deletion requires explicit user confirmation

---

### RoadMap

```text
Version 0.1

MaintenanceRecord
├── ID
├── Vehicle ID
├── Date
├── Mileage
├── Type
├── Description
── Cost
```

---

### ChangeLog

##### v0.1

```text
class MaintenanceRecord {
  string id;
  string vehicleId;
  DateTime date;
  int mileage;
  string type;
  string description;
  double cost;
  string currency;
  List<Attachment> attachments;
}
```
