# AccountingProfitlossAccount


## Fields

| Field                            | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `account_id`                     | *T.nilable(::String)*            | :heavy_minus_sign:               | (reference to AccountingAccount) |
| `account_name`                   | *T.nilable(::String)*            | :heavy_minus_sign:               | N/A                              |
| `total_amount`                   | *T.nilable(::Float)*             | :heavy_minus_sign:               | N/A                              |
| `transaction_ids`                | T::Array<*::String*>             | :heavy_minus_sign:               | N/A                              |