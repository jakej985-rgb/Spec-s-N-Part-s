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
- Call VIN lookup API (send normalized VIN and optional device locale) and populate preview card.
- Open YMMT dialog for manual entry; fetch available trims via API when user selects year/make/model.
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
- ApiClient: VIN lookup and YMMT-based trim lookup.
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

## Permissions & Privacy

### Data Transmission by Flow

**VIN Lookup Flow:**
- Sends to API: normalized VIN (17-char string, uppercase, no I/O characters) and optional device locale.
- VIN is hashed server-side; it is **not stored** with the user account or used for tracking.
- Response includes decoded make, model, year, trim, and optional image URL.

**YMMT Trim Lookup Flow:**
- When user selects year, make, model in the YMMT picker dialog, sends year, make, model, and optionally selected trim to the API to fetch available matching trims.
- These fields are used purely for catalog lookup and are **not persisted** with user data.
- Response is a list of trim options for confirmation; only the final confirmed trim is saved locally.
- Rationale: Vehicle databases are large and constantly updated; local caching is impractical. This lookup is necessary to ensure users select valid trim options.

### User Transparency
- A help tooltip on the VIN input explains: "Your VIN is normalized locally, sent securely to our lookup service for decoding, and never stored with your account."
- YMMT selection occurs entirely locally until confirmation; users can change year/make/model without triggers.

---

## Future Ideas
- On-device OCR fallback for printed VINs without barcodes.
- Photo-based VIN extraction with user-assisted crop/confirmation.
- Option to attach vehicle photos and let users confirm match before saving.
- Smart duplicate merge UX (suggested field merges and photo comparison).

---
## Validation

A vehicle cannot be saved until:

- Year is selected
- Make is selected
- Model is selected

Optional:

- VIN
- Trim
- Nickname