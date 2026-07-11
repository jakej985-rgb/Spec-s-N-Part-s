# Automotive Icons Design System

Professional SVG icon library for automotive applications. Consistent, cohesive, and reusable.

---

## Design Principles

Every icon must follow these rules for consistency:

| Property | Value |
|----------|-------|
| ViewBox | 24×24 |
| Stroke Width | 2px |
| Stroke Caps | Round (butt) |
| Stroke Join | Round |
| Fill | None (outline style) |
| Color | currentColor |
| Corner Radius | 2–3px (smooth, not sharp) |
| Perspective | Flat (front or side view) |
| Padding | 2px internal margin |

---

## Grid & Proportions

- **24×24 base grid**: All icons designed on this grid
- **Accessible safe area**: 20×20 (2px margin on all sides)
- **Stroke weight**: 2px at 24×24 (scales proportionally)
- **Icon weight**: 18×18 recommended for primary content

---

## Color Usage

### Default (Monochrome)
```xml
<path stroke="currentColor" fill="none" />
```
Inherits color from parent (theme-aware automatically).

### Accent (Blue, when needed)
```xml
<path stroke="currentColor" fill="none" />
<circle cx="12" cy="12" r="3" fill="#0066FF" /> <!-- Accent only for emphasis -->
```
Use sparingly: check engine light, warning indicators, active states.

---

## Stroke Guidelines

- **Stroke Cap**: Round (for softer appearance)
- **Stroke Join**: Round (smooth corners)
- **Stroke Width**: 2px (consistent)
- **Corners**: Rounded (2–3px radius) to avoid sharp points

Example SVG:
```xml
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
  <path d="M3 9 L3 6 Q3 3 6 3 L18 3 Q21 3 21 6 L21 18 Q21 21 18 21 L6 21 Q3 21 3 18 L3 9"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    fill="none" />
</svg>
```

---

## Icon Categories

### Vehicle (9 icons)
Car, Sedan, Wagon, Hatchback, Coupe, SUV, Truck, Van, Motorcycle

### Engine (10 icons)
Boxer, Inline, V-Engine, Turbo, Supercharger, Intake, Exhaust, Intercooler, Radiator, Battery

### Maintenance (10 icons)
Oil, Coolant, Transmission, Differential, Brake Fluid, Washer Fluid, Air Filter, Cabin Filter, Spark Plug, Timing Belt

### Suspension (6 icons)
Coilover, Shock, Strut, Spring, Sway Bar, Control Arm

### Brakes (4 icons)
Rotor, Caliper, Pads, ABS

### Tires (4 icons)
Tire, Wheel, Alignment, TPMS

### Diagnostics (4 icons)
VIN, OBD-II, Check Engine, ECU

### Garage (5 icons)
Toolbox, Lift, Jack, Wrench, Workbench

### Documents (5 icons)
Document, Receipt, Camera, Gallery, Warranty

### Drivetrain (6 icons)
Transmission (Manual), Transmission (CVT), Differential, AWD, FWD, RWD

### Fluids (7 icons)
Engine Oil, Coolant, Transmission Fluid, Brake Fluid, Power Steering, Washer Fluid, Differential Oil

### Electrical (8 icons)
Battery, Alternator, Starter, Spark Plug, Wiring, Fuse Box, Ground, Connector

### Interior (6 icons)
Seat, Steering Wheel, Dashboard, Gauge, Pedals, Shifter

### Lighting (6 icons)
Headlight, Taillight, Fog Light, Brake Light, Turn Signal, LED

### Performance (6 icons)
Horsepower, Torque, Displacement, Compression Ratio, Boost, RPM

### Specs (8 icons)
Weight, MPG, Towing, GVWR, Curb Weight, Cargo Volume, Ground Clearance, Track Width

---

## Icon Versions

Each icon gets 3 versions:

### Outline (primary)
```
{name}_outline.svg
```
Standard stroke, no fill. Most versatile.

### Filled (secondary)
```
{name}_filled.svg
```
Solid fill with optional outline. For emphasis.

### Duotone (accent)
```
{name}_duotone.svg
```
Combine outline + accent color. For highlighting.

Example:
```
car_outline.svg    ← Default
car_filled.svg     ← Filled version
car_duotone.svg    ← With accent color
```

---

## Usage in Flutter

```dart
import 'package:svg/svg.dart';
import 'lib/icons/garage_icons.dart';

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

## Export Formats

Generated automatically from SVG source:

- **SVG**: Source format
- **PNG**: 24×24, 48×48, 64×64, 128×128, 256×256
- **Dart Constants**: Organized by category
- **Preview**: Icon browser website

---

## Optimization

All SVGs optimized with SVGO:

```bash
svgo automotive_icons/assets --config=svgo.config.js
```

Config:
```js
module.exports = {
  plugins: [
    'preset-default',
    { name: 'removeViewBox', active: false },
    { name: 'convertStyleToAttrs', active: true },
    { name: 'removeStyleElement', active: true },
  ],
};
```

---

## Naming Convention

```
{category}/{name}_{version}.svg

Example:
vehicle/car_outline.svg
engine/turbo_filled.svg
garage/wrench_duotone.svg
```

---

## Checklist for New Icons

- [ ] 24×24 ViewBox
- [ ] 2px stroke width
- [ ] Round stroke caps and joins
- [ ] currentColor for monochrome
- [ ] 2px internal margin (safe area: 20×20)
- [ ] Rounded corners (2–3px, not sharp)
- [ ] Flat perspective (no 3D)
- [ ] Optimized with SVGO
- [ ] Tested in light and dark themes
- [ ] Three versions (outline, filled, duotone)

---
