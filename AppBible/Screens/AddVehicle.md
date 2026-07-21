# AddVehicle Screen

---

## Purpose

Allow users to add a vehicle to their garage via two primary entry points: VIN scanner (OCR/barcode) or manual Year/Make/Model/Trim (YMMT) selection.

---

## User Goals

- Add a vehicle quickly via camera VIN barcode or OCR scan.
- Manually select Year, Make, Model, and Trim if VIN is unavailable.
- Preview vehicle details before confirming save.
- Avoid adding duplicate vehicles to the garage.

---

## Responsibilities

This screen is responsible for:

- Requesting and handling camera permissions for VIN scanning.
- Capturing, normalizing, and validating VIN inputs locally.
- Fetching vehicle specification metadata from API lookup.
- Presenting YMMT dropdown options for manual selection.
- Displaying an autofill preview card prior to saving.

---

## Does NOT Do

This screen is NOT responsible for:

- Storing vehicle data permanently (delegated to Garage repository).
- Managing vehicle maintenance records or modifications.
- Overriding core factory specifications.

---

## Widgets

- App Bar with title and Cancel button
- Scan VIN / Manual Entry tab bar
- Camera preview overlay with torch toggle & framing box
- Manual VIN text input with paste button & checksum indicator
- YMMT picker dropdowns (Year, Make, Model, Trim)
- Vehicle preview card (image, year, make, model, trim, VIN)
- Confirm Save button
- Help tooltip for VIN usage & privacy

---

## User Actions

- Toggle between camera scan and manual entry modes.
- Grant camera permission for scanning.
- Type/paste VIN manually.
- Select Year, Make, Model, and Trim from pickers.
- Tap Confirm to save vehicle to garage.

---

## Commands

- CameraService.scanVin()
- VINParser.normalize()
- ApiClient.lookupVin()
- Garage.addVehicle()
- Navigate to GarageScreen

---

## Queries

- ApiClient.getMakes()
- ApiClient.getModels(make, year)
- ApiClient.getTrims(make, model, year)

---

## Uses Classes

### Domain

- Vehicle
- Garage

### Services

- CameraService
- PermissionService
- ApiClient
- VINParser

### Navigation Targets

- GarageScreen
- VehicleDetailsScreen

---

## Inputs

- Optional pre-filled VIN or YMMT arguments

---

## Outputs

- New Vehicle instance added to Garage store
- Navigation back to Garage or VehicleDetails

---

## Navigation Flow

AddVehicle Screen

- → Garage Screen (on save / cancel)
- → Vehicle Details Screen (on successful save)

---

## States

### Loading

Show spinner while VIN lookup API or trim options are loading.

### Empty

Initial blank form state awaiting user scan or dropdown selection.

### Success

Display populated vehicle preview card with accurate specs and image.

### Error

Show inline error message for permission denied, invalid VIN checksum, or API failure.

---

## Validation

A vehicle cannot be saved until:

- Year is selected
- Make is selected
- Model is selected
- VIN passes 17-character check and checksum (if provided)

---

## Acceptance Criteria

- Camera scanner extracts valid VIN barcode/text.
- VIN parser normalizes input (strips invalid I/O characters).
- API lookup populates vehicle preview accurately.
- User can fallback to manual YMMT selection at any time.
- Confirmed vehicle is appended to user's Garage list.

---

## Future Enhancements

- On-device OCR fallback for printed VINs.
- Custom photo attachment during vehicle creation.
- Duplicate detection & merge UI.

---

## Notes

VIN privacy: VIN is normalized locally and decoded via API without storing user account associations.
