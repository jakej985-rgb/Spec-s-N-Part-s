# Factory Data Locking
- Status: :green_circle: Accepted
- Date: 2026-07-14
- Version: 0.1
## Decision

Factory vehicle information may be reviewed and corrected during the Add Vehicle workflow.

After the vehicle is saved, factory fields become read-only.

User modifications are stored separately from factory data.

## Reason

- Prevent accidental edits.
- Preserve VIN accuracy.
- Support future modification tracking.