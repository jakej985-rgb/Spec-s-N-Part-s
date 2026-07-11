# AddVehicle Page

---

## Purpose
- Let users add a vehicle to their garage via two primary entry points:
  1. Scan VIN (barcode or on-device OCR).
  2. Manual Year / Make / Model / Trim (YMMT) selection.
- Ensure VINs are normalized and validated locally before any lookup; provide robust fallbacks when camera or API access is unavailable.

---

## Widgets
- YMMT picker dialog (searchable, typeahead with recent/popular suggestions).
- Camera / Scanner overlay (video preview, scan region, flashlight toggle, cancel button).
- Manual VIN text input with paste support and inline format helper.
- Autofill preview card showing make, model, year, trim, VIN, and optional image.
- Inline banners for progress, success, and errors; help tooltip for VIN privacy/usage.

---

## Actions
- Request camera permission with in-context rationale.
- Launch scanner and capture VIN via barcode or OCR.
- Normalize scanned/pasted VIN (strip whitespace, upper-case, disallow I/O characters).
- Perform local VIN checksum validation; surface correction hints for common mistakes.
- Call VIN lookup API (send normalized VIN only) and populate preview card.
- Open YMMT dialog for manual entry and fetch trims for selected model.
- Save confirmed vehicle to Vehicles store and run duplicate detection.
- Analytics events: scan_attempt, scan_success, lookup_success, save_success, save_failure.

### Flows (brief)
- Scan flow: request permission → scanner overlay → capture → normalize + validate → lookup → preview → save.
- Manual YMMT flow: open YMMT → select year/make/model/trim → preview → save.
- Manual VIN flow: paste/type VIN → live validation → lookup → preview → save.

### Error handling (brief)
- Permission denied: show banner and direct to manual entry with a settings link.
- Invalid VIN: show inline guidance and re-scan option.
- API failure: show retry and allow saving partial details manually.
- Duplicate detected: prompt to view existing vehicle or proceed to merge.

---

## Uses Classes
- Vehicles: persistence, deduplication, canonical model for saved vehicles.
- VINParser: normalization, character rules, checksum validation.
- CameraService / ScannerService: camera control, torch, frame capture, on-device OCR.
- PermissionService: request and check camera permissions.
- ApiClient: VIN lookup and trim lookup by YMMT.
- FormValidator: input validation helpers.
- Navigation: route after save (back to garage or details page).

### Data model (vehicle payload)
- id: string (internal)
- vin: string (17-char normalized VIN, optional for YMMT saves)
- year: integer
- make: string
- model: string
- trim: string
- imageUrl: string (optional)
- source: enum {vin_lookup, user_manual}
- addedAt: ISO8601 timestamp

---

## Future Ideas
- On-device OCR fallback for printed VINs without barcodes.
- Photo-based VIN extraction with user-assisted crop/confirmation.
- Option to attach vehicle photos and let users confirm match before saving.
- Smart duplicate merge UX (suggested field merges and photo comparison).

---