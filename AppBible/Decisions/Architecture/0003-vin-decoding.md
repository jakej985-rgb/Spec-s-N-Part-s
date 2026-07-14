# VIN Decoding

- Status: :green_circle: Accepted
- Date: 2026-07-14
- Version: 0.1

---
## Decision

- VINs decoding is the prefered method to create vehicles.
- User can also create vehicle base configuration manually with year,make,model,trim combination.
- After VIN decoding the user reviews and edits information provided before saving.

## Reason

- VIN db are not always complete
- Users should verify decoded info.
- Manuel entry supports custom builds and vehicles without vin.
