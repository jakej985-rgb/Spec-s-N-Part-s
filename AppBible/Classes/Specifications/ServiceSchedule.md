# ServiceSchedule

---

## Purpose

Data model representing factory recommended service intervals by elapsed months or accumulated mileage.

---

## Properties

* `id` (`String`): Unique service schedule identifier.
* `vehicleId` (`String`): ID of the vehicle this schedule applies to.
* `serviceType` (`String`): Service description (e.g. "Engine Oil & Filter Change", "Spark Plug Replacement").
* `intervalMonths` (`int?`): Recommended interval in months.
* `intervalMiles` (`int?`): Recommended interval in miles.
* `description` (`String?`): Optional detailed service notes.
* `isEssential` (`bool`): Flag indicating if the service is critical (`true`) or optional (`false`).
