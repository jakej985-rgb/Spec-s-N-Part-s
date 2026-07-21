# Document

---

## Purpose

Data model representing document attachments (invoices, receipts, owner manuals) associated with vehicle maintenance or specifications.

---

## Properties

* `docType` (`DocType`): Category enum (`invoice`, `receipt`, `manual`, `other`).
* `path` (`String`): File system or local asset path of the document.
