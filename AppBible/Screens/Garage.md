# Garage Screen

---

## Purpose

The Garage Screen is the primary hub of the application. Its responsibility is to display the user's vehicles and provide access to vehicle-related features. It presents information to the user but does not own, create, validate, or store vehicle data.

---

## User Goals

- View all vehicles in their garage.
- Quickly identify a vehicle.
- Select a vehicle to view its details.
- Add a new vehicle.
- Edit or remove an existing vehicle.
- Search, sort, and filter vehicles.
- Access common garage actions with minimal taps.

---

## Responsibilities

This screen is responsible for:

- Displaying the user's vehicles.
- Displaying the currently selected vehicle.
- Displaying an appropriate empty state.
- Allowing the user to select a vehicle.
- Providing navigation to related screens.
- Presenting search, sort, and filter controls.
- Presenting quick actions related to the garage.

---

## Does NOT Do

This screen is NOT responsible for:

- Storing vehicle objects.
- Creating vehicle instances.
- Validating vehicle information.
- Saving data to storage.
- Modifying factory specifications.
- Managing maintenance records directly.

---

## Widgets

- App Bar with title and quick actions
- Vehicle list (cards or list rows)
- Vehicle image or fallback icon
- Vehicle nickname / Year / Make / Model / Trim
- Search bar
- Filter controls dialog
- Sort menu dropdown
- Add Vehicle Floating Action Button (FAB)
- Scan VIN button
- Empty state illustration and message

---

## User Actions

- Select a vehicle.
- Add a vehicle.
- Edit a vehicle.
- Remove a vehicle.
- Search vehicles.
- Filter vehicles by make/year.
- Sort vehicles.

---

## Commands

- Garage.selectVehicle()
- Garage.removeVehicle()
- Navigate to AddVehicleScreen
- Navigate to VehicleDetailsScreen
- Open search/filter dialogs

---

## Queries

- Garage.vehicles
- Garage.selectedVehicle
- Garage.vehicleCount

---

## Uses Classes

### Domain

- Garage
- Vehicle

### Services

- StorageService
- SearchService

### Navigation Targets

- AddVehicleScreen
- VehicleDetailsScreen
- SettingsScreen

---

## Inputs

- Garage object / vehicles stream

---

## Outputs

- Selected Vehicle context
- Navigation events

---

## Navigation Flow

Garage Screen

- → Add Vehicle Screen
- → Vehicle Details Screen
- → Settings Screen

---

## States

### Loading

Display progress indicator while loading garage data from storage.

### Empty

Display friendly empty illustration: "No vehicles added yet" with prominent Add Vehicle FAB.

### Success

Display list/grid of vehicle cards with active vehicle highlighted.

### Error

Display error banner with retry option if storage read fails.

---

## Validation

- Vehicle selection must be valid index within range.
- Deletion requires user confirmation prompt.

---

## Acceptance Criteria

- Vehicles are displayed correctly in list/grid format.
- Selecting a vehicle opens its details page.
- Add Vehicle and Edit Vehicle navigation buttons function correctly.
- Remove Vehicle removes item and updates selected state.
- Search and filters correctly filter vehicle list.
- Empty state appears when no vehicles exist.

---

## Future Enhancements

- Grid view toggle
- Favorite vehicles pinning
- Multi-garage support
- Drag-and-drop vehicle ordering

---

## Notes

The Garage Screen is a presentation layer. Business logic belongs in domain classes (`Garage`, `Vehicle`).
