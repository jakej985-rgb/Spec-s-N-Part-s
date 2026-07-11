# AddVehicle Page

---

## Purpose
- Provide two primary ways to add a vehicle to the user's garage:
  1. Scan VIN with the camera (barcode or OCR fallback).
  2. Manual Year / Make / Model / Trim (YMMT) picker dialog.
- Validate and normalize VIN, look up vehicle details from the VIN or YMMT, and save to Vehicles store.

---

## Widgets
- YMMT picker dialog (searchable list with recent/popular entries)
- Camera / Scanner overlay (video preview + scan region + flashlight toggle)
- Manual VIN text input with paste support and format helper
- Autofill preview card (shows make, model, year, trim, image)
- Progress indicator and inline error banners
- Help tooltip for VIN and privacy notes

---

## Actions
- Request Camera permission (explain purpose & privacy).
- Open Scanner overlay and start barcode/OCR VIN capture.
- Parse scanned payload; normalize VIN (remove spaces, I/O checks).
- Validate VIN checksum locally; if invalid, show correction hint.
- Lookup vehicle details via VIN API; show loading and fallback to manual YMMT when needed.
- Open YMMT dialog and allow selection/search; fetch matching trims.
- Save vehicle to Vehicles class/store with user confirmation.
- Handle retry, cancel, and analytics events (scan_attempt, save_success, save_failure).

---

## Uses Classes / Services
- Vehicles (persistence & deduplication)
- VINParser (normalization + checksum)
- CameraService / ScannerService (camera, torch, frame processing)
- PermissionService (camera permission prompts & status)
- ApiClient (vehicle lookup by VIN / YMMT)
- FormValidator (manual input validation)
- Navigation (route after save)

---

## Flows
- Scan VIN flow:
  1. Tap "Scan VIN" → request camera permission if needed.
  2. Show scanner overlay; detect barcode or run OCR.
  3. On capture: normalize and validate VIN locally.
  4. If valid, call VIN lookup API → populate preview card.
  5. User confirms → save to Vehicles → success screen or back to garage.
  6. On API failure, offer "Retry" or "Enter details manually (YMMT)".

- Manual YMMT flow:
  1. Tap "Add Manually" → open YMMT dialog.
  2. User selects year → make → model → trim; show matches as user types.
  3. Preview populated vehicle details; user confirms → save.

- Manual VIN flow (typed):
  1. Paste/type VIN → live normalization + checksum validation.
  2. If valid, perform lookup and follow save flow; if invalid, show inline guidance.

---

## UI / Accessibility Notes
- Scanner overlay must have large contrast scan region and clear cancel button.
- Provide keyboard-accessible manual input and YMMT dialog; screen-reader labels for all inputs.
- Explain camera usage and never upload video frames except for on-device OCR/scan; upload only VIN string for lookup.
- Provide progress states and friendly error messages with next steps.

---

## Permissions & Privacy
- Request camera permission with explicit rationale and one-time prompt wherever platform supports it.
- Only transmit normalized VIN and optional device locale to the lookup API.
- Provide settings link to revoke camera permission and a fallback path to manual entry.

---

## Error States / Edge Cases
- Camera unavailable / permission denied: show informative banner and direct link to manual entry.
- Repeated scan failures: allow switching to manual entry or manual VIN paste.
- Invalid VIN checksum: show correction tips (length, forbidden characters) and allow re-scan.
- API failure / rate-limit: show retry with exponential backoff and option to save partial details manually.
- Duplicate vehicle in Vehicles store: detect and prompt to view existing entry or merge.

---

## Acceptance Criteria
- User can add a vehicle by scanning VIN and the app validates and autofills vehicle details.
- If camera is unavailable or user denies permission, user can still add vehicle via YMMT or manual VIN input.
- VINs are normalized and validated before lookup; invalid VINs are rejected with guidance.
- Saved vehicles persist in Vehicles store and duplicate detection prevents duplicate entries.
- All interactive elements are accessible (keyboard and screen reader) and errors are actionable.

---

## Testing
- Unit tests for VINParser (normalization + checksum) and Vehicles persistence.
- Integration tests for API lookup and error handling (mocked responses).
- E2E tests: grant camera permission, perform a successful barcode scan, handle permission denial fallback.

---

## Future Ideas
- On-device OCR fallback to read printed VINs when barcode is not present.
- Photo-based VIN extraction with user-assisted region selection.
- Store vehicle photos and let users confirm matches before saving.

---