# UpdateAccountingAccountRequest


## Fields

| Field                                                                         | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `accounting_account`                                                          | [Models::Shared::AccountingAccount](../../models/shared/accountingaccount.md) | :heavy_check_mark:                                                            | Chart of accounts                                                             |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `fields_`                                                                     | T::Array<*::String*>                                                          | :heavy_minus_sign:                                                            | Comma-delimited fields to return                                              |
| `id`                                                                          | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the Account                                                             |