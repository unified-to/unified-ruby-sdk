# PropertyFhirPatientContactName

A name associated with the contact person


## Fields

| Field                                                         | Type                                                          | Required                                                      | Description                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `family`                                                      | *T.nilable(::String)*                                         | :heavy_minus_sign:                                            | Family name (often called surname)                            |
| `given`                                                       | T::Array<*::String*>                                          | :heavy_minus_sign:                                            | Given names (not always first), including middle names        |
| `prefix`                                                      | T::Array<*::String*>                                          | :heavy_minus_sign:                                            | Parts that come before the name, eg. Dr                       |
| `text`                                                        | *T.nilable(::String)*                                         | :heavy_minus_sign:                                            | Text representation of the full name                          |
| `use`                                                         | *T.nilable(::String)*                                         | :heavy_minus_sign:                                            | usual \| official \| temp \| nickname \| anonymous \| old \| maiden |