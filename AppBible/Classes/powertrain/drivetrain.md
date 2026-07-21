# Drivetrain

---

## Purpose

* Enum representing vehicle drivetrain configurations (e.g., Front-Wheel Drive, Rear-Wheel Drive, All-Wheel Drive, Four-Wheel Drive).

---

## Values

* `frontWheelDrive` (`Front-Wheel Drive`): Power delivered to front wheels.
* `rearWheelDrive` (`Rear-Wheel Drive`): Power delivered to rear wheels.
* `allWheelDrive` (`All-Wheel Drive`): Continuous power delivered to all four wheels automatically.
* `fourWheelDrive` (`Four-Wheel Drive`): Selectable or full-time four-wheel drive configuration.

---

## Methods

### Commands

* N/A (Enum)

### Queries

* `fromString(String str)`: Parses string representations into `Drivetrain` values.
* `'Front-Wheel Drive'` -> `Drivetrain.frontWheelDrive`
* `'Rear-Wheel Drive'` -> `Drivetrain.rearWheelDrive`
* `'All-Wheel Drive'` -> `Drivetrain.allWheelDrive`
* `'Four-Wheel Drive'` -> `Drivetrain.fourWheelDrive`
* Throws `ArgumentError` on invalid string input.

---

## Relationships

---

### Uses

* N/A

---

### Used By

* [Powertrain](file:///home/m3tal/Github/Spec-s-N-Part-s/AppBible/Classes/powertrain/powertrain.md)

---

### Status

:green_circle: Implemented (V0.1)

---

## Validation Rules

* Must match one of the defined `Drivetrain` values.
* String parsing via `fromString` expects exact case and hyphenation (e.g., `'Front-Wheel Drive'`).

---

### RoadMap

```text
Version 0.1

Drivetrain (Enum)
├── frontWheelDrive ("Front-Wheel Drive")
├── rearWheelDrive ("Rear-Wheel Drive")
├── allWheelDrive ("All-Wheel Drive")
└── fourWheelDrive ("Four-Wheel Drive")
```

---

### ChangeLog

#### v0.1

* Documented `Drivetrain` enum matching [drivetrain.dart](file:///home/m3tal/Github/Spec-s-N-Part-s/app/lib/emun/powertrain/transaxle/drivetrain.dart).

---

## Open Questions

* None
