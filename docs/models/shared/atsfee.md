# AtsFee


## Fields

| Field                                                                      | Type                                                                       | Required                                                                   | Description                                                                |
| -------------------------------------------------------------------------- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| `amount`                                                                   | *T.nilable(::Float)*                                                       | :heavy_minus_sign:                                                         | Flat fee amount, in `currency`                                             |
| `currency`                                                                 | *T.nilable(::String)*                                                      | :heavy_minus_sign:                                                         | ISO 4217 currency code of `amount`                                         |
| `percentage`                                                               | *T.nilable(::Float)*                                                       | :heavy_minus_sign:                                                         | Fee as a percentage of the candidate's salary (e.g. 20 for 20%)            |
| `type`                                                                     | [T.nilable(Models::Shared::AtsFeeType)](../../models/shared/atsfeetype.md) | :heavy_minus_sign:                                                         | The fee arrangement (e.g. contingency or retained search)                  |