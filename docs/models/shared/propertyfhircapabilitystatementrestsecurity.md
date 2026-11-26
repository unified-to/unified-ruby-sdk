# PropertyFhirCapabilityStatementRestSecurity

Information about security of implementation


## Fields

| Field                                                                                       | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `description`                                                                               | *T.nilable(::String)*                                                                       | :heavy_minus_sign:                                                                          | General description of how security works                                                   |
| `service`                                                                                   | T::Array<[Models::Shared::FhirCodeableConcept](../../models/shared/fhircodeableconcept.md)> | :heavy_minus_sign:                                                                          | Security services supported (SMART-on-FHIR)                                                 |