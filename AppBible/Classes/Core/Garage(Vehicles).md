# Garage

---

## Purpose

* *The Garage manages all vehicles owned by the user.*

---

## Properties

* Garage name (for potential multi-shop or location tracking)
* Vehicles
* Selected Vehicle
* Date Created

---

## Methods

### Commands

- Add Vehicle
- Remove Vehicle
- Select Vehicle

### Queries

- Get Vehicles
- Get Selected Vehicle

---

## Relationships
- 
---
### Uses

* Vehicle

---
### Used By

* Home
* Garage Screen

---

### Status

:green_circle: V0.1

---

## Validation Rules

- TODO

---

### RoadMap

```text
Version 0.1

Garage
├── Vehicles
└── Selected Vehicle

Version 0.2

Garage
├── Vehicles
├── Selected Vehicle
└── Garage
```

---

### ChangeLog

##### v0.1

```text
import 'vehicle.dart';

class Garage {
  List<Vehicle> vehicles;
  Vehicle selectedVehicle;
}
```

---

## Open Questions

- Should Garage support multiple locations?
- Should Garage support multiple owners?
- Should Garage support customer vehicles?