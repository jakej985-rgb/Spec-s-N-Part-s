# Database Architecture

---

## Overview
- Local-first SQLite database for all user data (vehicles, maintenance, modifications, fluids).
- Cloud sync via REST API for multi-device support.
- Offline-first: all reads and writes target local DB; sync happens asynchronously.

---

## Database Schema

### Vehicles Table
- id (PRIMARY KEY, UUID)
- name (string)
- vin (string, unique, optional)
- year (integer)
- make (string)
- model (string)
- trim (string, optional)
- image_url (string, optional)
- selected (boolean, default: false) - currently active vehicle
- created_at (ISO8601 timestamp)
- updated_at (ISO8601 timestamp)
- synced_at (ISO8601 timestamp, nullable)

### Maintenance Records Table
- id (PRIMARY KEY, UUID)
- vehicle_id (FOREIGN KEY → Vehicles)
- date (ISO8601 date)
- mileage (integer, optional)
- type (enum: oil_change, tire_rotation, filter, inspection, etc.)
- description (text)
- cost (decimal, optional)
- attachments (JSON array of file paths, optional)
- created_at (ISO8601 timestamp)
- updated_at (ISO8601 timestamp)
- synced_at (ISO8601 timestamp, nullable)

### Fluid Specs Table
- id (PRIMARY KEY, UUID)
- vehicle_id (FOREIGN KEY → Vehicles)
- fluid_type (enum: oil, coolant, transmission, brake, power_steering)
- specification (string)
- capacity (string, optional)
- interval_miles (integer, optional)
- interval_months (integer, optional)
- created_at (ISO8601 timestamp)
- updated_at (ISO8601 timestamp)

### Modifications Table
- id (PRIMARY KEY, UUID)
- vehicle_id (FOREIGN KEY → Vehicles)
- category (enum: engine, suspension, wheels, interior, exterior, drivetrain)
- name (string)
- description (text, optional)
- date_installed (ISO8601 date, optional)
- cost (decimal, optional)
- images (JSON array of file paths, optional)
- created_at (ISO8601 timestamp)
- updated_at (ISO8601 timestamp)
- synced_at (ISO8601 timestamp, nullable)

### Parts Wishlist Table
- id (PRIMARY KEY, UUID)
- vehicle_id (FOREIGN KEY → Vehicles)
- part_number (string)
- name (string)
- category (string)
- vendor_links (JSON object: {vendor_name: url})
- notes (text, optional)
- created_at (ISO8601 timestamp)

### Reminders Table
- id (PRIMARY KEY, UUID)
- vehicle_id (FOREIGN KEY → Vehicles)
- type (enum: maintenance, inspection, registration_renewal)
- due_date (ISO8601 date)
- due_mileage (integer, optional)
- description (string)
- completed (boolean, default: false)
- completed_at (ISO8601 timestamp, nullable)
- created_at (ISO8601 timestamp)
- updated_at (ISO8601 timestamp)

### Sync Log Table
- id (PRIMARY KEY, UUID)
- table_name (string)
- record_id (UUID)
- operation (enum: create, update, delete)
- synced (boolean, default: false)
- error (text, optional)
- created_at (ISO8601 timestamp)
- synced_at (ISO8601 timestamp, nullable)

---

## Indexes
- Vehicles: (selected), (synced_at)
- Maintenance: (vehicle_id), (date DESC), (synced_at)
- Modifications: (vehicle_id), (synced_at)
- Reminders: (vehicle_id), (due_date), (completed)
- SyncLog: (table_name, synced), (created_at DESC)

---

## Constraints
- Foreign keys enabled to maintain referential integrity.
- NOT NULL constraints on required fields (name, vehicle_id, etc.).
- Unique constraints on VIN within Vehicles table to prevent duplicates.

---

## Future Ideas
- Partitioning by vehicle for multi-tenant scenarios.
- Full-text search indexing on descriptions and maintenance notes.
- Audit table for immutable change history (copy-on-write).

---
