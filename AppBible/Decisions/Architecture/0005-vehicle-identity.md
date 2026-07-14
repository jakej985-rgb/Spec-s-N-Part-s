# Vehicle Identity

Category: Architecture
Status: 🟢 Accepted
Version: 0.1
Date: 2026-07-14

---

## Decision

A Vehicle does not require a VIN to exist.

Vehicles may be created using either:

- VIN decoding
- Manual Year/Make/Model/Trim entry

If a VIN is not available during creation, it may be added later.

---

## Reason

- Many users will not have the VIN available.
- Some project vehicles may not have a readable VIN.
- Manual entry should be a first-class workflow.
- The application should support both factory and custom vehicles.

---

## Alternatives Considered

- Require a VIN for every vehicle.
- Only allow VIN decoding.

---

## Consequences

Positive

- Easier vehicle creation.
- Supports project cars.
- Supports quick manual entry.

Negative

- Some factory information may be unavailable until a VIN is added.
- VIN decoding features remain unavailable until a VIN is provided.

---

## Related

Classes
- Vehicle

Screens
- Add Vehicle

Features
- VIN Decoder
- Manual Entry