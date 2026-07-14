## Purpose
  *What is a Garage?*
- The Garage manages all vehicles owned by the user.
---
## Properties
- Garage (later for multi shop or location tracking to)
- Vehicles
- Selected Vehicle
- Date Created
---
## Responsibilities

- Add a vehicle
- Remove a vehicle
- Select a vehicle
---
## Relationships

- Vehicle

---
## Used By

- Home
- Garage Screen
---
## RoadMap

##### v0.1
```text
Garage
├── Vehicles
└── Selected Vehicle
```
##### v0.2
```text
Garage
├── Vehicles
├── Selected Vehicle
└── Garage
```
## ChangeLog
#### v0.1
```text
import 'vehicle.dart';

class Garage {
  List<Vehicle> vehicles;
  Vehicle selectedVehicle;
}
```
## Open Questions

- Should Garage support multiple locations?
- Should Garage support multiple owners?
- Should Garage support customer vehicles?