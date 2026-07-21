# Transmission

---

## Purpose

* Data model representing vehicle transmission specifications including transmission type (manual, automatic, CVT) and gear count.

---

## Properties

* `transmissionType` (`TransmissionType`): Transmission mechanism type (`manual`, `automatic`, `cvt`).
* `transmissionGears` (`TransmissionGears`): Number of forward gear ratios (`three` through `ten`).

---

## Associated Enums

### TransmissionType

Defined in [transmisson_type.dart](file:///home/m3tal/Github/Spec-s-N-Part-s/app/lib/emun/powertrain/transaxle/transmisson_type.dart):

* Values: `manual`, `automatic`, `cvt`
* String Mapping (`fromString`):
  * `'Manual'` -> `TransmissionType.manual`
  * `'Automatic'` -> `TransmissionType.automatic`
  * `'CVT'` -> `TransmissionType.cvt`

### TransmissionGears

Defined in [transmisson_gears.dart](file:///home/m3tal/Github/Spec-s-N-Part-s/app/lib/emun/powertrain/transaxle/transmisson_gears.dart):

* Values: `three`, `four`, `five`, `six`, `seven`, `eight`, `nine`, `ten`
* String Mapping (`fromString`):
  * `'3'` -> `TransmissionGears.three`
  * `'4'` -> `TransmissionGears.four`
  * `'5'` -> `TransmissionGears.five`
  * `'6'` -> `TransmissionGears.six`
  * `'7'` -> `TransmissionGears.seven`
  * `'8'` -> `TransmissionGears.eight`
  * `'9'` -> `TransmissionGears.nine`
  * `'10'` -> `TransmissionGears.ten`

---

## Methods

### Commands

* N/A (Immutable Data Model)

### Queries

* `Transmission.fromJson(Map<String, dynamic> json)`: Factory constructor deserializing JSON map into a `Transmission` object.
* `toJson()`: Serializes `Transmission` instance into JSON map (`transmissionType.name`, `transmissionGears.name`).

---

## Relationships

---

### Uses

* `TransmissionType`
* `TransmissionGears`

---

### Used By

* [Powertrain](file:///home/m3tal/Github/Spec-s-N-Part-s/AppBible/Classes/powertrain/powertrain.md)

---

### Status

:green_circle: Implemented (V0.1)

---

## Validation Rules

* `transmissionType` is required and must be a valid `TransmissionType`.
* `transmissionGears` is required and must be a valid `TransmissionGears`.

---

### RoadMap

```text
Version 0.1

Transmission
├── transmissionType (TransmissionType)
└── transmissionGears (TransmissionGears)
```

---

### ChangeLog

#### v0.1

* Documented `Transmission` class matching [transmisson.dart](file:///home/m3tal/Github/Spec-s-N-Part-s/app/lib/models/powertrain/transmisson.dart) and transmission enums.

---

## Open Questions

* Note: Dart model file name is [transmisson.dart](file:///home/m3tal/Github/Spec-s-N-Part-s/app/lib/models/powertrain/transmisson.dart) (contains a minor typo in filename).
