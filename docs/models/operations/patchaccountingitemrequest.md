# PatchAccountingItemRequest


## Fields

| Field                                                                      | Type                                                                       | Required                                                                   | Description                                                                |
| -------------------------------------------------------------------------- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| `connection_id`                                                            | *String*                                                                   | :heavy_check_mark:                                                         | ID of the connection                                                       |
| `id`                                                                       | *String*                                                                   | :heavy_check_mark:                                                         | ID of the Item                                                             |
| `accounting_item`                                                          | [T.nilable(Shared::AccountingItem)](../../models/shared/accountingitem.md) | :heavy_minus_sign:                                                         | An item or product                                                         |