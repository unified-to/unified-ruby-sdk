# Transaction


### Available Operations

* [create_accounting_transaction](#create_accounting_transaction) - Create a transaction
* [get_accounting_transaction](#get_accounting_transaction) - Retrieve a transaction
* [list_accounting_transactions](#list_accounting_transactions) - List all transactions
* [patch_accounting_transaction](#patch_accounting_transaction) - Update a transaction
* [remove_accounting_transaction](#remove_accounting_transaction) - Remove a transaction
* [update_accounting_transaction](#update_accounting_transaction) - Update a transaction

## create_accounting_transaction

Create a transaction

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::CreateAccountingTransactionRequest.new(
  connection_id="string",
  accounting_transaction=Shared::AccountingTransaction.new(
    account_id="string",
    id="<ID>",
    line_items=[
      Shared::AccountingTransactionLineitem.new(
        id="<ID>",
        total_amount=4969.62,
      ),
    ],
    raw=Shared::PropertyAccountingTransactionRaw.new(),
    total_amount=6267.93,
    type=Shared::AccountingTransactionType::SPEND,
  ),
)
    
res = s.transaction.create_accounting_transaction(connection_id="string", accounting_transaction=Shared::AccountingTransaction.new(
    account_id="string",
    id="<ID>",
    line_items=[
      Shared::AccountingTransactionLineitem.new(
        id="<ID>",
        total_amount=1284.64,
      ),
    ],
    raw=Shared::PropertyAccountingTransactionRaw.new(),
    total_amount=2477.45,
    type=Shared::AccountingTransactionType::SPEND,
  ))

if ! res.accounting_transaction.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `connection_id`                                                               | *String*                                                                      | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `accounting_transaction`                                                      | [Shared::AccountingTransaction](../../models/shared/accountingtransaction.md) | :heavy_minus_sign:                                                            | N/A                                                                           |


### Response

**[T.nilable(Operations::CreateAccountingTransactionResponse)](../../models/operations/createaccountingtransactionresponse.md)**


## get_accounting_transaction

Retrieve a transaction

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetAccountingTransactionRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.transaction.get_accounting_transaction(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.accounting_transaction.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Transaction            |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetAccountingTransactionResponse)](../../models/operations/getaccountingtransactionresponse.md)**


## list_accounting_transactions

List all transactions

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListAccountingTransactionsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.transaction.list_accounting_transactions(req)

if ! res.accounting_transactions.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Operations::ListAccountingTransactionsRequest](../../models/operations/listaccountingtransactionsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |


### Response

**[T.nilable(Operations::ListAccountingTransactionsResponse)](../../models/operations/listaccountingtransactionsresponse.md)**


## patch_accounting_transaction

Update a transaction

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::PatchAccountingTransactionRequest.new(
  connection_id="string",
  id="<ID>",
  accounting_transaction=Shared::AccountingTransaction.new(
    account_id="string",
    id="<ID>",
    line_items=[
      Shared::AccountingTransactionLineitem.new(
        id="<ID>",
        total_amount=5633.69,
      ),
    ],
    raw=Shared::PropertyAccountingTransactionRaw.new(),
    total_amount=4558.63,
    type=Shared::AccountingTransactionType::SPEND,
  ),
)
    
res = s.transaction.patch_accounting_transaction(connection_id="string", id="string", accounting_transaction=Shared::AccountingTransaction.new(
    account_id="string",
    id="<ID>",
    line_items=[
      Shared::AccountingTransactionLineitem.new(
        id="<ID>",
        total_amount=3798.28,
      ),
    ],
    raw=Shared::PropertyAccountingTransactionRaw.new(),
    total_amount=535.65,
    type=Shared::AccountingTransactionType::RECEIVE,
  ))

if ! res.accounting_transaction.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `connection_id`                                                               | *String*                                                                      | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `id`                                                                          | *String*                                                                      | :heavy_check_mark:                                                            | ID of the Transaction                                                         |
| `accounting_transaction`                                                      | [Shared::AccountingTransaction](../../models/shared/accountingtransaction.md) | :heavy_minus_sign:                                                            | N/A                                                                           |


### Response

**[T.nilable(Operations::PatchAccountingTransactionResponse)](../../models/operations/patchaccountingtransactionresponse.md)**


## remove_accounting_transaction

Remove a transaction

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::RemoveAccountingTransactionRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.transaction.remove_accounting_transaction(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter             | Type                  | Required              | Description           |
| --------------------- | --------------------- | --------------------- | --------------------- |
| `connection_id`       | *String*              | :heavy_check_mark:    | ID of the connection  |
| `id`                  | *String*              | :heavy_check_mark:    | ID of the Transaction |


### Response

**[T.nilable(Operations::RemoveAccountingTransactionResponse)](../../models/operations/removeaccountingtransactionresponse.md)**


## update_accounting_transaction

Update a transaction

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::UpdateAccountingTransactionRequest.new(
  connection_id="string",
  id="<ID>",
  accounting_transaction=Shared::AccountingTransaction.new(
    account_id="string",
    id="<ID>",
    line_items=[
      Shared::AccountingTransactionLineitem.new(
        id="<ID>",
        total_amount=6498.37,
      ),
    ],
    raw=Shared::PropertyAccountingTransactionRaw.new(),
    total_amount=5659.17,
    type=Shared::AccountingTransactionType::SPEND,
  ),
)
    
res = s.transaction.update_accounting_transaction(connection_id="string", id="string", accounting_transaction=Shared::AccountingTransaction.new(
    account_id="string",
    id="<ID>",
    line_items=[
      Shared::AccountingTransactionLineitem.new(
        id="<ID>",
        total_amount=7024.11,
      ),
    ],
    raw=Shared::PropertyAccountingTransactionRaw.new(),
    total_amount=2397.73,
    type=Shared::AccountingTransactionType::RECEIVE,
  ))

if ! res.accounting_transaction.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `connection_id`                                                               | *String*                                                                      | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `id`                                                                          | *String*                                                                      | :heavy_check_mark:                                                            | ID of the Transaction                                                         |
| `accounting_transaction`                                                      | [Shared::AccountingTransaction](../../models/shared/accountingtransaction.md) | :heavy_minus_sign:                                                            | N/A                                                                           |


### Response

**[T.nilable(Operations::UpdateAccountingTransactionResponse)](../../models/operations/updateaccountingtransactionresponse.md)**

