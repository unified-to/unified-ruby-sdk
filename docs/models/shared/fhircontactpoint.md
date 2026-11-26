# FhirContactPoint


## Fields

| Field                                           | Type                                            | Required                                        | Description                                     |
| ----------------------------------------------- | ----------------------------------------------- | ----------------------------------------------- | ----------------------------------------------- |
| `system`                                        | *T.nilable(::String)*                           | :heavy_minus_sign:                              | phone \| fax \| email \| pager \| url \| sms \| other |
| `use`                                           | *T.nilable(::String)*                           | :heavy_minus_sign:                              | home \| work \| temp \| old \| mobile           |
| `value`                                         | *T.nilable(::String)*                           | :heavy_minus_sign:                              | The actual contact point details                |