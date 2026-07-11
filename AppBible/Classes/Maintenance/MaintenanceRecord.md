# Maintenance Record Class

---

## Purpose
Model for a single maintenance or service event tied to a vehicle.

---

## Properties
- id: UUID (primary key)
- vehicle_id: UUID (foreign key → Vehicles)
- date: ISO8601 date (when service occurred)
- mileage: integer, optional (vehicle odometer reading)
- type: enum (oil_change, tire_rotation, brake_service, inspection, fluid_flush, transmission_service, suspension_work, electrical_work, other)
- description: string (user notes, e.g., "Full synthetic 5W-30 from Costco")
- cost: decimal, optional (amount spent)
- currency: string, optional (default: USD)
- attachments: JSON array of {file_path, file_type, label} (receipts, photos)
- created_at: ISO8601 timestamp (when record was created)
- updated_at: ISO8601 timestamp (when record was last updated)
- synced_at: ISO8601 timestamp, nullable (last sync with cloud)

---

## Methods

### Constructor
```
MaintenanceRecord(vehicleId, date, type, description)
```

### Validation
- date must be <= today
- type must be from enum
- vehicle_id must reference valid vehicle
- cost >= 0 if provided
- description required

### Getters
- getDisplayName(): string (e.g., "Oil Change - 5/15/2024")
- getCostFormatted(): string (e.g., "$45.99")
- getTimeAgo(): string (e.g., "3 days ago")
- hasAttachments(): boolean

### Setters
- updateDescription(text)
- updateCost(amount)
- addAttachment(filePath, label)
- removeAttachment(filePath)

### Persistence
- save(): Promise<void> (insert or update in DB)
- delete(): Promise<void> (remove from DB)
- toJSON(): object (serialize for sync)

---

## Relationships
- belongs_to: Vehicle
- has_many: Attachments (photos, receipts)

---

## Validation Rules
- date: required, must be valid ISO8601, <= today
- type: required, must be from predefined enum
- description: required, max 500 characters
- cost: optional, must be >= 0 if provided
- mileage: optional, must be >= 0 if provided

---

## Archiving (Soft Delete)
- No soft delete; records are immutable after creation
- Update only allowed for cost and notes within 24 hours
- After 24 hours, deletion requires explicit user confirmation

---

## Usage Examples
```
// Create and save
const record = new MaintenanceRecord(vehicleId, new Date(), 'oil_change', '5W-30 Synthetic');
record.cost = 45.99;
await record.save();

// Update
record.description = '5W-30 Synthetic + filter replacement';
await record.save();

// Query
const records = await MaintenanceRecord.findByVehicle(vehicleId);
```

---

## Future Ideas
- Linked expense tracking (parts + labor)
- Recurring maintenance templates
- Integration with OBD data (auto-fill mileage, detect issues)

---

