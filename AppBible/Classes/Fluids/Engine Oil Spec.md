# EngineOilSpec

---

## Purpose

* Data model representing engine oil specifications, viscosity, type, weight, and capacity.

---

## Properties

* `viscosity` (`String`): The fluid viscosity rating (e.g., 5W-30, 0W-20).
* `oilType` (`String`): The oil formulation type (e.g., Full Synthetic, Synthetic Blend, Conventional).
* `oilWeight` (`String`): The oil weight recommendation.
* `oilCapacity` (`String`): Total oil capacity including filter refill amount.

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

- `viscosity` is required.
- `oilType` is required.
- `oilWeight` is required.
- `oilCapacity` is required.

---

### RoadMap

```text
Version 0.1

EngineOilSpec
├── viscosity (String)
├── oilType (String)
├── oilWeight (String)
└── oilCapacity (String)
```

---

### ChangeLog

##### v0.1

- Synchronized documentation with Dart model in [engine_oil_spec.dart](file:///home/m3tal/Github/Spec-s-N-Part-s/app/lib/models/fluids/engine_oil_spec.dart).

---

## Open Questions

* None