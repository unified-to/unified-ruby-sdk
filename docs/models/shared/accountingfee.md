# AccountingFee


## Fields

| Field                                                                         | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `amount`                                                                      | *::Float*                                                                     | :heavy_check_mark:                                                            | N/A                                                                           |
| `currency`                                                                    | *T.nilable(::String)*                                                         | :heavy_minus_sign:                                                            | ISO 4217 currency code, e.g. USD                                              |
| `original_type`                                                               | *T.nilable(::String)*                                                         | :heavy_minus_sign:                                                            | The provider's original fee label, e.g. "VAT" or a shipping carrier name      |
| `type`                                                                        | [Models::Shared::AccountingFeeType](../../models/shared/accountingfeetype.md) | :heavy_check_mark:                                                            | Unified fee category                                                          |