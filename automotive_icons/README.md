# Automotive Icons Package

Custom SVG icon library for the Spec-s-N-Part-s app, organized by automotive category.

## Folder Structure

### `/assets/`
SVG icons organized by category:

- **vehicle/**: Car models, silhouettes, badges
- **engine/**: Engine blocks, pistons, valves, turbo, supercharger
- **drivetrain/**: Transmission, differential, AWD, FWD, RWD, 4WD
- **suspension/**: Springs, shocks, struts, control arms, sway bars
- **brakes/**: Brake pads, rotors, calipers, fluid
- **fluids/**: Oil, coolant, transmission fluid, brake fluid, power steering
- **maintenance/**: Wrench, tools, oil change, service
- **electrical/**: Battery, alternator, starter, wiring, fuses
- **interior/**: Seats, steering wheel, gauges, controls
- **lighting/**: Headlights, taillights, indicators, LED
- **garage/**: Garage, toolbox, workshop, storage
- **documents/**: Receipt, invoice, records, warranty
- **diagnostics/**: OBD, scanner, diagnostics, warning
- **performance/**: Dyno, turbo, horsepower, boost

## Usage

### Dart Integration

```dart
import 'lib/automotive_icons.dart';

// Use in Flutter widgets
Icon(AutomotiveIcons.engineTurbo)
Icon(AutomotiveIcons.maintenanceOilChange)
```

## Icon Guidelines

- **Size**: Designed at 24x24px, scalable to any size
- **Color**: Monochrome (inherit parent color)
- **Stroke Width**: 1.5-2px for clarity
- **Padding**: 2px internal padding for breathing room

## Future Enhancements

- [ ] Export to PNG variants (24x24, 32x32, 48x48)
- [ ] Add Material Design variants
- [ ] Create icon font (.ttf/.otf)
- [ ] Auto-generate Dart constants

---
