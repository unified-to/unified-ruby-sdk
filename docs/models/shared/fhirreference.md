# FhirReference


## Fields

| Field                                                                           | Type                                                                            | Required                                                                        | Description                                                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| `display`                                                                       | *T.nilable(::String)*                                                           | :heavy_minus_sign:                                                              | Text alternative for the resource                                               |
| `extension`                                                                     | T::Array<[Models::Shared::FhirExtension](../../models/shared/fhirextension.md)> | :heavy_minus_sign:                                                              | Extensions, eg. data-absent-reason when a required reference is unknown         |
| `reference`                                                                     | *T.nilable(::String)*                                                           | :heavy_minus_sign:                                                              | Relative reference, eg. Patient/123                                             |