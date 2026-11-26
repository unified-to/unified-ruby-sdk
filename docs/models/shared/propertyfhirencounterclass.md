# PropertyFhirEncounterClass

Classification of patient encounter


## Fields

| Field                                                                           | Type                                                                            | Required                                                                        | Description                                                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| `code`                                                                          | *T.nilable(::String)*                                                           | :heavy_minus_sign:                                                              | Classification of patient encounter, eg. AMB, EMER, IMP, VR                     |
| `extension`                                                                     | T::Array<[Models::Shared::FhirExtension](../../models/shared/fhirextension.md)> | :heavy_minus_sign:                                                              | data-absent-reason when the encounter class is unknown                          |
| `system`                                                                        | *T.nilable(::String)*                                                           | :heavy_minus_sign:                                                              | Identity of the terminology system (v3-ActCode)                                 |