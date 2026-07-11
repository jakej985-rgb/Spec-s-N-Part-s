# Automotive Icons

Professional SVG icon library for automotive applications. Consistent, cohesive, reusable.

**Goal**: 200+ original automotive icons with unified style, covering everything from Subaru models to maintenance, diagnostics, and performance specs.

---

## Why Custom Icons?

✅ **Consistent**: Every icon follows the same design system  
✅ **Professional**: Polished, cohesive appearance across the app  
✅ **Original**: No licensing concerns, reusable across projects  
✅ **Scalable**: Organized by category, easy to maintain  
✅ **Theme-Aware**: Automatically inherit app colors  

---

## Design System

See **[DESIGN_SYSTEM.md](DESIGN_SYSTEM.md)** for complete guidelines.

### Quick Reference
- **ViewBox**: 24×24
- **Stroke**: 2px, round caps and joins
- **Fill**: None (outline style)
- **Color**: currentColor (theme-aware)
- **Corners**: Rounded (2–3px)

---

## Folder Structure

```
automotive_icons/
├── assets/
│   ├── vehicle/         (9 icons)
│   ├── engine/          (10 icons)
│   ├── maintenance/     (10 icons)
│   ├── suspension/      (6 icons)
│   ├── brakes/          (4 icons)
│   ├── fluids/          (7 icons)
│   ├── electrical/      (8 icons)
│   ├── drivetrain/      (6 icons)
│   ├── interior/        (6 icons)
│   ├── lighting/        (6 icons)
│   ├── garage/          (5 icons)
│   ├── documents/       (5 icons)
│   ├── diagnostics/     (4 icons)
│   └── performance/     (6 icons)
│
├── lib/
│   └── icons/
│       ├── automotive_icons.dart
│       ├── vehicle_icons.dart
│       ├── engine_icons.dart
│       └── ...
│
├── DESIGN_SYSTEM.md
├── README.md
└── pubspec.yaml
```

---

## Icon Versions

Each icon gets 3 versions:

1. **Outline** (primary, default)
2. **Filled** (solid fill)
3. **Duotone** (with accent color)

Example:
```
car_outline.svg    ← Used by default
car_filled.svg     ← Filled variant
car_duotone.svg    ← With blue accent
```

---

## Usage in Flutter

```dart
import 'lib/icons/garage_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

SvgPicture.asset(
  GarageIcons.engine,
  width: 24,
  height: 24,
  colorFilter: ColorFilter.mode(
    Theme.of(context).colorScheme.primary,
    BlendMode.srcIn,
  ),
)
```

---

## Phase 1: Core Icons (50)

### Vehicle (5)
- Car
- SUV
- Wagon
- Hatchback
- Truck

### Engine (10)
- Boxer
- Inline
- V-Engine
- Turbo
- Supercharger
- Intake
- Exhaust
- Intercooler
- Radiator
- Battery

### Maintenance (10)
- Oil
- Coolant
- Transmission
- Differential
- Brake Fluid
- Washer Fluid
- Air Filter
- Cabin Filter
- Spark Plug
- Timing Belt

### Suspension (6)
- Coilover
- Shock
- Strut
- Spring
- Sway Bar
- Control Arm

### Brakes (4)
- Rotor
- Caliper
- Pads
- ABS

### Tires (4)
- Tire
- Wheel
- Alignment
- TPMS

### Diagnostics (4)
- VIN
- OBD-II
- Check Engine
- ECU

### Garage (5)
- Toolbox
- Lift
- Jack
- Wrench
- Workbench

### Documents (3)
- Receipt
- Camera
- Document

---

## Roadmap

- **Phase 1**: 50 core icons (outline versions)
- **Phase 2**: Filled + duotone variants
- **Phase 3**: Icon browser / preview website
- **Phase 4**: Expand to 200+ icons (all categories)
- **Phase 5**: Icon generation pipeline (template-based)
- **Phase 6**: Export PNG variants automatically
- **Phase 7**: Publish as standalone package

---

## Tools & Automation

### SVG Optimization
```bash
npm install -g svgo
svgo assets --config=svgo.config.js
```

### PNG Export
```bash
npm install -g @svgr/cli
svgr --icon assets/*.svg --out-dir png/
```

### Icon Browser
Single-page app to preview all icons, search, copy SVG, export PNG.

### Flutter Constants Generator
Auto-generate Dart icon constants from folder structure.

---

## Icon Categories (Full List)

**14 categories, ~200 icons total**

1. **Vehicle** (9): Car, Sedan, Wagon, Hatchback, Coupe, SUV, Truck, Van, Motorcycle
2. **Engine** (10): Boxer, Inline, V, Turbo, Supercharger, Intake, Exhaust, Intercooler, Radiator, Battery
3. **Maintenance** (10): Oil, Coolant, Transmission, Differential, Brake Fluid, Washer, Air Filter, Cabin Filter, Spark Plug, Timing Belt
4. **Suspension** (6): Coilover, Shock, Strut, Spring, Sway Bar, Control Arm
5. **Brakes** (4): Rotor, Caliper, Pads, ABS
6. **Tires** (4): Tire, Wheel, Alignment, TPMS
7. **Drivetrain** (6): Manual Trans, CVT, Differential, AWD, FWD, RWD
8. **Fluids** (7): Oil, Coolant, Trans, Brake, Power Steering, Washer, Diff
9. **Electrical** (8): Battery, Alternator, Starter, Spark Plug, Wiring, Fuse, Ground, Connector
10. **Interior** (6): Seat, Steering Wheel, Dashboard, Gauge, Pedals, Shifter
11. **Lighting** (6): Headlight, Taillight, Fog Light, Brake Light, Turn Signal, LED
12. **Garage** (5): Toolbox, Lift, Jack, Wrench, Workbench
13. **Documents** (5): Document, Receipt, Camera, Gallery, Warranty
14. **Performance** (6): Horsepower, Torque, Displacement, Compression, Boost, RPM

---

## Contributing

All icons must follow [DESIGN_SYSTEM.md](DESIGN_SYSTEM.md).

**Checklist before submitting**:
- [ ] 24×24 ViewBox
- [ ] 2px stroke, round caps/joins
- [ ] currentColor (no hardcoded colors)
- [ ] Three versions (outline, filled, duotone)
- [ ] Optimized with SVGO
- [ ] Tested in light + dark themes

---

## License

Original automotive icons. Free to use in jakej985-rgb projects.

---

## Next Steps

1. [Read the Design System](DESIGN_SYSTEM.md)
2. Create first 50 core icons
3. Build icon browser
4. Expand to full 200+ icon set
5. Publish as standalone Flutter package

---

