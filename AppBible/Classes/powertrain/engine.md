# Engine

---

## Purpose

* Data model representing vehicle engine specifications including engine type, cylinder count, engine layout/form, and engine displacement size.

---

## Properties

* `engineType` (`EngineType`): Fuel or power type of the engine (`gasoline`, `diesel`, `electric`, `hybrid`).
* `engineCylinders` (`EngineCylinders`): Cylinder count (`three`, `four`, `five`, `six`, `eight`, `ten`, `twelve`).
* `engineForm` (`EngineForm`): Engine structural layout (`inline`, `vEngine`, `boxer`, `wEngine`, `rotary`, `vrEngine`).
* `engineSize` (`String`): Displacement size description (e.g., `"2.0L"`, `"5.0L"`).

---

## Associated Enums

### EngineType

Defined in [engine_type.dart](file:///home/m3tal/Github/Spec-s-N-Part-s/app/lib/emun/powertrain/engine/engine_type.dart):

* Values: `gasoline`, `diesel`, `electric`, `hybrid`
* String Mapping (`fromString`):
  * `'Gasoline'` -> `EngineType.gasoline`
  * `'Diesel'` -> `EngineType.diesel`
  * `'Electric'` -> `EngineType.electric`
  * `'Hybrid'` -> `EngineType.hybrid`

### EngineCylinders

Defined in [engine_cylinders.dart](file:///home/m3tal/Github/Spec-s-N-Part-s/app/lib/emun/powertrain/engine/engine_cylinders.dart):

* Values: `three`, `four`, `five`, `six`, `eight`, `ten`, `twelve`
* String Mapping (`fromString`):
  * `'3'` -> `EngineCylinders.three`
  * `'4'` -> `EngineCylinders.four`
  * `'5'` -> `EngineCylinders.five`
  * `'6'` -> `EngineCylinders.six`
  * `'8'` -> `EngineCylinders.eight`
  * `'10'` -> `EngineCylinders.ten`
  * `'12'` -> `EngineCylinders.twelve`

### EngineForm

Defined in [engine_form.dart](file:///home/m3tal/Github/Spec-s-N-Part-s/app/lib/emun/powertrain/engine/engine_form.dart):

* Values: `inline`, `vEngine`, `boxer`, `wEngine`, `rotary`, `vrEngine`
* String Mapping (`fromString`):
  * `'i'` -> `EngineForm.inline`
  * `'V'` -> `EngineForm.vEngine`
  * `'H'` -> `EngineForm.boxer`
  * `'W'` -> `EngineForm.wEngine`
  * `'R'` -> `EngineForm.rotary`
  * `'VR'` -> `EngineForm.vrEngine`

---

## Methods

### Commands

* N/A (Immutable Data Model)

### Queries

* `Engine.fromJson(Map<String, dynamic> json)`: Factory constructor deserializing JSON map into an `Engine` object using `fromString` methods for enums.
* `toJson()`: Serializes `Engine` instance into JSON map using enum `.name` properties and `engineSize`.

---

## Relationships

---

### Uses

* `EngineType`
* `EngineCylinders`
* `EngineForm`

---

### Used By

* [Powertrain](file:///home/m3tal/Github/Spec-s-N-Part-s/AppBible/Classes/powertrain/powertrain.md)

---

### Status

:green_circle: Implemented (V0.1)

---

## Validation Rules

* `engineType` is required and must be a valid `EngineType`.
* `engineCylinders` is required and must be a valid `EngineCylinders`.
* `engineForm` is required and must be a valid `EngineForm`.
* `engineSize` is required `String`.

---

### RoadMap

```text
Version 0.1

Engine
├── engineType (EngineType)
├── engineCylinders (EngineCylinders)
├── engineForm (EngineForm)
└── engineSize (String)
```

---

### ChangeLog

#### v0.1

* Documented `Engine` class matching [engine.dart](file:///home/m3tal/Github/Spec-s-N-Part-s/app/lib/models/powertrain/engine.dart) and engine enums.

---

## Open Questions

* None
