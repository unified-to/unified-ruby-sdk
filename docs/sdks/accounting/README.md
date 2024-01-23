# Accounting


### Available Operations

* [create_accounting_account](#create_accounting_account) - Create an account
* [create_accounting_contact](#create_accounting_contact) - Create a contact
* [create_accounting_invoice](#create_accounting_invoice) - Create a invoice
* [create_accounting_item](#create_accounting_item) - Create an item
* [create_accounting_payment](#create_accounting_payment) - Create a payment
* [create_accounting_taxrate](#create_accounting_taxrate) - Create a taxrate
* [create_accounting_transaction](#create_accounting_transaction) - Create a transaction
* [get_accounting_account](#get_accounting_account) - Retrieve an account
* [get_accounting_contact](#get_accounting_contact) - Retrieve a contact
* [get_accounting_invoice](#get_accounting_invoice) - Retrieve a invoice
* [get_accounting_item](#get_accounting_item) - Retrieve an item
* [get_accounting_organization](#get_accounting_organization) - Retrieve an organization
* [get_accounting_payment](#get_accounting_payment) - Retrieve a payment
* [get_accounting_taxrate](#get_accounting_taxrate) - Retrieve a taxrate
* [get_accounting_transaction](#get_accounting_transaction) - Retrieve a transaction
* [list_accounting_accounts](#list_accounting_accounts) - List all accounts
* [list_accounting_contacts](#list_accounting_contacts) - List all contacts
* [list_accounting_invoices](#list_accounting_invoices) - List all invoices
* [list_accounting_items](#list_accounting_items) - List all items
* [list_accounting_organizations](#list_accounting_organizations) - List all organizations
* [list_accounting_payments](#list_accounting_payments) - List all payments
* [list_accounting_taxrates](#list_accounting_taxrates) - List all taxrates
* [list_accounting_transactions](#list_accounting_transactions) - List all transactions
* [patch_accounting_account](#patch_accounting_account) - Update an account
* [patch_accounting_contact](#patch_accounting_contact) - Update a contact
* [patch_accounting_invoice](#patch_accounting_invoice) - Update a invoice
* [patch_accounting_item](#patch_accounting_item) - Update an item
* [patch_accounting_payment](#patch_accounting_payment) - Update a payment
* [patch_accounting_taxrate](#patch_accounting_taxrate) - Update a taxrate
* [patch_accounting_transaction](#patch_accounting_transaction) - Update a transaction
* [remove_accounting_account](#remove_accounting_account) - Remove an account
* [remove_accounting_contact](#remove_accounting_contact) - Remove a contact
* [remove_accounting_invoice](#remove_accounting_invoice) - Remove a invoice
* [remove_accounting_item](#remove_accounting_item) - Remove an item
* [remove_accounting_payment](#remove_accounting_payment) - Remove a payment
* [remove_accounting_taxrate](#remove_accounting_taxrate) - Remove a taxrate
* [remove_accounting_transaction](#remove_accounting_transaction) - Remove a transaction
* [update_accounting_account](#update_accounting_account) - Update an account
* [update_accounting_contact](#update_accounting_contact) - Update a contact
* [update_accounting_invoice](#update_accounting_invoice) - Update a invoice
* [update_accounting_item](#update_accounting_item) - Update an item
* [update_accounting_payment](#update_accounting_payment) - Update a payment
* [update_accounting_taxrate](#update_accounting_taxrate) - Update a taxrate
* [update_accounting_transaction](#update_accounting_transaction) - Update a transaction

## create_accounting_account

Create an account

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
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
| `accounting_account`                                                  | [Shared::AccountingAccount](../../models/shared/accountingaccount.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::CreateAccountingAccountResponse)](../../models/operations/createaccountingaccountresponse.md)**


## create_accounting_contact

Create a contact

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.create_accounting_contact(connection_id="string", accounting_contact=Shared::AccountingContact.new(
    billing_address=Shared::PropertyAccountingContactBillingAddress.new(),
    emails=[
      Shared::AccountingEmail.new(
        email="Mac36@gmail.com",
      ),
    ],
    raw=Shared::PropertyAccountingContactRaw.new(),
    shipping_address=Shared::PropertyAccountingContactShippingAddress.new(),
    telephones=[
      Shared::AccountingTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `accounting_contact`                                                  | [Shared::AccountingContact](../../models/shared/accountingcontact.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::CreateAccountingContactResponse)](../../models/operations/createaccountingcontactresponse.md)**


## create_accounting_invoice

Create a invoice

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.create_accounting_invoice(connection_id="string", accounting_invoice=Shared::AccountingInvoice.new(
    lineitems=[
      Shared::AccountingLineitem.new(
        raw=Shared::PropertyAccountingLineitemRaw.new(),
        total_amount=6736.06,
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


## create_accounting_item

Create an item

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.create_accounting_item(connection_id="string", accounting_item=Shared::AccountingItem.new(
    name="string",
    raw=Shared::PropertyAccountingItemRaw.new(),
  ))

if ! res.accounting_item.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `connection_id`                                                 | *String*                                                        | :heavy_check_mark:                                              | ID of the connection                                            |
| `accounting_item`                                               | [Shared::AccountingItem](../../models/shared/accountingitem.md) | :heavy_minus_sign:                                              | An item or product                                              |


### Response

**[T.nilable(Operations::CreateAccountingItemResponse)](../../models/operations/createaccountingitemresponse.md)**


## create_accounting_payment

Create a payment

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.create_accounting_payment(connection_id="string", accounting_payment=Shared::AccountingPayment.new(
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


## create_accounting_taxrate

Create a taxrate

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.create_accounting_taxrate(connection_id="string", accounting_taxrate=Shared::AccountingTaxrate.new(
    name="string",
    rate=1719.1,
    raw=Shared::PropertyAccountingTaxrateRaw.new(),
  ))

if ! res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `accounting_taxrate`                                                  | [Shared::AccountingTaxrate](../../models/shared/accountingtaxrate.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::CreateAccountingTaxrateResponse)](../../models/operations/createaccountingtaxrateresponse.md)**


## create_accounting_transaction

Create a transaction

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.create_accounting_transaction(connection_id="string", accounting_transaction=Shared::AccountingTransaction.new(
    id="<ID>",
    line_items=[
      Shared::AccountingTransactionLineitem.new(
        account_id="string",
        total_amount=4969.62,
      ),
    ],
    raw=Shared::PropertyAccountingTransactionRaw.new(),
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


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
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


## get_accounting_contact

Retrieve a contact

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.get_accounting_contact(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Contact                |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetAccountingContactResponse)](../../models/operations/getaccountingcontactresponse.md)**


## get_accounting_invoice

Retrieve a invoice

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
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


## get_accounting_item

Retrieve an item

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.get_accounting_item(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.accounting_item.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Item                   |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetAccountingItemResponse)](../../models/operations/getaccountingitemresponse.md)**


## get_accounting_organization

Retrieve an organization

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.get_accounting_organization(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.accounting_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Organization           |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetAccountingOrganizationResponse)](../../models/operations/getaccountingorganizationresponse.md)**


## get_accounting_payment

Retrieve a payment

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
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


## get_accounting_taxrate

Retrieve a taxrate

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.get_accounting_taxrate(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Taxrate                |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetAccountingTaxrateResponse)](../../models/operations/getaccountingtaxrateresponse.md)**


## get_accounting_transaction

Retrieve a transaction

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
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


s = ::UnifiedRubySDK::UnifiedTo.new
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


## list_accounting_contacts

List all contacts

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListAccountingContactsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.accounting.list_accounting_contacts(req)

if ! res.accounting_contacts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Operations::ListAccountingContactsRequest](../../models/operations/listaccountingcontactsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(Operations::ListAccountingContactsResponse)](../../models/operations/listaccountingcontactsresponse.md)**


## list_accounting_invoices

List all invoices

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
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


## list_accounting_items

List all items

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListAccountingItemsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.accounting.list_accounting_items(req)

if ! res.accounting_items.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Operations::ListAccountingItemsRequest](../../models/operations/listaccountingitemsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |


### Response

**[T.nilable(Operations::ListAccountingItemsResponse)](../../models/operations/listaccountingitemsresponse.md)**


## list_accounting_organizations

List all organizations

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListAccountingOrganizationsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.accounting.list_accounting_organizations(req)

if ! res.accounting_organizations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Operations::ListAccountingOrganizationsRequest](../../models/operations/listaccountingorganizationsrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |


### Response

**[T.nilable(Operations::ListAccountingOrganizationsResponse)](../../models/operations/listaccountingorganizationsresponse.md)**


## list_accounting_payments

List all payments

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
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


## list_accounting_taxrates

List all taxrates

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListAccountingTaxratesRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.accounting.list_accounting_taxrates(req)

if ! res.accounting_taxrates.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Operations::ListAccountingTaxratesRequest](../../models/operations/listaccountingtaxratesrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(Operations::ListAccountingTaxratesResponse)](../../models/operations/listaccountingtaxratesresponse.md)**


## list_accounting_transactions

List all transactions

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
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


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
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
| `accounting_account`                                                  | [Shared::AccountingAccount](../../models/shared/accountingaccount.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::PatchAccountingAccountResponse)](../../models/operations/patchaccountingaccountresponse.md)**


## patch_accounting_contact

Update a contact

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.patch_accounting_contact(connection_id="string", id="string", accounting_contact=Shared::AccountingContact.new(
    billing_address=Shared::PropertyAccountingContactBillingAddress.new(),
    emails=[
      Shared::AccountingEmail.new(
        email="Sylvester.Kuhic@yahoo.com",
      ),
    ],
    raw=Shared::PropertyAccountingContactRaw.new(),
    shipping_address=Shared::PropertyAccountingContactShippingAddress.new(),
    telephones=[
      Shared::AccountingTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *String*                                                              | :heavy_check_mark:                                                    | ID of the Contact                                                     |
| `accounting_contact`                                                  | [Shared::AccountingContact](../../models/shared/accountingcontact.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::PatchAccountingContactResponse)](../../models/operations/patchaccountingcontactresponse.md)**


## patch_accounting_invoice

Update a invoice

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.patch_accounting_invoice(connection_id="string", id="string", accounting_invoice=Shared::AccountingInvoice.new(
    lineitems=[
      Shared::AccountingLineitem.new(
        raw=Shared::PropertyAccountingLineitemRaw.new(),
        total_amount=7374.1,
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


## patch_accounting_item

Update an item

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.patch_accounting_item(connection_id="string", id="string", accounting_item=Shared::AccountingItem.new(
    name="string",
    raw=Shared::PropertyAccountingItemRaw.new(),
  ))

if ! res.accounting_item.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `connection_id`                                                 | *String*                                                        | :heavy_check_mark:                                              | ID of the connection                                            |
| `id`                                                            | *String*                                                        | :heavy_check_mark:                                              | ID of the Item                                                  |
| `accounting_item`                                               | [Shared::AccountingItem](../../models/shared/accountingitem.md) | :heavy_minus_sign:                                              | An item or product                                              |


### Response

**[T.nilable(Operations::PatchAccountingItemResponse)](../../models/operations/patchaccountingitemresponse.md)**


## patch_accounting_payment

Update a payment

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.patch_accounting_payment(connection_id="string", id="string", accounting_payment=Shared::AccountingPayment.new(
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


## patch_accounting_taxrate

Update a taxrate

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.patch_accounting_taxrate(connection_id="string", id="string", accounting_taxrate=Shared::AccountingTaxrate.new(
    name="string",
    rate=5991.47,
    raw=Shared::PropertyAccountingTaxrateRaw.new(),
  ))

if ! res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *String*                                                              | :heavy_check_mark:                                                    | ID of the Taxrate                                                     |
| `accounting_taxrate`                                                  | [Shared::AccountingTaxrate](../../models/shared/accountingtaxrate.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::PatchAccountingTaxrateResponse)](../../models/operations/patchaccountingtaxrateresponse.md)**


## patch_accounting_transaction

Update a transaction

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.patch_accounting_transaction(connection_id="string", id="string", accounting_transaction=Shared::AccountingTransaction.new(
    id="<ID>",
    line_items=[
      Shared::AccountingTransactionLineitem.new(
        account_id="string",
        total_amount=5633.69,
      ),
    ],
    raw=Shared::PropertyAccountingTransactionRaw.new(),
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


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
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


## remove_accounting_contact

Remove a contact

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.remove_accounting_contact(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Contact    |


### Response

**[T.nilable(Operations::RemoveAccountingContactResponse)](../../models/operations/removeaccountingcontactresponse.md)**


## remove_accounting_invoice

Remove a invoice

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
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


## remove_accounting_item

Remove an item

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.remove_accounting_item(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Item       |


### Response

**[T.nilable(Operations::RemoveAccountingItemResponse)](../../models/operations/removeaccountingitemresponse.md)**


## remove_accounting_payment

Remove a payment

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
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


## remove_accounting_taxrate

Remove a taxrate

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.remove_accounting_taxrate(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Taxrate    |


### Response

**[T.nilable(Operations::RemoveAccountingTaxrateResponse)](../../models/operations/removeaccountingtaxrateresponse.md)**


## remove_accounting_transaction

Remove a transaction

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
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


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
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
| `accounting_account`                                                  | [Shared::AccountingAccount](../../models/shared/accountingaccount.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::UpdateAccountingAccountResponse)](../../models/operations/updateaccountingaccountresponse.md)**


## update_accounting_contact

Update a contact

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.update_accounting_contact(connection_id="string", id="string", accounting_contact=Shared::AccountingContact.new(
    billing_address=Shared::PropertyAccountingContactBillingAddress.new(),
    emails=[
      Shared::AccountingEmail.new(
        email="Kaci_Hane@hotmail.com",
      ),
    ],
    raw=Shared::PropertyAccountingContactRaw.new(),
    shipping_address=Shared::PropertyAccountingContactShippingAddress.new(),
    telephones=[
      Shared::AccountingTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *String*                                                              | :heavy_check_mark:                                                    | ID of the Contact                                                     |
| `accounting_contact`                                                  | [Shared::AccountingContact](../../models/shared/accountingcontact.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::UpdateAccountingContactResponse)](../../models/operations/updateaccountingcontactresponse.md)**


## update_accounting_invoice

Update a invoice

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.update_accounting_invoice(connection_id="string", id="string", accounting_invoice=Shared::AccountingInvoice.new(
    lineitems=[
      Shared::AccountingLineitem.new(
        raw=Shared::PropertyAccountingLineitemRaw.new(),
        total_amount=6974.28,
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


## update_accounting_item

Update an item

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.update_accounting_item(connection_id="string", id="string", accounting_item=Shared::AccountingItem.new(
    name="string",
    raw=Shared::PropertyAccountingItemRaw.new(),
  ))

if ! res.accounting_item.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `connection_id`                                                 | *String*                                                        | :heavy_check_mark:                                              | ID of the connection                                            |
| `id`                                                            | *String*                                                        | :heavy_check_mark:                                              | ID of the Item                                                  |
| `accounting_item`                                               | [Shared::AccountingItem](../../models/shared/accountingitem.md) | :heavy_minus_sign:                                              | An item or product                                              |


### Response

**[T.nilable(Operations::UpdateAccountingItemResponse)](../../models/operations/updateaccountingitemresponse.md)**


## update_accounting_payment

Update a payment

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.update_accounting_payment(connection_id="string", id="string", accounting_payment=Shared::AccountingPayment.new(
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


## update_accounting_taxrate

Update a taxrate

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.update_accounting_taxrate(connection_id="string", id="string", accounting_taxrate=Shared::AccountingTaxrate.new(
    name="string",
    rate=3382.78,
    raw=Shared::PropertyAccountingTaxrateRaw.new(),
  ))

if ! res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *String*                                                              | :heavy_check_mark:                                                    | ID of the Taxrate                                                     |
| `accounting_taxrate`                                                  | [Shared::AccountingTaxrate](../../models/shared/accountingtaxrate.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::UpdateAccountingTaxrateResponse)](../../models/operations/updateaccountingtaxrateresponse.md)**


## update_accounting_transaction

Update a transaction

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.update_accounting_transaction(connection_id="string", id="string", accounting_transaction=Shared::AccountingTransaction.new(
    id="<ID>",
    line_items=[
      Shared::AccountingTransactionLineitem.new(
        account_id="string",
        total_amount=6498.37,
      ),
    ],
    raw=Shared::PropertyAccountingTransactionRaw.new(),
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

