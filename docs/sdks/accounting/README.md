# Accounting


### Available Operations

* [create_accounting_account](#create_accounting_account) - Create an account
* [create_accounting_customer](#create_accounting_customer) - Create a customer
* [create_accounting_invoice](#create_accounting_invoice) - Create a invoice
* [create_accounting_payment](#create_accounting_payment) - Create a payment
* [create_accounting_transaction](#create_accounting_transaction) - Create a transaction
* [get_accounting_account](#get_accounting_account) - Retrieve an account
* [get_accounting_customer](#get_accounting_customer) - Retrieve a customer
* [get_accounting_invoice](#get_accounting_invoice) - Retrieve a invoice
* [get_accounting_payment](#get_accounting_payment) - Retrieve a payment
* [get_accounting_transaction](#get_accounting_transaction) - Retrieve a transaction
* [list_accounting_accounts](#list_accounting_accounts) - List all accounts
* [list_accounting_customers](#list_accounting_customers) - List all customers
* [list_accounting_invoices](#list_accounting_invoices) - List all invoices
* [list_accounting_payments](#list_accounting_payments) - List all payments
* [list_accounting_transactions](#list_accounting_transactions) - List all transactions
* [patch_accounting_account](#patch_accounting_account) - Update an account
* [patch_accounting_customer](#patch_accounting_customer) - Update a customer
* [patch_accounting_invoice](#patch_accounting_invoice) - Update a invoice
* [patch_accounting_payment](#patch_accounting_payment) - Update a payment
* [patch_accounting_transaction](#patch_accounting_transaction) - Update a transaction
* [remove_accounting_account](#remove_accounting_account) - Remove an account
* [remove_accounting_customer](#remove_accounting_customer) - Remove a customer
* [remove_accounting_invoice](#remove_accounting_invoice) - Remove a invoice
* [remove_accounting_payment](#remove_accounting_payment) - Remove a payment
* [remove_accounting_transaction](#remove_accounting_transaction) - Remove a transaction
* [update_accounting_account](#update_accounting_account) - Update an account
* [update_accounting_customer](#update_accounting_customer) - Update a customer
* [update_accounting_invoice](#update_accounting_invoice) - Update a invoice
* [update_accounting_payment](#update_accounting_payment) - Update a payment
* [update_accounting_transaction](#update_accounting_transaction) - Update a transaction

## create_accounting_account

Create an account

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::CreateAccountingAccountRequest.new(
  connection_id="string",
  accounting_account=Shared::AccountingAccount.new(
    name="string",
    raw=Shared::PropertyAccountingAccountRaw.new(),
  ),
)
    
res = s.accounting.create_accounting_account(connection_id="string", accounting_account=Shared::AccountingAccount.new(
    name="string",
    raw=Shared::PropertyAccountingAccountRaw.new(),
  ))

if ! res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `accounting_account`                                                  | [Shared::AccountingAccount](../../models/shared/accountingaccount.md) | :heavy_minus_sign:                                                    | A user's bank account                                                 |


### Response

**[T.nilable(Operations::CreateAccountingAccountResponse)](../../models/operations/createaccountingaccountresponse.md)**


## create_accounting_customer

Create a customer

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::CreateAccountingCustomerRequest.new(
  connection_id="string",
  accounting_customer=Shared::AccountingCustomer.new(
    billing_address=Shared::PropertyAccountingCustomerBillingAddress.new(),
    emails=[
      Shared::AccountingEmail.new(
        email="Kevon_Schultz42@gmail.com",
      ),
    ],
    raw=Shared::PropertyAccountingCustomerRaw.new(),
    shipping_address=Shared::PropertyAccountingCustomerShippingAddress.new(),
    telephones=[
      Shared::AccountingTelephone.new(
        telephone="string",
      ),
    ],
  ),
)
    
res = s.accounting.create_accounting_customer(connection_id="string", accounting_customer=Shared::AccountingCustomer.new(
    billing_address=Shared::PropertyAccountingCustomerBillingAddress.new(),
    emails=[
      Shared::AccountingEmail.new(
        email="Craig39@gmail.com",
      ),
    ],
    raw=Shared::PropertyAccountingCustomerRaw.new(),
    shipping_address=Shared::PropertyAccountingCustomerShippingAddress.new(),
    telephones=[
      Shared::AccountingTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.accounting_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `connection_id`                                                         | *String*                                                                | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `accounting_customer`                                                   | [Shared::AccountingCustomer](../../models/shared/accountingcustomer.md) | :heavy_minus_sign:                                                      | N/A                                                                     |


### Response

**[T.nilable(Operations::CreateAccountingCustomerResponse)](../../models/operations/createaccountingcustomerresponse.md)**


## create_accounting_invoice

Create a invoice

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::CreateAccountingInvoiceRequest.new(
  connection_id="string",
  accounting_invoice=Shared::AccountingInvoice.new(
    lineitems=[
      Shared::AccountingLineitem.new(
        total_amount=6736.06,
      ),
    ],
    raw=Shared::PropertyAccountingInvoiceRaw.new(),
  ),
)
    
res = s.accounting.create_accounting_invoice(connection_id="string", accounting_invoice=Shared::AccountingInvoice.new(
    lineitems=[
      Shared::AccountingLineitem.new(
        total_amount=1618.47,
      ),
    ],
    raw=Shared::PropertyAccountingInvoiceRaw.new(),
  ))

if ! res.accounting_invoice.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `accounting_invoice`                                                  | [Shared::AccountingInvoice](../../models/shared/accountinginvoice.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::CreateAccountingInvoiceResponse)](../../models/operations/createaccountinginvoiceresponse.md)**


## create_accounting_payment

Create a payment

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::CreateAccountingPaymentRequest.new(
  connection_id="string",
  accounting_payment=Shared::AccountingPayment.new(
    invoice_ids=[
      "string",
    ],
    raw=Shared::PropertyAccountingPaymentRaw.new(),
  ),
)
    
res = s.accounting.create_accounting_payment(connection_id="string", accounting_payment=Shared::AccountingPayment.new(
    invoice_ids=[
      "string",
    ],
    raw=Shared::PropertyAccountingPaymentRaw.new(),
  ))

if ! res.accounting_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `accounting_payment`                                                  | [Shared::AccountingPayment](../../models/shared/accountingpayment.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::CreateAccountingPaymentResponse)](../../models/operations/createaccountingpaymentresponse.md)**


## create_accounting_transaction

Create a transaction

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::CreateAccountingTransactionRequest.new(
  connection_id="string",
  accounting_transaction=Shared::AccountingTransaction.new(
    account_id="string",
    id="<ID>",
    line_items=[
      Shared::AccountingTransactionLineitem.new(
        total_amount=4969.62,
      ),
    ],
    raw=Shared::PropertyAccountingTransactionRaw.new(),
    total_amount=6267.93,
    type=Shared::AccountingTransactionType::SPEND,
  ),
)
    
res = s.accounting.create_accounting_transaction(connection_id="string", accounting_transaction=Shared::AccountingTransaction.new(
    account_id="string",
    id="<ID>",
    line_items=[
      Shared::AccountingTransactionLineitem.new(
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


## get_accounting_account

Retrieve an account

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetAccountingAccountRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.accounting.get_accounting_account(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Account                |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetAccountingAccountResponse)](../../models/operations/getaccountingaccountresponse.md)**


## get_accounting_customer

Retrieve a customer

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetAccountingCustomerRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.accounting.get_accounting_customer(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.accounting_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Customer               |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetAccountingCustomerResponse)](../../models/operations/getaccountingcustomerresponse.md)**


## get_accounting_invoice

Retrieve a invoice

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetAccountingInvoiceRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.accounting.get_accounting_invoice(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.accounting_invoice.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Invoice                |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetAccountingInvoiceResponse)](../../models/operations/getaccountinginvoiceresponse.md)**


## get_accounting_payment

Retrieve a payment

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetAccountingPaymentRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.accounting.get_accounting_payment(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.accounting_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Payment                |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetAccountingPaymentResponse)](../../models/operations/getaccountingpaymentresponse.md)**


## get_accounting_transaction

Retrieve a transaction

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetAccountingTransactionRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.accounting.get_accounting_transaction(connection_id="string", id="string", fields=[
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


## list_accounting_accounts

List all accounts

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListAccountingAccountsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.accounting.list_accounting_accounts(req)

if ! res.accounting_accounts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Operations::ListAccountingAccountsRequest](../../models/operations/listaccountingaccountsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(Operations::ListAccountingAccountsResponse)](../../models/operations/listaccountingaccountsresponse.md)**


## list_accounting_customers

List all customers

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListAccountingCustomersRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.accounting.list_accounting_customers(req)

if ! res.accounting_customers.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Operations::ListAccountingCustomersRequest](../../models/operations/listaccountingcustomersrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |


### Response

**[T.nilable(Operations::ListAccountingCustomersResponse)](../../models/operations/listaccountingcustomersresponse.md)**


## list_accounting_invoices

List all invoices

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListAccountingInvoicesRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.accounting.list_accounting_invoices(req)

if ! res.accounting_invoices.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Operations::ListAccountingInvoicesRequest](../../models/operations/listaccountinginvoicesrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(Operations::ListAccountingInvoicesResponse)](../../models/operations/listaccountinginvoicesresponse.md)**


## list_accounting_payments

List all payments

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListAccountingPaymentsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.accounting.list_accounting_payments(req)

if ! res.accounting_payments.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Operations::ListAccountingPaymentsRequest](../../models/operations/listaccountingpaymentsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(Operations::ListAccountingPaymentsResponse)](../../models/operations/listaccountingpaymentsresponse.md)**


## list_accounting_transactions

List all transactions

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListAccountingTransactionsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.accounting.list_accounting_transactions(req)

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


## patch_accounting_account

Update an account

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::PatchAccountingAccountRequest.new(
  connection_id="string",
  id="<ID>",
  accounting_account=Shared::AccountingAccount.new(
    name="string",
    raw=Shared::PropertyAccountingAccountRaw.new(),
  ),
)
    
res = s.accounting.patch_accounting_account(connection_id="string", id="string", accounting_account=Shared::AccountingAccount.new(
    name="string",
    raw=Shared::PropertyAccountingAccountRaw.new(),
  ))

if ! res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *String*                                                              | :heavy_check_mark:                                                    | ID of the Account                                                     |
| `accounting_account`                                                  | [Shared::AccountingAccount](../../models/shared/accountingaccount.md) | :heavy_minus_sign:                                                    | A user's bank account                                                 |


### Response

**[T.nilable(Operations::PatchAccountingAccountResponse)](../../models/operations/patchaccountingaccountresponse.md)**


## patch_accounting_customer

Update a customer

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::PatchAccountingCustomerRequest.new(
  connection_id="string",
  id="<ID>",
  accounting_customer=Shared::AccountingCustomer.new(
    billing_address=Shared::PropertyAccountingCustomerBillingAddress.new(),
    emails=[
      Shared::AccountingEmail.new(
        email="Trever_Orn@hotmail.com",
      ),
    ],
    raw=Shared::PropertyAccountingCustomerRaw.new(),
    shipping_address=Shared::PropertyAccountingCustomerShippingAddress.new(),
    telephones=[
      Shared::AccountingTelephone.new(
        telephone="string",
      ),
    ],
  ),
)
    
res = s.accounting.patch_accounting_customer(connection_id="string", id="string", accounting_customer=Shared::AccountingCustomer.new(
    billing_address=Shared::PropertyAccountingCustomerBillingAddress.new(),
    emails=[
      Shared::AccountingEmail.new(
        email="Adonis_Wilkinson72@yahoo.com",
      ),
    ],
    raw=Shared::PropertyAccountingCustomerRaw.new(),
    shipping_address=Shared::PropertyAccountingCustomerShippingAddress.new(),
    telephones=[
      Shared::AccountingTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.accounting_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `connection_id`                                                         | *String*                                                                | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `id`                                                                    | *String*                                                                | :heavy_check_mark:                                                      | ID of the Customer                                                      |
| `accounting_customer`                                                   | [Shared::AccountingCustomer](../../models/shared/accountingcustomer.md) | :heavy_minus_sign:                                                      | N/A                                                                     |


### Response

**[T.nilable(Operations::PatchAccountingCustomerResponse)](../../models/operations/patchaccountingcustomerresponse.md)**


## patch_accounting_invoice

Update a invoice

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::PatchAccountingInvoiceRequest.new(
  connection_id="string",
  id="<ID>",
  accounting_invoice=Shared::AccountingInvoice.new(
    lineitems=[
      Shared::AccountingLineitem.new(
        total_amount=7374.1,
      ),
    ],
    raw=Shared::PropertyAccountingInvoiceRaw.new(),
  ),
)
    
res = s.accounting.patch_accounting_invoice(connection_id="string", id="string", accounting_invoice=Shared::AccountingInvoice.new(
    lineitems=[
      Shared::AccountingLineitem.new(
        total_amount=9876.61,
      ),
    ],
    raw=Shared::PropertyAccountingInvoiceRaw.new(),
  ))

if ! res.accounting_invoice.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *String*                                                              | :heavy_check_mark:                                                    | ID of the Invoice                                                     |
| `accounting_invoice`                                                  | [Shared::AccountingInvoice](../../models/shared/accountinginvoice.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::PatchAccountingInvoiceResponse)](../../models/operations/patchaccountinginvoiceresponse.md)**


## patch_accounting_payment

Update a payment

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::PatchAccountingPaymentRequest.new(
  connection_id="string",
  id="<ID>",
  accounting_payment=Shared::AccountingPayment.new(
    invoice_ids=[
      "string",
    ],
    raw=Shared::PropertyAccountingPaymentRaw.new(),
  ),
)
    
res = s.accounting.patch_accounting_payment(connection_id="string", id="string", accounting_payment=Shared::AccountingPayment.new(
    invoice_ids=[
      "string",
    ],
    raw=Shared::PropertyAccountingPaymentRaw.new(),
  ))

if ! res.accounting_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *String*                                                              | :heavy_check_mark:                                                    | ID of the Payment                                                     |
| `accounting_payment`                                                  | [Shared::AccountingPayment](../../models/shared/accountingpayment.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::PatchAccountingPaymentResponse)](../../models/operations/patchaccountingpaymentresponse.md)**


## patch_accounting_transaction

Update a transaction

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
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
        total_amount=5633.69,
      ),
    ],
    raw=Shared::PropertyAccountingTransactionRaw.new(),
    total_amount=4558.63,
    type=Shared::AccountingTransactionType::SPEND,
  ),
)
    
res = s.accounting.patch_accounting_transaction(connection_id="string", id="string", accounting_transaction=Shared::AccountingTransaction.new(
    account_id="string",
    id="<ID>",
    line_items=[
      Shared::AccountingTransactionLineitem.new(
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


## remove_accounting_account

Remove an account

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::RemoveAccountingAccountRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.accounting.remove_accounting_account(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Account    |


### Response

**[T.nilable(Operations::RemoveAccountingAccountResponse)](../../models/operations/removeaccountingaccountresponse.md)**


## remove_accounting_customer

Remove a customer

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::RemoveAccountingCustomerRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.accounting.remove_accounting_customer(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Customer   |


### Response

**[T.nilable(Operations::RemoveAccountingCustomerResponse)](../../models/operations/removeaccountingcustomerresponse.md)**


## remove_accounting_invoice

Remove a invoice

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::RemoveAccountingInvoiceRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.accounting.remove_accounting_invoice(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Invoice    |


### Response

**[T.nilable(Operations::RemoveAccountingInvoiceResponse)](../../models/operations/removeaccountinginvoiceresponse.md)**


## remove_accounting_payment

Remove a payment

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::RemoveAccountingPaymentRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.accounting.remove_accounting_payment(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Payment    |


### Response

**[T.nilable(Operations::RemoveAccountingPaymentResponse)](../../models/operations/removeaccountingpaymentresponse.md)**


## remove_accounting_transaction

Remove a transaction

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::RemoveAccountingTransactionRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.accounting.remove_accounting_transaction(connection_id="string", id="string")

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


## update_accounting_account

Update an account

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::UpdateAccountingAccountRequest.new(
  connection_id="string",
  id="<ID>",
  accounting_account=Shared::AccountingAccount.new(
    name="string",
    raw=Shared::PropertyAccountingAccountRaw.new(),
  ),
)
    
res = s.accounting.update_accounting_account(connection_id="string", id="string", accounting_account=Shared::AccountingAccount.new(
    name="string",
    raw=Shared::PropertyAccountingAccountRaw.new(),
  ))

if ! res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *String*                                                              | :heavy_check_mark:                                                    | ID of the Account                                                     |
| `accounting_account`                                                  | [Shared::AccountingAccount](../../models/shared/accountingaccount.md) | :heavy_minus_sign:                                                    | A user's bank account                                                 |


### Response

**[T.nilable(Operations::UpdateAccountingAccountResponse)](../../models/operations/updateaccountingaccountresponse.md)**


## update_accounting_customer

Update a customer

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::UpdateAccountingCustomerRequest.new(
  connection_id="string",
  id="<ID>",
  accounting_customer=Shared::AccountingCustomer.new(
    billing_address=Shared::PropertyAccountingCustomerBillingAddress.new(),
    emails=[
      Shared::AccountingEmail.new(
        email="Myrtice_Jacobi77@hotmail.com",
      ),
    ],
    raw=Shared::PropertyAccountingCustomerRaw.new(),
    shipping_address=Shared::PropertyAccountingCustomerShippingAddress.new(),
    telephones=[
      Shared::AccountingTelephone.new(
        telephone="string",
      ),
    ],
  ),
)
    
res = s.accounting.update_accounting_customer(connection_id="string", id="string", accounting_customer=Shared::AccountingCustomer.new(
    billing_address=Shared::PropertyAccountingCustomerBillingAddress.new(),
    emails=[
      Shared::AccountingEmail.new(
        email="Eda40@hotmail.com",
      ),
    ],
    raw=Shared::PropertyAccountingCustomerRaw.new(),
    shipping_address=Shared::PropertyAccountingCustomerShippingAddress.new(),
    telephones=[
      Shared::AccountingTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.accounting_customer.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `connection_id`                                                         | *String*                                                                | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `id`                                                                    | *String*                                                                | :heavy_check_mark:                                                      | ID of the Customer                                                      |
| `accounting_customer`                                                   | [Shared::AccountingCustomer](../../models/shared/accountingcustomer.md) | :heavy_minus_sign:                                                      | N/A                                                                     |


### Response

**[T.nilable(Operations::UpdateAccountingCustomerResponse)](../../models/operations/updateaccountingcustomerresponse.md)**


## update_accounting_invoice

Update a invoice

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::UpdateAccountingInvoiceRequest.new(
  connection_id="string",
  id="<ID>",
  accounting_invoice=Shared::AccountingInvoice.new(
    lineitems=[
      Shared::AccountingLineitem.new(
        total_amount=6974.28,
      ),
    ],
    raw=Shared::PropertyAccountingInvoiceRaw.new(),
  ),
)
    
res = s.accounting.update_accounting_invoice(connection_id="string", id="string", accounting_invoice=Shared::AccountingInvoice.new(
    lineitems=[
      Shared::AccountingLineitem.new(
        total_amount=4728.85,
      ),
    ],
    raw=Shared::PropertyAccountingInvoiceRaw.new(),
  ))

if ! res.accounting_invoice.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *String*                                                              | :heavy_check_mark:                                                    | ID of the Invoice                                                     |
| `accounting_invoice`                                                  | [Shared::AccountingInvoice](../../models/shared/accountinginvoice.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::UpdateAccountingInvoiceResponse)](../../models/operations/updateaccountinginvoiceresponse.md)**


## update_accounting_payment

Update a payment

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::UpdateAccountingPaymentRequest.new(
  connection_id="string",
  id="<ID>",
  accounting_payment=Shared::AccountingPayment.new(
    invoice_ids=[
      "string",
    ],
    raw=Shared::PropertyAccountingPaymentRaw.new(),
  ),
)
    
res = s.accounting.update_accounting_payment(connection_id="string", id="string", accounting_payment=Shared::AccountingPayment.new(
    invoice_ids=[
      "string",
    ],
    raw=Shared::PropertyAccountingPaymentRaw.new(),
  ))

if ! res.accounting_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *String*                                                              | :heavy_check_mark:                                                    | ID of the Payment                                                     |
| `accounting_payment`                                                  | [Shared::AccountingPayment](../../models/shared/accountingpayment.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::UpdateAccountingPaymentResponse)](../../models/operations/updateaccountingpaymentresponse.md)**


## update_accounting_transaction

Update a transaction

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
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
        total_amount=6498.37,
      ),
    ],
    raw=Shared::PropertyAccountingTransactionRaw.new(),
    total_amount=5659.17,
    type=Shared::AccountingTransactionType::SPEND,
  ),
)
    
res = s.accounting.update_accounting_transaction(connection_id="string", id="string", accounting_transaction=Shared::AccountingTransaction.new(
    account_id="string",
    id="<ID>",
    line_items=[
      Shared::AccountingTransactionLineitem.new(
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

