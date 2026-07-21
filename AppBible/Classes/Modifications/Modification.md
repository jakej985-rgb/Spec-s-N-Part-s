# Modification

---

## Purpose

Data model representing aftermarket or custom vehicle modifications (engine upgrades, suspension changes, cosmetic enhancements, etc.).

---

## Properties

* `id` (`String`): Unique modification identifier.
* `vehicleId` (`String`): ID of the vehicle this modification belongs to.
* `category` (`ModCategory`): Category enum (`engine`, `suspension`, `wheelsTires`, `drivetrain`, `exhaust`, `interior`, `exterior`, `electricalLighting`, `other`).
* `name` (`String`): Modification title or part description.
* `description` (`String`): Detailed description of the modification.
* `dateInstalled` (`DateTime`): Date the modification was installed.
* `cost` (`double`): Total cost of the modification.
* `notes` (`String?`): Optional technical notes or warranty details.
* `isBoltOn` (`bool`): Flag indicating if the modification is a reversible bolt-on (`true`) or permanent change (`false`).
* `createdAt` (`DateTime`): Timestamp when record was created.
* `updatedAt` (`DateTime`): Timestamp when record was last updated.
