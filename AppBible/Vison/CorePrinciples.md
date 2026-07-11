# Core Principles

---

## Design & Development Philosophy

### 1. Offline-First
- App functions fully without network connection.
- All data stored locally in SQLite.
- Cloud sync is a feature, not a requirement.
- Users can use the app on planes, in tunnels, or remote locations.

### 2. User Owns Their Data
- No cloud lock-in; data export available at any time.
- User can delete account and retain local data.
- No tracking or analytics without explicit consent.
- Privacy controls visible and easy to use.

### 3. Factory Data is Never Overwritten
- Official vehicle specs (make, model, year) are immutable.
- VIN decoding provides authoritative baseline.
- User modifications stored separately (CurrentSpecs).
- Maintains data integrity and audit trail.

### 4. User Modifications Are Tracked Separately
- Factory specs = immutable source of truth.
- User edits (custom engine specs, suspension changes) stored separately.
- Users can always revert to factory specs.
- Clear distinction between OEM and modified data in UI.

### 5. Reduce Taps & Friction
- Every feature should minimize user interaction.
- Pre-fill forms with context (selected vehicle, last maintenance type).
- One-tap actions for common tasks (log oil change, switch vehicle).
- No unnecessary confirmation dialogs.

### 6. Speed > Flashy Animations
- App loads instantly (cached data).
- No spinners or loading screens if possible.
- Animations are subtle and purposeful (not gratuitous).
- Performance matters more than visual polish.

---

## Product Direction
- **Target User**: Subaru owners who care about vehicle maintenance and modifications.
- **Use Cases**: DIY maintenance, tracking modifications, sharing specs with mechanics.
- **Not a Goal**: Social features, ads, or heavy monetization (until core product is mature).

---

## Quality Standards
- **Accuracy**: Factory specs must match official sources.
- **Reliability**: No data loss; sync always succeeds or fails gracefully.
- **Accessibility**: WCAG AA compliance, keyboard navigation, screen reader support.

---

## Technical Constraints
- Must run on 5-year-old phones (performance-first design).
- Minimal app size (< 50MB download).
- Minimal battery impact (no constant background syncing).

---

