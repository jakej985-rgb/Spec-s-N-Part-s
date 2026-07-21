# Powertrain

---

## Purpose

* Aggregate data model representing the complete vehicle powertrain, combining engine details, transmission configuration, and drivetrain layout.

---

## Properties

* `engine` ([Engine](file:///home/m3tal/Github/Spec-s-N-Part-s/AppBible/Classes/powertrain/engine.md)): Engine specification details.
* `transmission` ([Transmission](file:///home/m3tal/Github/Spec-s-N-Part-s/AppBible/Classes/powertrain/transmission.md)): Transmission specification details.
* `driveType` ([Drivetrain](file:///home/m3tal/Github/Spec-s-N-Part-s/AppBible/Classes/powertrain/drivetrain.md)): Drivetrain layout specification.

---

## Methods

### Commands

* N/A (Immutable Data Model)

### Queries

* `Powertrain.fromJson(Map<String, dynamic> json)`: Deserializes JSON map into a `Powertrain` instance by invoking `Engine.fromJson(json['engine'])`, `Transmission.fromJson(json['transmission'])`, and `Drivetrain.fromString(json['driveType'])`.
* `toJson()`: Serializes `Powertrain` instance into JSON map (`engine`, `transmissionType`, `transmissionGears`, `driveType`).

---

## Relationships

---

### Uses

* [Engine](file:///home/m3tal/Github/Spec-s-N-Part-s/AppBible/Classes/powertrain/engine.md)
* [Transmission](file:///home/m3tal/Github/Spec-s-N-Part-s/AppBible/Classes/powertrain/transmission.md)
* [Drivetrain](file:///home/m3tal/Github/Spec-s-N-Part-s/AppBible/Classes/powertrain/drivetrain.md)

---

### Used By

* Vehicle Specifications / Factory Specs

---

### Status

:green_circle: Implemented (V0.1)

---

## Validation Rules

* `engine` is required (`Engine`).
* `transmission` is required (`Transmission`).
* `driveType` is required (`Drivetrain`).

---

### RoadMap

```text
Version 0.1

Powertrain
├── engine (Engine)
├── transmission (Transmission)
└── driveType (Drivetrain)
```

---

### ChangeLog

#### v0.1

* Documented `Powertrain` aggregate class matching [powertrain.dart](file:///home/m3tal/Github/Spec-s-N-Part-s/app/lib/models/powertrain/powertrain.dart).

---

## Open Questions

* Note: `Powertrain.toJson()` serializes `transmissionType` and `transmissionGears` at root level rather than calling `transmission.toJson()`, while `Powertrain.fromJson` expects `json['transmission']`.
