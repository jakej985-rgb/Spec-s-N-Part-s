# Navigation Architecture

---

## Overview
Tab-based bottom navigation with nested screen stacks; Home as the default, with Garage, Maintenance, Fluids, Parts, and Settings accessible via tabs or quick jumps.

---

## Navigation Structure

### Bottom Tab Bar
- Home (default)
- Garage
- Maintenance
- Fluids
- Parts
- More (settings, etc.)

### Stacks
Each tab has its own nested navigation stack:
- Home → can link to Vehicle Details, Garage, Maintenance (in-context)
- Garage → can link to AddVehicle, VehicleDetails, Maintenance
- Maintenance → can link to MaintenanceDetail, Vehicle context
- Fluids → can link to PartsList (filtered by fluid type)
- Parts → can link to PartDetail, vendor links
- Settings → can link to Account, Privacy, About

---

## Routes (simplified)
- /home
- /garage
- /garage/:vehicleId
- /add-vehicle
- /maintenance
- /maintenance/:recordId
- /fluids
- /parts
- /settings

---

## State Management
- Global: selected vehicle, user preferences (theme, units), sync status
- Screen-local: form state, search/filter params, paginated data
- Navigation stack is preserved when user switches tabs (resume state)

---

## Deep Linking
- Support deep links to specific vehicles, maintenance records, screens from notifications or external URLs
- Example: `app://vehicle/2024-civic/fluids` → navigates to Fluids screen with context

---

## Transitions
- Fade or slide animations for bottom tab switches
- Push/pop animations for nested stack navigation
- No animation for tab resume

---

## Future Ideas
- Floating action button for quick add (maintenance, parts, modification)
- Swipe-back gesture on supported platforms
- Breadcrumb or back button alternatives

---
