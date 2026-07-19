# CoolantSpecs

---

## Purpose

* Data model representing coolant specification and capacity for a vehicle.

---

## Properties

* `type` (`String`): The recommended coolant type/chemistry (e.g., HOAT, OAT, Ethylene Glycol).
* `capacity` (`String`): Total cooling system fluid capacity.

---

## Methods

### Commands

* N/A (Immutable Data Model)

### Queries

* N/A

---

## Relationships

---

### Uses

* N/A

---

### Used By

* [Fluids](file:///home/m3tal/Github/Spec-s-N-Part-s/AppBible/Classes/Fluids/Fluids.md)

---

### Status

:green_circle: Implemented (V0.1)

---

## Validation Rules

- `type` is required.
- `capacity` is required.

---

### RoadMap

```text
Version 0.1

CoolantSpecs
├── type (String)
└── capacity (String)
```

---

### ChangeLog

##### v0.1

- Synchronized documentation with Dart model in [coolant_specs.dart](file:///home/m3tal/Github/Spec-s-N-Part-s/app/lib/models/fluids/coolant_specs.dart).

---

## Open Questions

* None