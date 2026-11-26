# PropertyFhirPatientContactAddress

Address for the contact person


## Fields

| Field                                             | Type                                              | Required                                          | Description                                       |
| ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- |
| `city`                                            | *T.nilable(::String)*                             | :heavy_minus_sign:                                | Name of city, town etc.                           |
| `country`                                         | *T.nilable(::String)*                             | :heavy_minus_sign:                                | Country (e.g. can be ISO 3166 2 or 3 letter code) |
| `line`                                            | T::Array<*::String*>                              | :heavy_minus_sign:                                | Street name, number, direction and P.O. Box etc.  |
| `postal_code`                                     | *T.nilable(::String)*                             | :heavy_minus_sign:                                | Postal code for area                              |
| `state`                                           | *T.nilable(::String)*                             | :heavy_minus_sign:                                | Sub-unit of country (abbreviations ok)            |
| `type`                                            | *T.nilable(::String)*                             | :heavy_minus_sign:                                | postal \| physical \| both                        |
| `use`                                             | *T.nilable(::String)*                             | :heavy_minus_sign:                                | home \| work \| temp \| old \| billing            |