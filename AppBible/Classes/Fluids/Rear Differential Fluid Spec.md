# RearDifferentialFluidSpecs

---

## Purpose

* Data model representing rear differential fluid specifications, capacity, and standards.

---

## Properties

* `type` (`String`): The recommended differential fluid type/viscosity (e.g., 75W-90, 75W-140 Synthetic).
* `capacity` (`String`): Fluid capacity requirement for the rear differential.
* `specification` (`String?` optional): Specific manufacturer specification or standard (e.g., GL-5).

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
- `specification` is optional.

---

### RoadMap

```text
Version 0.1

RearDifferentialFluidSpecs
├── type (String)
├── capacity (String)
└── specification (String?)
```

---

### ChangeLog

##### v0.1

- Synchronized documentation with Dart model in [rear_diff_fluid_spec.dart](file:///home/m3tal/Github/Spec-s-N-Part-s/app/lib/models/fluids/rear_diff_fluid_spec.dart).

---

## Open Questions

* None