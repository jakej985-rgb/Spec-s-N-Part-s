# Factory Data Locking

## Decision

Factory vehicle information may be reviewed and corrected during the Add Vehicle workflow.

After the vehicle is saved, factory fields become read-only.

User modifications are stored separately from factory data.

## Reason

- Prevent accidental edits.
- Preserve VIN accuracy.
- Support future modification tracking.