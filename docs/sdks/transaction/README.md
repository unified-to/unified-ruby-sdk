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


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=::UnifiedRubySDK::Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.transaction.create_accounting_transaction(connection_id="string", accounting_transaction=::UnifiedRubySDK::Shared::AccountingTransaction.new(
    id="<ID>",
    lineitems=[
      ::UnifiedRubySDK::Shared::AccountingTransactionLineitem.new(
        account_id="string",
        total_amount=4969.62,
      ),
    ],
    raw={
      "Web": "string",
    },
  ))

if ! res.accounting_transaction.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                 | *::String*                                                                                      | :heavy_check_mark:                                                                              | ID of the connection                                                                            |
| `accounting_transaction`                                                                        | [::UnifiedRubySDK::Shared::AccountingTransaction](../../models/shared/accountingtransaction.md) | :heavy_minus_sign:                                                                              | N/A                                                                                             |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAccountingTransactionResponse)](../../models/operations/createaccountingtransactionresponse.md)**


## get_accounting_transaction

Retrieve a transaction

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=::UnifiedRubySDK::Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
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
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Transaction            |
| `fields`                         | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingTransactionResponse)](../../models/operations/getaccountingtransactionresponse.md)**


## list_accounting_transactions

List all transactions

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=::UnifiedRubySDK::Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListAccountingTransactionsRequest.new(
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

| Parameter                                                                                                                       | Type                                                                                                                            | Required                                                                                                                        | Description                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                       | [::UnifiedRubySDK::Operations::ListAccountingTransactionsRequest](../../models/operations/listaccountingtransactionsrequest.md) | :heavy_check_mark:                                                                                                              | The request object to use for the request.                                                                                      |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingTransactionsResponse)](../../models/operations/listaccountingtransactionsresponse.md)**


## patch_accounting_transaction

Update a transaction

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=::UnifiedRubySDK::Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.transaction.patch_accounting_transaction(connection_id="string", id="string", accounting_transaction=::UnifiedRubySDK::Shared::AccountingTransaction.new(
    id="<ID>",
    lineitems=[
      ::UnifiedRubySDK::Shared::AccountingTransactionLineitem.new(
        account_id="string",
        total_amount=5633.69,
      ),
    ],
    raw={
      "invoice": "string",
    },
  ))

if ! res.accounting_transaction.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                 | *::String*                                                                                      | :heavy_check_mark:                                                                              | ID of the connection                                                                            |
| `id`                                                                                            | *::String*                                                                                      | :heavy_check_mark:                                                                              | ID of the Transaction                                                                           |
| `accounting_transaction`                                                                        | [::UnifiedRubySDK::Shared::AccountingTransaction](../../models/shared/accountingtransaction.md) | :heavy_minus_sign:                                                                              | N/A                                                                                             |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAccountingTransactionResponse)](../../models/operations/patchaccountingtransactionresponse.md)**


## remove_accounting_transaction

Remove a transaction

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=::UnifiedRubySDK::Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.transaction.remove_accounting_transaction(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter             | Type                  | Required              | Description           |
| --------------------- | --------------------- | --------------------- | --------------------- |
| `connection_id`       | *::String*            | :heavy_check_mark:    | ID of the connection  |
| `id`                  | *::String*            | :heavy_check_mark:    | ID of the Transaction |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAccountingTransactionResponse)](../../models/operations/removeaccountingtransactionresponse.md)**


## update_accounting_transaction

Update a transaction

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=::UnifiedRubySDK::Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.transaction.update_accounting_transaction(connection_id="string", id="string", accounting_transaction=::UnifiedRubySDK::Shared::AccountingTransaction.new(
    id="<ID>",
    lineitems=[
      ::UnifiedRubySDK::Shared::AccountingTransactionLineitem.new(
        account_id="string",
        total_amount=6498.37,
      ),
    ],
    raw={
      "a": "string",
    },
  ))

if ! res.accounting_transaction.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                 | *::String*                                                                                      | :heavy_check_mark:                                                                              | ID of the connection                                                                            |
| `id`                                                                                            | *::String*                                                                                      | :heavy_check_mark:                                                                              | ID of the Transaction                                                                           |
| `accounting_transaction`                                                                        | [::UnifiedRubySDK::Shared::AccountingTransaction](../../models/shared/accountingtransaction.md) | :heavy_minus_sign:                                                                              | N/A                                                                                             |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAccountingTransactionResponse)](../../models/operations/updateaccountingtransactionresponse.md)**

