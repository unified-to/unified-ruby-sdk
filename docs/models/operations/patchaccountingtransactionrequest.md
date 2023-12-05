# PatchAccountingTransactionRequest


## Fields

| Field                                                                                    | Type                                                                                     | Required                                                                                 | Description                                                                              |
| ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| `connection_id`                                                                          | *String*                                                                                 | :heavy_check_mark:                                                                       | ID of the connection                                                                     |
| `id`                                                                                     | *String*                                                                                 | :heavy_check_mark:                                                                       | ID of the Transaction                                                                    |
| `accounting_transaction`                                                                 | [T.nilable(Shared::AccountingTransaction)](../../models/shared/accountingtransaction.md) | :heavy_minus_sign:                                                                       | N/A                                                                                      |