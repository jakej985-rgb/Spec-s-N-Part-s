# Parts Screen

---

## Purpose

Provide a searchable parts catalog and wishlist manager for OEM and aftermarket replacement parts, part numbers, fitment checks, and vendor purchase links for the active vehicle.

---

## User Goals

- Find compatible part numbers (oil filters, brake pads, spark plugs) for the active vehicle.
- Bookmark parts to a wishlist for future purchases.
- Open external vendor purchase links to buy parts online.
- Track part costs and vendor notes.

---

## Responsibilities

This screen is responsible for:

- Displaying saved parts and wishlist entries for the active vehicle.
- Filtering parts by category (`maintenance`, `engine`, `brakes`, `suspension`, etc.).
- Providing part detail dialogs with OEM cross-references.
- Opening external purchase URLs safely.

---

## Does NOT Do

This screen is NOT responsible for:

- Processing financial payment transactions directly (handled via external vendor links).
- Managing vehicle maintenance records directly.

---

## Widgets

- App Bar with category filter tabs
- Parts search bar with category dropdown
- Part card list (part number, brand, category, price, vendor link button)
- Add Part modal dialog
- Fitment badge ("Guaranteed Fit for [Year Make Model]")
- Vendor link button with external launch icon

---

## User Actions

- Search parts by name or part number.
- Filter parts list by category.
- Tap "Add Part" to create custom saved part entry.
- Tap vendor link to launch browser page.
- Tap part card to edit or delete part entry.

---

## Commands

- Part.toJson()
- PartsRepository.addPart()
- PartsRepository.deletePart()
- UrlLauncher.launchUrl()

---

## Queries

- PartsRepository.getPartsForVehicle(vehicleId)
- PartsRepository.searchParts(query, category)

---

## Uses Classes

### Domain

- Part
- PartCategory
- Vehicle

### Services

- UrlLauncherService
- PartsCatalogService

### Navigation Targets

- VehicleDetailsScreen
- FluidsScreen

---

## Inputs

- Active Vehicle context
- Optional category filter route argument

---

## Outputs

- External URL launch events
- Saved Part instances

---

## Navigation Flow

Parts Screen

- → Vehicle Details Screen
- → Fluids Screen

---

## States

### Loading

Display loading indicator while searching parts repository.

### Empty

Display empty state: "No parts saved for this vehicle yet" with Add Part button.

### Success

Display grid/list of compatible part cards with brand logos and price tags.

### Error

Display error banner if parts query fails.

---

## Validation

- Part entry requires either a valid part number or name.
- Vendor URL must be a valid HTTP/HTTPS link.

---

## Acceptance Criteria

- Search filters parts cleanly by part number or keyword.
- Vendor links launch in default browser correctly.
- Custom added parts persist under active vehicle ID.

---

## Future Enhancements

- Multi-vendor price comparison engine.
- Barcode/QR scanner for part box labels.

---

## Notes

Parts are categorized using `PartCategory` enum.
