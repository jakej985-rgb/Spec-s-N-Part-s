# FuelLog

---

## Purpose

Data model representing a fuel fill-up record, tracking distance traveled, fuel volume, price, and grade.

---

## Properties

* `fuelGrade` (`FuelGrade`): Fuel grade enum (`regular`, `mid`, `premium`, `diesel`).
* `miles` (`double`): Distance driven since last fill-up.
* `gallons` (`double`): Fuel volume purchased.
* `price` (`double`): Total cost of fill-up.
* `date` (`DateTime`): Date of the fuel log entry.
