# VehicleDetails Screen

---

## Purpose

Display full vehicle specifications, technical engine & transmission details, factory vs. current powertrain configuration, fluid recommendations, and quick links to maintenance history and modifications.

---

## User Goals

- Inspect comprehensive factory and current vehicle specifications.
- Compare factory specs with current swapped engine/transmission specs.
- View VIN, trim, drivetrain, and chassis specs in one place.
- Edit vehicle details (nickname, trim, swapped components).

---

## Responsibilities

This screen is responsible for:

- Rendering active vehicle header (image, nickname, VIN, YMMT).
- Displaying Powertrain card (Engine type, cylinders, form, size, Transmission, Drivetrain).
- Displaying LubeSpec summary card (Oil, Coolant, Transmission fluid).
- Presenting shortcuts to Modifications, Maintenance, Fluids, and Parts screens.

---

## Does NOT Do

This screen is NOT responsible for:

- Storing vehicle data (delegated to Vehicle store).
- Searching external vendor parts catalogs directly.

---

## Widgets

- App Bar with vehicle name, Edit button, and Share button
- Vehicle Header Hero widget (image, VIN, nickname, YMMT)
- Spec Navigation Tab Bar (Powertrain, Fluids, Maintenance, Modifications)
- Powertrain Card (Factory vs Current specs)
- Engine Spec Details section (Type, Cylinders, Form, Size)
- Transmission Spec Details section (Type, Gears, Drivetrain)
- Quick Links bar (Log Maintenance, View Fluids, Manage Mods)

---

## User Actions

- Tap Edit to modify vehicle metadata or current specs.
- Switch between Factory Specs and Current Specs tabs.
- Tap Fluids shortcut to open FluidsScreen.
- Tap Modifications shortcut to open ModificationsScreen.
- Tap Maintenance shortcut to open MaintenanceScreen.

---

## Commands

- Vehicle.copyWith()
- VehicleRepository.updateVehicle()
- Navigate to EditVehicleScreen
- Navigate to FluidsScreen
- Navigate to ModificationsScreen
- Navigate to MaintenanceScreen

---

## Queries

- Vehicle.factoryPowertrain
- Vehicle.currentPowertrain
- Vehicle.factoryLubeSpec
- Vehicle.currentLubeSpec

---

## Uses Classes

### Domain

- Vehicle
- Powertrain
- Engine
- Transmission
- LubeSpec

### Services

- VehicleRepository
- ShareService

### Navigation Targets

- FluidsScreen
- ModificationsScreen
- MaintenanceScreen
- PartsScreen

---

## Inputs

- Vehicle instance or vehicleId route argument

---

## Outputs

- Updated Vehicle instance
- Navigation route events

---

## Navigation Flow

VehicleDetails Screen

- → Fluids Screen
- → Modifications Screen
- → Maintenance Screen
- → Parts Screen

---

## States

### Loading

Display progress skeleton while reading vehicle specification details.

### Empty

Display fallback state if vehicle specifications are partially missing.

### Success

Display structured specification cards with factory vs current comparison badges.

### Error

Show error screen with back button if vehicle fails to load.

---

## Validation

- Vehicle ID must match a valid saved vehicle record in Garage.

---

## Acceptance Criteria

- Specifications load correctly and differentiate factory from current specs.
- Editing specs updates vehicle record and refreshes details view immediately.
- Shortcuts route to dependent screens with active vehicle context pre-filled.

---

## Future Enhancements

- Side-by-side spec comparison tool against community vehicles.
- PDF vehicle spec sheet generator for print/export.

---

## Notes

`VehicleDetailsScreen` reflects the core specs defined in `Powertrain` and `LubeSpec`.
