# PatchAccountingAccountRequest


## Fields

| Field                                                                            | Type                                                                             | Required                                                                         | Description                                                                      |
| -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| `connection_id`                                                                  | *String*                                                                         | :heavy_check_mark:                                                               | ID of the connection                                                             |
| `id`                                                                             | *String*                                                                         | :heavy_check_mark:                                                               | ID of the Account                                                                |
| `accounting_account`                                                             | [T.nilable(Shared::AccountingAccount)](../../models/shared/accountingaccount.md) | :heavy_minus_sign:                                                               | A user's bank account                                                            |