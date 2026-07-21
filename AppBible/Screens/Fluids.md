# Fluids Screen

---

## Purpose

Display recommended factory and custom fluid specifications (engine oil, coolant, transmission fluid, differential fluid, brake fluid, power steering fluid) for the active vehicle for quick service reference.

---

## User Goals

- View exact fluid types, viscosities, capacities, and specs for the vehicle.
- Copy fluid specifications for purchasing or shop service.
- Navigate to compatible replacement fluids & parts.
- Log or schedule a fluid service directly into maintenance.

---

## Responsibilities

This screen is responsible for:

- Displaying engine oil, transmission, diff, coolant, brake, and steering fluid specs.
- Formatting capacities, viscosities, and specifications for clear reading.
- Providing quick links to compatible fluid products in Parts.
- Facilitating direct fluid service logging to Maintenance.

---

## Does NOT Do

This screen is NOT responsible for:

- Modifying underlying factory specification data.
- Storing fluid change logs (handled by MaintenanceRecord).
- Ordering fluid parts directly (handled by Parts).

---

## Widgets

- App Bar with vehicle selector header
- Fluid summary cards (Engine Oil, Transmission, Coolant, Brake, Drivetrain)
- Spec details list (type, viscosity, capacity, specification #)
- Quick Action: "Log Fluid Change" button
- Quick Action: "View Compatible Parts" button
- Share / Copy specs button

---

## User Actions

- Select fluid section to expand/collapse detailed specifications.
- Copy fluid specification text to clipboard.
- Tap "Log Fluid Change" to open pre-filled Maintenance record form.
- Tap "View Compatible Parts" to navigate to Parts page filtered by fluid category.

---

## Commands

- LubeSpec.copyWith()
- Clipboard.setData()
- Navigate to MaintenanceScreen (with pre-filled serviceType)
- Navigate to PartsScreen (with category filter)

---

## Queries

- Vehicle.factoryLubeSpec
- Vehicle.currentLubeSpec
- LubeSpec.engineOilSpec
- LubeSpec.transmissionFluidSpec
- LubeSpec.coolantSpec
- LubeSpec.brakeFluidSpec

---

## Uses Classes

### Domain

- Vehicle
- LubeSpec
- FluidSpec
- EngineOilSpec
- TransmissionFluidSpec
- CoolantSpec
- BrakeFluidSpec

### Services

- StorageService

### Navigation Targets

- MaintenanceScreen
- PartsScreen

---

## Inputs

- Selected Vehicle instance

---

## Outputs

- Filtered navigation to Parts or Maintenance

---

## Navigation Flow

Fluids Screen

- → Maintenance Screen (to log fluid service)
- → Parts Screen (filtered by fluids)

---

## States

### Loading

Show skeleton cards while fetching vehicle fluid specifications.

### Empty

Display placeholder state if custom vehicle lacks fluid specification data.

### Success

Display structured fluid cards with capacity and specification values.

### Error

Show error banner if fluid specifications fail to load.

---

## Validation

- Vehicle context must be selected.
- Fluid capacities displayed with standard unit formatting (quarts/liters).

---

## Acceptance Criteria

- All fluid specs (oil, coolant, transmission, diff, brake) render correctly for selected vehicle.
- Copying specs places correct text string into system clipboard.
- "Log Fluid Change" opens maintenance screen with pre-populated service type.

---

## Future Enhancements

- Fluid change interval estimator based on mileage.
- Local vendor fluid availability checker.

---

## Notes

Fluid specs are derived from `Vehicle.currentLubeSpec` or fall back to `Vehicle.factoryLubeSpec`.