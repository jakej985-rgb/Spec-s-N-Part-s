# Part

---

## Purpose

Data model representing OEM or aftermarket replacement parts, part numbers, pricing, and vendor bookmark links.

---

## Properties

* `id` (`String`): Unique part identifier.
* `vehicleId` (`String`): ID of the vehicle this part is designated for.
* `partNumber` (`String`): Manufacturer or OEM part number.
* `name` (`String`): Name of the part.
* `brand` (`String?`): Optional brand/manufacturer name (e.g. Bosch, Denso, OEM).
* `category` (`PartCategory`): Category enum (`maintenance`, `engine`, `suspension`, `brakes`, `electrical`, `body`, `interior`, `fluids`, `other`).
* `description` (`String?`): Optional detailed part description.
* `price` (`double?`): Optional estimated or purchase price.
* `vendorUrl` (`String?`): Optional URL link to vendor listing or purchase page.
* `notes` (`String?`): Optional fitment or installation notes.
* `createdAt` (`DateTime`): Timestamp when record was created.
* `updatedAt` (`DateTime`): Timestamp when record was last updated.
