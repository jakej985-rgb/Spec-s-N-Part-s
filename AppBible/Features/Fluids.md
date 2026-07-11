# Fluids Feature

---

## Purpose
Provide quick reference to vehicle fluid specifications (oil, coolant, transmission, brake, power steering) and track fluid service intervals.

---

## Core Functionality
- Display factory-recommended fluid types and specs for the selected vehicle.
- Show capacity and recommended change intervals.
- Link to Parts page for compatible fluid and filter products.
- Log fluid changes to maintenance history.

---

## Fluids Covered
- Engine oil (viscosity, API rating)
- Coolant (color, type: green/orange/pink)
- Transmission fluid (manual/automatic)
- Brake fluid (DOT 3/4/5)
- Power steering fluid
- Differential oil
- Transfer case fluid (AWD/4WD)

---

## UX Flow
1. User opens Fluids screen.
2. Selects current vehicle from header.
3. Sees all fluid specs in cards or expandable list.
4. Taps a fluid spec to see:
   - Full spec details
   - Capacity (in quarts/liters)
   - Interval (time & mileage-based)
   - Link to compatible products on Parts page
   - Option to log a fluid change

---

## Integration
- Data sourced from SpecsRepository (factory specs API).
- Maintenance logging creates MaintenanceRecord of type "fluid_change".
- RemindersService sends notifications at 80% of interval threshold.

---

## Acceptance Criteria
- Correct fluid specs display for any vehicle (sourced from API).
- User can quickly navigate to compatible parts.
- Fluid change logging persists and shows in Maintenance screen.
- Reminders fire 1000 miles (or 1 month) before due interval.

---

## Future Ideas
- Custom fluid notes per vehicle (e.g., "always use synthetic").
- Bulk fluid change notifications for all fluids.
- Price comparison across vendors for fluids.

---
