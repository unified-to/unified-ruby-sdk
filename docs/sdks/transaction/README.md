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
    jwt=.foo"",
  )
)

   
req = Operations::CreateAccountingTransactionRequest.new(
  path_params=Operations::CreateAccountingTransactionRequest.new(
    connection_id="string",
    accounting_transaction=Shared::AccountingTransaction.new(
      account_id="string",
      created_at="string",
      currency="Libyan Dinar",
      description="Pre-emptive multimedia benchmark",
      id="<ID>",
      line_items=.new[
        Shared::AccountingTransactionLineitem.new(
          customer_id="string",
          description="Ergonomic optimal service-desk",
          id="<ID>",
          invoice_id="string",
          payment_id="string",
          tax_amount=4121.55,
          total_amount=9038.49,
        ),
      ],
      raw=Shared::PropertyAccountingTransactionRaw.new(),
      reference="string",
      tax_amount=8636.91,
      total_amount=8698.49,
      type=Shared::AccountingTransactionType::RECEIVE,
      updated_at="string",
    ),
  ),
  accounting_transaction=Shared::AccountingTransaction.new(
    account_id="string",
    created_at="string",
    currency="Convertible Marks",
    description="Cloned 3rd generation task-force",
    id="<ID>",
    line_items=.new[
      Shared::AccountingTransactionLineitem.new(
        customer_id="string",
        description="Function-based full-range service-desk",
        id="<ID>",
        invoice_id="string",
        payment_id="string",
        tax_amount=4289.08,
        total_amount=5798.44,
      ),
    ],
    raw=Shared::PropertyAccountingTransactionRaw.new(),
    reference="string",
    tax_amount=6105.82,
    total_amount=1961.67,
    type=Shared::AccountingTransactionType::RECEIVE,
    updated_at="string",
  ),
)
    
res = s.transaction.create_accounting_transaction(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::GetAccountingTransactionRequest.new(
  path_params=Operations::GetAccountingTransactionRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetAccountingTransactionRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.transaction.get_accounting_transaction(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::ListAccountingTransactionsRequest.new(
  path_params=Operations::ListAccountingTransactionsRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=7894.5,
    offset=4597.84,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2023-12-02T12:59:27.985Z'),
  ),
  query_params=Operations::ListAccountingTransactionsRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=3467.27,
    offset=5939.77,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2022-06-10T07:17:43.616Z'),
  ),
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
    jwt=.foo"",
  )
)

   
req = Operations::PatchAccountingTransactionRequest.new(
  path_params=Operations::PatchAccountingTransactionRequest.new(
    connection_id="string",
    id="<ID>",
    accounting_transaction=Shared::AccountingTransaction.new(
      account_id="string",
      created_at="string",
      currency="Kwacha",
      description="Multi-channelled transitional function",
      id="<ID>",
      line_items=.new[
        Shared::AccountingTransactionLineitem.new(
          customer_id="string",
          description="Balanced dynamic adapter",
          id="<ID>",
          invoice_id="string",
          payment_id="string",
          tax_amount=8716.58,
          total_amount=1651.43,
        ),
      ],
      raw=Shared::PropertyAccountingTransactionRaw.new(),
      reference="string",
      tax_amount=7486,
      total_amount=3689.69,
      type=Shared::AccountingTransactionType::RECEIVE,
      updated_at="string",
    ),
  ),
  accounting_transaction=Shared::AccountingTransaction.new(
    account_id="string",
    created_at="string",
    currency="Syrian Pound",
    description="Fully-configurable uniform toolset",
    id="<ID>",
    line_items=.new[
      Shared::AccountingTransactionLineitem.new(
        customer_id="string",
        description="Virtual regional firmware",
        id="<ID>",
        invoice_id="string",
        payment_id="string",
        tax_amount=6744.56,
        total_amount=9755.56,
      ),
    ],
    raw=Shared::PropertyAccountingTransactionRaw.new(),
    reference="string",
    tax_amount=4709.26,
    total_amount=6375.2,
    type=Shared::AccountingTransactionType::RECEIVE,
    updated_at="string",
  ),
)
    
res = s.transaction.patch_accounting_transaction(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::RemoveAccountingTransactionRequest.new(
  path_params=Operations::RemoveAccountingTransactionRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.transaction.remove_accounting_transaction(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::UpdateAccountingTransactionRequest.new(
  path_params=Operations::UpdateAccountingTransactionRequest.new(
    connection_id="string",
    id="<ID>",
    accounting_transaction=Shared::AccountingTransaction.new(
      account_id="string",
      created_at="string",
      currency="Zloty",
      description="Organic web-enabled orchestration",
      id="<ID>",
      line_items=.new[
        Shared::AccountingTransactionLineitem.new(
          customer_id="string",
          description="Enterprise-wide coherent alliance",
          id="<ID>",
          invoice_id="string",
          payment_id="string",
          tax_amount=8603.41,
          total_amount=7972.27,
        ),
      ],
      raw=Shared::PropertyAccountingTransactionRaw.new(),
      reference="string",
      tax_amount=5437.06,
      total_amount=2698.71,
      type=Shared::AccountingTransactionType::RECEIVE,
      updated_at="string",
    ),
  ),
  accounting_transaction=Shared::AccountingTransaction.new(
    account_id="string",
    created_at="string",
    currency="Lebanese Pound",
    description="Progressive foreground capability",
    id="<ID>",
    line_items=.new[
      Shared::AccountingTransactionLineitem.new(
        customer_id="string",
        description="Switchable even-keeled customer loyalty",
        id="<ID>",
        invoice_id="string",
        payment_id="string",
        tax_amount=4866.4,
        total_amount=5017.65,
      ),
    ],
    raw=Shared::PropertyAccountingTransactionRaw.new(),
    reference="string",
    tax_amount=752.39,
    total_amount=6013.04,
    type=Shared::AccountingTransactionType::SPEND,
    updated_at="string",
  ),
)
    
res = s.transaction.update_accounting_transaction(req)

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

