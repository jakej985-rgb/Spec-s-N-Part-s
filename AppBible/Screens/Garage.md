# Garage Screen

---

## Purpose

The Garage Screen is the primary hub of the application.

Its responsibility is to display the user's vehicles and provide access to vehicle-related features.

It presents information to the user but does not own, create, validate, or store vehicle data.

---

## User Goals

The user wants to:

- View all vehicles in their garage.
- Quickly identify a vehicle.
- Select a vehicle to view its details.
- Add a new vehicle.
- Edit or remove an existing vehicle.
- Search, sort, and filter vehicles.
- Access common garage actions with minimal taps.

---

## Responsibilities

The Garage Screen is responsible for:

- Displaying the user's vehicles.
- Displaying the currently selected vehicle.
- Displaying an appropriate empty state.
- Allowing the user to select a vehicle.
- Providing navigation to related screens.
- Presenting search, sort, and filter controls.
- Presenting quick actions related to the garage.

---

## Does NOT Do

The Garage Screen does NOT:

- Store vehicles.
- Create vehicle objects.
- Validate vehicle information.
- Save data to storage.
- Modify factory specifications.
- Manage maintenance records.

Those responsibilities belong to the appropriate domain classes and services.

---

## Widgets

- App Bar
- Vehicle list (cards or list rows)
- Vehicle image or placeholder
- Vehicle nickname / Year / Make / Model
- Quick vehicle information (optional)
- Search bar
- Filter controls
- Sort menu
- Add Vehicle button
- Scan VIN button (future)
- Import button (future)
- Empty state illustration and message

---

## User Actions

The user can:

- Open a vehicle.
- Add a vehicle.
- Edit a vehicle.
- Remove a vehicle.
- Search vehicles.
- Filter vehicles.
- Sort vehicles.
- Pin favorite vehicles (future).
- Select multiple vehicles (future).
- Export vehicles (future).

---

## Commands

The screen may invoke commands such as:

- Garage.selectVehicle()
- Garage.removeVehicle()
- Navigate to AddVehicleScreen
- Navigate to VehicleDetailsScreen
- Open search/filter dialogs

---

## Queries

The screen reads information from:

- Garage.vehicles
- Garage.selectedVehicle
- Garage.vehicleCount

---

## Uses Classes

### Domain

- Garage
- Vehicle

### Navigation

- AddVehicleScreen
- VehicleDetailsScreen

### Future

- SearchService
- ImportService
- ExportService
- AnalyticsService

---

## Inputs

- Garage

---

## Outputs

- Selected Vehicle
- Navigation events
- User actions

---

## Navigation

Garage Screen

- → Add Vehicle Screen
- → Vehicle Details Screen
- → Settings Screen

---

## Empty State

When the garage contains no vehicles:

Display a friendly message.

Example:

> "No vehicles have been added yet."

Provide a prominent **Add Vehicle** button.

Optionally provide a **Scan VIN** shortcut.

---

## Acceptance Criteria

The Garage Screen is complete when:

- Vehicles are displayed correctly.
- Selecting a vehicle opens its details.
- Add Vehicle navigation works.
- Edit Vehicle navigation works.
- Remove Vehicle works correctly.
- Search returns expected results.
- Filters update the displayed list.
- Sorting works correctly.
- Empty state appears when no vehicles exist.
- Performance remains smooth with large garages.

---

## Future Enhancements

- Grid view
- Compact view
- Recently viewed vehicles
- Favorite vehicles
- Garage statistics
- Smart maintenance reminders
- Quick service status badges
- Cloud synchronization indicators
- Multiple garages
- Drag-and-drop vehicle ordering

---

## Notes

The Garage Screen is a presentation layer.

Business logic belongs in the domain classes (Garage, Vehicle, etc.).

Persistence belongs in repositories and the database layer.

The screen's job is to display information and respond to user interaction.