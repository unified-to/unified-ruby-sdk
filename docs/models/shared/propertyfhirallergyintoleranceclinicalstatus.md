# PropertyFhirAllergyIntoleranceClinicalStatus

active | inactive | resolved (allergyintolerance-clinical)


## Fields

| Field                                                                           | Type                                                                            | Required                                                                        | Description                                                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| `coding`                                                                        | T::Array<[Models::Shared::FhirCoding](../../models/shared/fhircoding.md)>       | :heavy_minus_sign:                                                              | Codes defined by a terminology system                                           |
| `extension`                                                                     | T::Array<[Models::Shared::FhirExtension](../../models/shared/fhirextension.md)> | :heavy_minus_sign:                                                              | Extensions, eg. data-absent-reason when a required concept is unknown           |
| `text`                                                                          | *T.nilable(::String)*                                                           | :heavy_minus_sign:                                                              | Plain text representation of the concept                                        |