# Accounting


### Available Operations

* [create_accounting_account](#create_accounting_account) - Create an account
* [create_accounting_contact](#create_accounting_contact) - Create a contact
* [create_accounting_invoice](#create_accounting_invoice) - Create a invoice
* [create_accounting_payment](#create_accounting_payment) - Create a payment
* [create_accounting_taxrate](#create_accounting_taxrate) - Create a taxrate
* [create_accounting_transaction](#create_accounting_transaction) - Create a transaction
* [get_accounting_account](#get_accounting_account) - Retrieve an account
* [get_accounting_contact](#get_accounting_contact) - Retrieve a contact
* [get_accounting_invoice](#get_accounting_invoice) - Retrieve a invoice
* [get_accounting_organization](#get_accounting_organization) - Retrieve an organization
* [get_accounting_payment](#get_accounting_payment) - Retrieve a payment
* [get_accounting_payout](#get_accounting_payout) - Retrieve a payout
* [get_accounting_refund](#get_accounting_refund) - Retrieve a refund
* [get_accounting_taxrate](#get_accounting_taxrate) - Retrieve a taxrate
* [get_accounting_transaction](#get_accounting_transaction) - Retrieve a transaction
* [list_accounting_accounts](#list_accounting_accounts) - List all accounts
* [list_accounting_contacts](#list_accounting_contacts) - List all contacts
* [list_accounting_invoices](#list_accounting_invoices) - List all invoices
* [list_accounting_organizations](#list_accounting_organizations) - List all organizations
* [list_accounting_payments](#list_accounting_payments) - List all payments
* [list_accounting_payouts](#list_accounting_payouts) - List all payouts
* [list_accounting_refunds](#list_accounting_refunds) - List all refunds
* [list_accounting_taxrates](#list_accounting_taxrates) - List all taxrates
* [list_accounting_transactions](#list_accounting_transactions) - List all transactions
* [patch_accounting_account](#patch_accounting_account) - Update an account
* [patch_accounting_contact](#patch_accounting_contact) - Update a contact
* [patch_accounting_invoice](#patch_accounting_invoice) - Update a invoice
* [patch_accounting_payment](#patch_accounting_payment) - Update a payment
* [patch_accounting_taxrate](#patch_accounting_taxrate) - Update a taxrate
* [patch_accounting_transaction](#patch_accounting_transaction) - Update a transaction
* [remove_accounting_account](#remove_accounting_account) - Remove an account
* [remove_accounting_contact](#remove_accounting_contact) - Remove a contact
* [remove_accounting_invoice](#remove_accounting_invoice) - Remove a invoice
* [remove_accounting_payment](#remove_accounting_payment) - Remove a payment
* [remove_accounting_taxrate](#remove_accounting_taxrate) - Remove a taxrate
* [remove_accounting_transaction](#remove_accounting_transaction) - Remove a transaction
* [update_accounting_account](#update_accounting_account) - Update an account
* [update_accounting_contact](#update_accounting_contact) - Update a contact
* [update_accounting_invoice](#update_accounting_invoice) - Update a invoice
* [update_accounting_payment](#update_accounting_payment) - Update a payment
* [update_accounting_taxrate](#update_accounting_taxrate) - Update a taxrate
* [update_accounting_transaction](#update_accounting_transaction) - Update a transaction

## create_accounting_account

Create an account

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.create_accounting_account(::UnifiedRubySDK::Operations::CreateAccountingAccountSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", accounting_account=::UnifiedRubySDK::Shared::AccountingAccount.new(
    name: "<value>",
  ))

if ! res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::CreateAccountingAccountSecurity](../../models/operations/createaccountingaccountsecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |
| `connection_id`                                                                                                             | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the connection                                                                                                        |
| `accounting_account`                                                                                                        | [::UnifiedRubySDK::Shared::AccountingAccount](../../models/shared/accountingaccount.md)                                     | :heavy_minus_sign:                                                                                                          | N/A                                                                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAccountingAccountResponse)](../../models/operations/createaccountingaccountresponse.md)**


## create_accounting_contact

Create a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.create_accounting_contact(::UnifiedRubySDK::Operations::CreateAccountingContactSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", accounting_contact=::UnifiedRubySDK::Shared::AccountingContact.new())

if ! res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::CreateAccountingContactSecurity](../../models/operations/createaccountingcontactsecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |
| `connection_id`                                                                                                             | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the connection                                                                                                        |
| `accounting_contact`                                                                                                        | [::UnifiedRubySDK::Shared::AccountingContact](../../models/shared/accountingcontact.md)                                     | :heavy_minus_sign:                                                                                                          | N/A                                                                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAccountingContactResponse)](../../models/operations/createaccountingcontactresponse.md)**


## create_accounting_invoice

Create a invoice

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.create_accounting_invoice(::UnifiedRubySDK::Operations::CreateAccountingInvoiceSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", accounting_invoice=::UnifiedRubySDK::Shared::AccountingInvoice.new())

if ! res.accounting_invoice.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::CreateAccountingInvoiceSecurity](../../models/operations/createaccountinginvoicesecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |
| `connection_id`                                                                                                             | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the connection                                                                                                        |
| `accounting_invoice`                                                                                                        | [::UnifiedRubySDK::Shared::AccountingInvoice](../../models/shared/accountinginvoice.md)                                     | :heavy_minus_sign:                                                                                                          | N/A                                                                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAccountingInvoiceResponse)](../../models/operations/createaccountinginvoiceresponse.md)**


## create_accounting_payment

Create a payment

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.create_accounting_payment(::UnifiedRubySDK::Operations::CreateAccountingPaymentSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", accounting_payment=::UnifiedRubySDK::Shared::AccountingPayment.new())

if ! res.accounting_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::CreateAccountingPaymentSecurity](../../models/operations/createaccountingpaymentsecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |
| `connection_id`                                                                                                             | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the connection                                                                                                        |
| `accounting_payment`                                                                                                        | [::UnifiedRubySDK::Shared::AccountingPayment](../../models/shared/accountingpayment.md)                                     | :heavy_minus_sign:                                                                                                          | N/A                                                                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAccountingPaymentResponse)](../../models/operations/createaccountingpaymentresponse.md)**


## create_accounting_taxrate

Create a taxrate

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.create_accounting_taxrate(::UnifiedRubySDK::Operations::CreateAccountingTaxrateSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", accounting_taxrate=::UnifiedRubySDK::Shared::AccountingTaxrate.new(
    name: "<value>",
    rate: 1719.1,
  ))

if ! res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::CreateAccountingTaxrateSecurity](../../models/operations/createaccountingtaxratesecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |
| `connection_id`                                                                                                             | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the connection                                                                                                        |
| `accounting_taxrate`                                                                                                        | [::UnifiedRubySDK::Shared::AccountingTaxrate](../../models/shared/accountingtaxrate.md)                                     | :heavy_minus_sign:                                                                                                          | N/A                                                                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAccountingTaxrateResponse)](../../models/operations/createaccountingtaxrateresponse.md)**


## create_accounting_transaction

Create a transaction

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.create_accounting_transaction(::UnifiedRubySDK::Operations::CreateAccountingTransactionSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", accounting_transaction=::UnifiedRubySDK::Shared::AccountingTransaction.new(
    id: "<id>",
  ))

if ! res.accounting_transaction.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                           | Type                                                                                                                                | Required                                                                                                                            | Description                                                                                                                         |
| ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                          | [::UnifiedRubySDK::Operations::CreateAccountingTransactionSecurity](../../models/operations/createaccountingtransactionsecurity.md) | :heavy_check_mark:                                                                                                                  | The security requirements to use for the request.                                                                                   |
| `connection_id`                                                                                                                     | *::String*                                                                                                                          | :heavy_check_mark:                                                                                                                  | ID of the connection                                                                                                                |
| `accounting_transaction`                                                                                                            | [::UnifiedRubySDK::Shared::AccountingTransaction](../../models/shared/accountingtransaction.md)                                     | :heavy_minus_sign:                                                                                                                  | N/A                                                                                                                                 |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAccountingTransactionResponse)](../../models/operations/createaccountingtransactionresponse.md)**


## get_accounting_account

Retrieve an account

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.get_accounting_account(::UnifiedRubySDK::Operations::GetAccountingAccountSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                            | [::UnifiedRubySDK::Operations::GetAccountingAccountSecurity](../../models/operations/getaccountingaccountsecurity.md) | :heavy_check_mark:                                                                                                    | The security requirements to use for the request.                                                                     |
| `connection_id`                                                                                                       | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | ID of the connection                                                                                                  |
| `id`                                                                                                                  | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | ID of the Account                                                                                                     |
| `fields_`                                                                                                             | T::Array<*::String*>                                                                                                  | :heavy_minus_sign:                                                                                                    | Comma-delimited fields to return                                                                                      |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingAccountResponse)](../../models/operations/getaccountingaccountresponse.md)**


## get_accounting_contact

Retrieve a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.get_accounting_contact(::UnifiedRubySDK::Operations::GetAccountingContactSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                            | [::UnifiedRubySDK::Operations::GetAccountingContactSecurity](../../models/operations/getaccountingcontactsecurity.md) | :heavy_check_mark:                                                                                                    | The security requirements to use for the request.                                                                     |
| `connection_id`                                                                                                       | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | ID of the connection                                                                                                  |
| `id`                                                                                                                  | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | ID of the Contact                                                                                                     |
| `fields_`                                                                                                             | T::Array<*::String*>                                                                                                  | :heavy_minus_sign:                                                                                                    | Comma-delimited fields to return                                                                                      |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingContactResponse)](../../models/operations/getaccountingcontactresponse.md)**


## get_accounting_invoice

Retrieve a invoice

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.get_accounting_invoice(::UnifiedRubySDK::Operations::GetAccountingInvoiceSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.accounting_invoice.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                            | [::UnifiedRubySDK::Operations::GetAccountingInvoiceSecurity](../../models/operations/getaccountinginvoicesecurity.md) | :heavy_check_mark:                                                                                                    | The security requirements to use for the request.                                                                     |
| `connection_id`                                                                                                       | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | ID of the connection                                                                                                  |
| `id`                                                                                                                  | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | ID of the Invoice                                                                                                     |
| `fields_`                                                                                                             | T::Array<*::String*>                                                                                                  | :heavy_minus_sign:                                                                                                    | Comma-delimited fields to return                                                                                      |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingInvoiceResponse)](../../models/operations/getaccountinginvoiceresponse.md)**


## get_accounting_organization

Retrieve an organization

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.get_accounting_organization(::UnifiedRubySDK::Operations::GetAccountingOrganizationSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.accounting_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                       | Type                                                                                                                            | Required                                                                                                                        | Description                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                      | [::UnifiedRubySDK::Operations::GetAccountingOrganizationSecurity](../../models/operations/getaccountingorganizationsecurity.md) | :heavy_check_mark:                                                                                                              | The security requirements to use for the request.                                                                               |
| `connection_id`                                                                                                                 | *::String*                                                                                                                      | :heavy_check_mark:                                                                                                              | ID of the connection                                                                                                            |
| `id`                                                                                                                            | *::String*                                                                                                                      | :heavy_check_mark:                                                                                                              | ID of the Organization                                                                                                          |
| `fields_`                                                                                                                       | T::Array<*::String*>                                                                                                            | :heavy_minus_sign:                                                                                                              | Comma-delimited fields to return                                                                                                |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingOrganizationResponse)](../../models/operations/getaccountingorganizationresponse.md)**


## get_accounting_payment

Retrieve a payment

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.get_accounting_payment(::UnifiedRubySDK::Operations::GetAccountingPaymentSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.accounting_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                            | [::UnifiedRubySDK::Operations::GetAccountingPaymentSecurity](../../models/operations/getaccountingpaymentsecurity.md) | :heavy_check_mark:                                                                                                    | The security requirements to use for the request.                                                                     |
| `connection_id`                                                                                                       | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | ID of the connection                                                                                                  |
| `id`                                                                                                                  | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | ID of the Payment                                                                                                     |
| `fields_`                                                                                                             | T::Array<*::String*>                                                                                                  | :heavy_minus_sign:                                                                                                    | Comma-delimited fields to return                                                                                      |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingPaymentResponse)](../../models/operations/getaccountingpaymentresponse.md)**


## get_accounting_payout

Retrieve a payout

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.get_accounting_payout(::UnifiedRubySDK::Operations::GetAccountingPayoutSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.accounting_payout.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                          | [::UnifiedRubySDK::Operations::GetAccountingPayoutSecurity](../../models/operations/getaccountingpayoutsecurity.md) | :heavy_check_mark:                                                                                                  | The security requirements to use for the request.                                                                   |
| `connection_id`                                                                                                     | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | ID of the connection                                                                                                |
| `id`                                                                                                                | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | ID of the Payout                                                                                                    |
| `fields_`                                                                                                           | T::Array<*::String*>                                                                                                | :heavy_minus_sign:                                                                                                  | Comma-delimited fields to return                                                                                    |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingPayoutResponse)](../../models/operations/getaccountingpayoutresponse.md)**


## get_accounting_refund

Retrieve a refund

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.get_accounting_refund(::UnifiedRubySDK::Operations::GetAccountingRefundSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.accounting_refund.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                          | [::UnifiedRubySDK::Operations::GetAccountingRefundSecurity](../../models/operations/getaccountingrefundsecurity.md) | :heavy_check_mark:                                                                                                  | The security requirements to use for the request.                                                                   |
| `connection_id`                                                                                                     | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | ID of the connection                                                                                                |
| `id`                                                                                                                | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | ID of the Refund                                                                                                    |
| `fields_`                                                                                                           | T::Array<*::String*>                                                                                                | :heavy_minus_sign:                                                                                                  | Comma-delimited fields to return                                                                                    |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingRefundResponse)](../../models/operations/getaccountingrefundresponse.md)**


## get_accounting_taxrate

Retrieve a taxrate

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.get_accounting_taxrate(::UnifiedRubySDK::Operations::GetAccountingTaxrateSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                            | [::UnifiedRubySDK::Operations::GetAccountingTaxrateSecurity](../../models/operations/getaccountingtaxratesecurity.md) | :heavy_check_mark:                                                                                                    | The security requirements to use for the request.                                                                     |
| `connection_id`                                                                                                       | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | ID of the connection                                                                                                  |
| `id`                                                                                                                  | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | ID of the Taxrate                                                                                                     |
| `fields_`                                                                                                             | T::Array<*::String*>                                                                                                  | :heavy_minus_sign:                                                                                                    | Comma-delimited fields to return                                                                                      |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingTaxrateResponse)](../../models/operations/getaccountingtaxrateresponse.md)**


## get_accounting_transaction

Retrieve a transaction

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.get_accounting_transaction(::UnifiedRubySDK::Operations::GetAccountingTransactionSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.accounting_transaction.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                     | Type                                                                                                                          | Required                                                                                                                      | Description                                                                                                                   |
| ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                    | [::UnifiedRubySDK::Operations::GetAccountingTransactionSecurity](../../models/operations/getaccountingtransactionsecurity.md) | :heavy_check_mark:                                                                                                            | The security requirements to use for the request.                                                                             |
| `connection_id`                                                                                                               | *::String*                                                                                                                    | :heavy_check_mark:                                                                                                            | ID of the connection                                                                                                          |
| `id`                                                                                                                          | *::String*                                                                                                                    | :heavy_check_mark:                                                                                                            | ID of the Transaction                                                                                                         |
| `fields_`                                                                                                                     | T::Array<*::String*>                                                                                                          | :heavy_minus_sign:                                                                                                            | Comma-delimited fields to return                                                                                              |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingTransactionResponse)](../../models/operations/getaccountingtransactionresponse.md)**


## list_accounting_accounts

List all accounts

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListAccountingAccountsRequest.new(
  connection_id: "<value>",
)
    
res = s.accounting.list_accounting_accounts(req, ::UnifiedRubySDK::Operations::ListAccountingAccountsSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.accounting_accounts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [::UnifiedRubySDK::Operations::ListAccountingAccountsRequest](../../models/operations/listaccountingaccountsrequest.md)   | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |
| `security`                                                                                                                | [::UnifiedRubySDK::Operations::ListAccountingAccountsSecurity](../../models/operations/listaccountingaccountssecurity.md) | :heavy_check_mark:                                                                                                        | The security requirements to use for the request.                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingAccountsResponse)](../../models/operations/listaccountingaccountsresponse.md)**


## list_accounting_contacts

List all contacts

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListAccountingContactsRequest.new(
  connection_id: "<value>",
)
    
res = s.accounting.list_accounting_contacts(req, ::UnifiedRubySDK::Operations::ListAccountingContactsSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.accounting_contacts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [::UnifiedRubySDK::Operations::ListAccountingContactsRequest](../../models/operations/listaccountingcontactsrequest.md)   | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |
| `security`                                                                                                                | [::UnifiedRubySDK::Operations::ListAccountingContactsSecurity](../../models/operations/listaccountingcontactssecurity.md) | :heavy_check_mark:                                                                                                        | The security requirements to use for the request.                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingContactsResponse)](../../models/operations/listaccountingcontactsresponse.md)**


## list_accounting_invoices

List all invoices

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListAccountingInvoicesRequest.new(
  connection_id: "<value>",
)
    
res = s.accounting.list_accounting_invoices(req, ::UnifiedRubySDK::Operations::ListAccountingInvoicesSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.accounting_invoices.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [::UnifiedRubySDK::Operations::ListAccountingInvoicesRequest](../../models/operations/listaccountinginvoicesrequest.md)   | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |
| `security`                                                                                                                | [::UnifiedRubySDK::Operations::ListAccountingInvoicesSecurity](../../models/operations/listaccountinginvoicessecurity.md) | :heavy_check_mark:                                                                                                        | The security requirements to use for the request.                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingInvoicesResponse)](../../models/operations/listaccountinginvoicesresponse.md)**


## list_accounting_organizations

List all organizations

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListAccountingOrganizationsRequest.new(
  connection_id: "<value>",
)
    
res = s.accounting.list_accounting_organizations(req, ::UnifiedRubySDK::Operations::ListAccountingOrganizationsSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.accounting_organizations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                           | Type                                                                                                                                | Required                                                                                                                            | Description                                                                                                                         |
| ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                           | [::UnifiedRubySDK::Operations::ListAccountingOrganizationsRequest](../../models/operations/listaccountingorganizationsrequest.md)   | :heavy_check_mark:                                                                                                                  | The request object to use for the request.                                                                                          |
| `security`                                                                                                                          | [::UnifiedRubySDK::Operations::ListAccountingOrganizationsSecurity](../../models/operations/listaccountingorganizationssecurity.md) | :heavy_check_mark:                                                                                                                  | The security requirements to use for the request.                                                                                   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingOrganizationsResponse)](../../models/operations/listaccountingorganizationsresponse.md)**


## list_accounting_payments

List all payments

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListAccountingPaymentsRequest.new(
  connection_id: "<value>",
)
    
res = s.accounting.list_accounting_payments(req, ::UnifiedRubySDK::Operations::ListAccountingPaymentsSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.accounting_payments.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [::UnifiedRubySDK::Operations::ListAccountingPaymentsRequest](../../models/operations/listaccountingpaymentsrequest.md)   | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |
| `security`                                                                                                                | [::UnifiedRubySDK::Operations::ListAccountingPaymentsSecurity](../../models/operations/listaccountingpaymentssecurity.md) | :heavy_check_mark:                                                                                                        | The security requirements to use for the request.                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingPaymentsResponse)](../../models/operations/listaccountingpaymentsresponse.md)**


## list_accounting_payouts

List all payouts

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListAccountingPayoutsRequest.new(
  connection_id: "<value>",
)
    
res = s.accounting.list_accounting_payouts(req, ::UnifiedRubySDK::Operations::ListAccountingPayoutsSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.accounting_payouts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::UnifiedRubySDK::Operations::ListAccountingPayoutsRequest](../../models/operations/listaccountingpayoutsrequest.md)   | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |
| `security`                                                                                                              | [::UnifiedRubySDK::Operations::ListAccountingPayoutsSecurity](../../models/operations/listaccountingpayoutssecurity.md) | :heavy_check_mark:                                                                                                      | The security requirements to use for the request.                                                                       |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingPayoutsResponse)](../../models/operations/listaccountingpayoutsresponse.md)**


## list_accounting_refunds

List all refunds

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListAccountingRefundsRequest.new(
  connection_id: "<value>",
)
    
res = s.accounting.list_accounting_refunds(req, ::UnifiedRubySDK::Operations::ListAccountingRefundsSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.accounting_refunds.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::UnifiedRubySDK::Operations::ListAccountingRefundsRequest](../../models/operations/listaccountingrefundsrequest.md)   | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |
| `security`                                                                                                              | [::UnifiedRubySDK::Operations::ListAccountingRefundsSecurity](../../models/operations/listaccountingrefundssecurity.md) | :heavy_check_mark:                                                                                                      | The security requirements to use for the request.                                                                       |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingRefundsResponse)](../../models/operations/listaccountingrefundsresponse.md)**


## list_accounting_taxrates

List all taxrates

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListAccountingTaxratesRequest.new(
  connection_id: "<value>",
)
    
res = s.accounting.list_accounting_taxrates(req, ::UnifiedRubySDK::Operations::ListAccountingTaxratesSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.accounting_taxrates.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [::UnifiedRubySDK::Operations::ListAccountingTaxratesRequest](../../models/operations/listaccountingtaxratesrequest.md)   | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |
| `security`                                                                                                                | [::UnifiedRubySDK::Operations::ListAccountingTaxratesSecurity](../../models/operations/listaccountingtaxratessecurity.md) | :heavy_check_mark:                                                                                                        | The security requirements to use for the request.                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingTaxratesResponse)](../../models/operations/listaccountingtaxratesresponse.md)**


## list_accounting_transactions

List all transactions

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListAccountingTransactionsRequest.new(
  connection_id: "<value>",
)
    
res = s.accounting.list_accounting_transactions(req, ::UnifiedRubySDK::Operations::ListAccountingTransactionsSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.accounting_transactions.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                         | Type                                                                                                                              | Required                                                                                                                          | Description                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                         | [::UnifiedRubySDK::Operations::ListAccountingTransactionsRequest](../../models/operations/listaccountingtransactionsrequest.md)   | :heavy_check_mark:                                                                                                                | The request object to use for the request.                                                                                        |
| `security`                                                                                                                        | [::UnifiedRubySDK::Operations::ListAccountingTransactionsSecurity](../../models/operations/listaccountingtransactionssecurity.md) | :heavy_check_mark:                                                                                                                | The security requirements to use for the request.                                                                                 |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingTransactionsResponse)](../../models/operations/listaccountingtransactionsresponse.md)**


## patch_accounting_account

Update an account

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.patch_accounting_account(::UnifiedRubySDK::Operations::PatchAccountingAccountSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", accounting_account=::UnifiedRubySDK::Shared::AccountingAccount.new(
    name: "<value>",
  ))

if ! res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                | [::UnifiedRubySDK::Operations::PatchAccountingAccountSecurity](../../models/operations/patchaccountingaccountsecurity.md) | :heavy_check_mark:                                                                                                        | The security requirements to use for the request.                                                                         |
| `connection_id`                                                                                                           | *::String*                                                                                                                | :heavy_check_mark:                                                                                                        | ID of the connection                                                                                                      |
| `id`                                                                                                                      | *::String*                                                                                                                | :heavy_check_mark:                                                                                                        | ID of the Account                                                                                                         |
| `accounting_account`                                                                                                      | [::UnifiedRubySDK::Shared::AccountingAccount](../../models/shared/accountingaccount.md)                                   | :heavy_minus_sign:                                                                                                        | N/A                                                                                                                       |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAccountingAccountResponse)](../../models/operations/patchaccountingaccountresponse.md)**


## patch_accounting_contact

Update a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.patch_accounting_contact(::UnifiedRubySDK::Operations::PatchAccountingContactSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", accounting_contact=::UnifiedRubySDK::Shared::AccountingContact.new())

if ! res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                | [::UnifiedRubySDK::Operations::PatchAccountingContactSecurity](../../models/operations/patchaccountingcontactsecurity.md) | :heavy_check_mark:                                                                                                        | The security requirements to use for the request.                                                                         |
| `connection_id`                                                                                                           | *::String*                                                                                                                | :heavy_check_mark:                                                                                                        | ID of the connection                                                                                                      |
| `id`                                                                                                                      | *::String*                                                                                                                | :heavy_check_mark:                                                                                                        | ID of the Contact                                                                                                         |
| `accounting_contact`                                                                                                      | [::UnifiedRubySDK::Shared::AccountingContact](../../models/shared/accountingcontact.md)                                   | :heavy_minus_sign:                                                                                                        | N/A                                                                                                                       |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAccountingContactResponse)](../../models/operations/patchaccountingcontactresponse.md)**


## patch_accounting_invoice

Update a invoice

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.patch_accounting_invoice(::UnifiedRubySDK::Operations::PatchAccountingInvoiceSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", accounting_invoice=::UnifiedRubySDK::Shared::AccountingInvoice.new())

if ! res.accounting_invoice.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                | [::UnifiedRubySDK::Operations::PatchAccountingInvoiceSecurity](../../models/operations/patchaccountinginvoicesecurity.md) | :heavy_check_mark:                                                                                                        | The security requirements to use for the request.                                                                         |
| `connection_id`                                                                                                           | *::String*                                                                                                                | :heavy_check_mark:                                                                                                        | ID of the connection                                                                                                      |
| `id`                                                                                                                      | *::String*                                                                                                                | :heavy_check_mark:                                                                                                        | ID of the Invoice                                                                                                         |
| `accounting_invoice`                                                                                                      | [::UnifiedRubySDK::Shared::AccountingInvoice](../../models/shared/accountinginvoice.md)                                   | :heavy_minus_sign:                                                                                                        | N/A                                                                                                                       |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAccountingInvoiceResponse)](../../models/operations/patchaccountinginvoiceresponse.md)**


## patch_accounting_payment

Update a payment

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.patch_accounting_payment(::UnifiedRubySDK::Operations::PatchAccountingPaymentSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", accounting_payment=::UnifiedRubySDK::Shared::AccountingPayment.new())

if ! res.accounting_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                | [::UnifiedRubySDK::Operations::PatchAccountingPaymentSecurity](../../models/operations/patchaccountingpaymentsecurity.md) | :heavy_check_mark:                                                                                                        | The security requirements to use for the request.                                                                         |
| `connection_id`                                                                                                           | *::String*                                                                                                                | :heavy_check_mark:                                                                                                        | ID of the connection                                                                                                      |
| `id`                                                                                                                      | *::String*                                                                                                                | :heavy_check_mark:                                                                                                        | ID of the Payment                                                                                                         |
| `accounting_payment`                                                                                                      | [::UnifiedRubySDK::Shared::AccountingPayment](../../models/shared/accountingpayment.md)                                   | :heavy_minus_sign:                                                                                                        | N/A                                                                                                                       |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAccountingPaymentResponse)](../../models/operations/patchaccountingpaymentresponse.md)**


## patch_accounting_taxrate

Update a taxrate

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.patch_accounting_taxrate(::UnifiedRubySDK::Operations::PatchAccountingTaxrateSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", accounting_taxrate=::UnifiedRubySDK::Shared::AccountingTaxrate.new(
    name: "<value>",
    rate: 5991.47,
  ))

if ! res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                | [::UnifiedRubySDK::Operations::PatchAccountingTaxrateSecurity](../../models/operations/patchaccountingtaxratesecurity.md) | :heavy_check_mark:                                                                                                        | The security requirements to use for the request.                                                                         |
| `connection_id`                                                                                                           | *::String*                                                                                                                | :heavy_check_mark:                                                                                                        | ID of the connection                                                                                                      |
| `id`                                                                                                                      | *::String*                                                                                                                | :heavy_check_mark:                                                                                                        | ID of the Taxrate                                                                                                         |
| `accounting_taxrate`                                                                                                      | [::UnifiedRubySDK::Shared::AccountingTaxrate](../../models/shared/accountingtaxrate.md)                                   | :heavy_minus_sign:                                                                                                        | N/A                                                                                                                       |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAccountingTaxrateResponse)](../../models/operations/patchaccountingtaxrateresponse.md)**


## patch_accounting_transaction

Update a transaction

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.patch_accounting_transaction(::UnifiedRubySDK::Operations::PatchAccountingTransactionSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", accounting_transaction=::UnifiedRubySDK::Shared::AccountingTransaction.new(
    id: "<id>",
  ))

if ! res.accounting_transaction.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                         | Type                                                                                                                              | Required                                                                                                                          | Description                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                        | [::UnifiedRubySDK::Operations::PatchAccountingTransactionSecurity](../../models/operations/patchaccountingtransactionsecurity.md) | :heavy_check_mark:                                                                                                                | The security requirements to use for the request.                                                                                 |
| `connection_id`                                                                                                                   | *::String*                                                                                                                        | :heavy_check_mark:                                                                                                                | ID of the connection                                                                                                              |
| `id`                                                                                                                              | *::String*                                                                                                                        | :heavy_check_mark:                                                                                                                | ID of the Transaction                                                                                                             |
| `accounting_transaction`                                                                                                          | [::UnifiedRubySDK::Shared::AccountingTransaction](../../models/shared/accountingtransaction.md)                                   | :heavy_minus_sign:                                                                                                                | N/A                                                                                                                               |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAccountingTransactionResponse)](../../models/operations/patchaccountingtransactionresponse.md)**


## remove_accounting_account

Remove an account

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.remove_accounting_account(::UnifiedRubySDK::Operations::RemoveAccountingAccountSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::RemoveAccountingAccountSecurity](../../models/operations/removeaccountingaccountsecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |
| `connection_id`                                                                                                             | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the connection                                                                                                        |
| `id`                                                                                                                        | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the Account                                                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAccountingAccountResponse)](../../models/operations/removeaccountingaccountresponse.md)**


## remove_accounting_contact

Remove a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.remove_accounting_contact(::UnifiedRubySDK::Operations::RemoveAccountingContactSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::RemoveAccountingContactSecurity](../../models/operations/removeaccountingcontactsecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |
| `connection_id`                                                                                                             | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the connection                                                                                                        |
| `id`                                                                                                                        | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the Contact                                                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAccountingContactResponse)](../../models/operations/removeaccountingcontactresponse.md)**


## remove_accounting_invoice

Remove a invoice

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.remove_accounting_invoice(::UnifiedRubySDK::Operations::RemoveAccountingInvoiceSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::RemoveAccountingInvoiceSecurity](../../models/operations/removeaccountinginvoicesecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |
| `connection_id`                                                                                                             | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the connection                                                                                                        |
| `id`                                                                                                                        | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the Invoice                                                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAccountingInvoiceResponse)](../../models/operations/removeaccountinginvoiceresponse.md)**


## remove_accounting_payment

Remove a payment

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.remove_accounting_payment(::UnifiedRubySDK::Operations::RemoveAccountingPaymentSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::RemoveAccountingPaymentSecurity](../../models/operations/removeaccountingpaymentsecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |
| `connection_id`                                                                                                             | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the connection                                                                                                        |
| `id`                                                                                                                        | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the Payment                                                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAccountingPaymentResponse)](../../models/operations/removeaccountingpaymentresponse.md)**


## remove_accounting_taxrate

Remove a taxrate

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.remove_accounting_taxrate(::UnifiedRubySDK::Operations::RemoveAccountingTaxrateSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::RemoveAccountingTaxrateSecurity](../../models/operations/removeaccountingtaxratesecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |
| `connection_id`                                                                                                             | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the connection                                                                                                        |
| `id`                                                                                                                        | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the Taxrate                                                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAccountingTaxrateResponse)](../../models/operations/removeaccountingtaxrateresponse.md)**


## remove_accounting_transaction

Remove a transaction

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.remove_accounting_transaction(::UnifiedRubySDK::Operations::RemoveAccountingTransactionSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                           | Type                                                                                                                                | Required                                                                                                                            | Description                                                                                                                         |
| ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                          | [::UnifiedRubySDK::Operations::RemoveAccountingTransactionSecurity](../../models/operations/removeaccountingtransactionsecurity.md) | :heavy_check_mark:                                                                                                                  | The security requirements to use for the request.                                                                                   |
| `connection_id`                                                                                                                     | *::String*                                                                                                                          | :heavy_check_mark:                                                                                                                  | ID of the connection                                                                                                                |
| `id`                                                                                                                                | *::String*                                                                                                                          | :heavy_check_mark:                                                                                                                  | ID of the Transaction                                                                                                               |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAccountingTransactionResponse)](../../models/operations/removeaccountingtransactionresponse.md)**


## update_accounting_account

Update an account

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.update_accounting_account(::UnifiedRubySDK::Operations::UpdateAccountingAccountSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", accounting_account=::UnifiedRubySDK::Shared::AccountingAccount.new(
    name: "<value>",
  ))

if ! res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::UpdateAccountingAccountSecurity](../../models/operations/updateaccountingaccountsecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |
| `connection_id`                                                                                                             | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the connection                                                                                                        |
| `id`                                                                                                                        | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the Account                                                                                                           |
| `accounting_account`                                                                                                        | [::UnifiedRubySDK::Shared::AccountingAccount](../../models/shared/accountingaccount.md)                                     | :heavy_minus_sign:                                                                                                          | N/A                                                                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAccountingAccountResponse)](../../models/operations/updateaccountingaccountresponse.md)**


## update_accounting_contact

Update a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.update_accounting_contact(::UnifiedRubySDK::Operations::UpdateAccountingContactSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", accounting_contact=::UnifiedRubySDK::Shared::AccountingContact.new())

if ! res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::UpdateAccountingContactSecurity](../../models/operations/updateaccountingcontactsecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |
| `connection_id`                                                                                                             | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the connection                                                                                                        |
| `id`                                                                                                                        | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the Contact                                                                                                           |
| `accounting_contact`                                                                                                        | [::UnifiedRubySDK::Shared::AccountingContact](../../models/shared/accountingcontact.md)                                     | :heavy_minus_sign:                                                                                                          | N/A                                                                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAccountingContactResponse)](../../models/operations/updateaccountingcontactresponse.md)**


## update_accounting_invoice

Update a invoice

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.update_accounting_invoice(::UnifiedRubySDK::Operations::UpdateAccountingInvoiceSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", accounting_invoice=::UnifiedRubySDK::Shared::AccountingInvoice.new())

if ! res.accounting_invoice.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::UpdateAccountingInvoiceSecurity](../../models/operations/updateaccountinginvoicesecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |
| `connection_id`                                                                                                             | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the connection                                                                                                        |
| `id`                                                                                                                        | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the Invoice                                                                                                           |
| `accounting_invoice`                                                                                                        | [::UnifiedRubySDK::Shared::AccountingInvoice](../../models/shared/accountinginvoice.md)                                     | :heavy_minus_sign:                                                                                                          | N/A                                                                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAccountingInvoiceResponse)](../../models/operations/updateaccountinginvoiceresponse.md)**


## update_accounting_payment

Update a payment

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.update_accounting_payment(::UnifiedRubySDK::Operations::UpdateAccountingPaymentSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", accounting_payment=::UnifiedRubySDK::Shared::AccountingPayment.new())

if ! res.accounting_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::UpdateAccountingPaymentSecurity](../../models/operations/updateaccountingpaymentsecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |
| `connection_id`                                                                                                             | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the connection                                                                                                        |
| `id`                                                                                                                        | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the Payment                                                                                                           |
| `accounting_payment`                                                                                                        | [::UnifiedRubySDK::Shared::AccountingPayment](../../models/shared/accountingpayment.md)                                     | :heavy_minus_sign:                                                                                                          | N/A                                                                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAccountingPaymentResponse)](../../models/operations/updateaccountingpaymentresponse.md)**


## update_accounting_taxrate

Update a taxrate

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.update_accounting_taxrate(::UnifiedRubySDK::Operations::UpdateAccountingTaxrateSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", accounting_taxrate=::UnifiedRubySDK::Shared::AccountingTaxrate.new(
    name: "<value>",
    rate: 3382.78,
  ))

if ! res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::UpdateAccountingTaxrateSecurity](../../models/operations/updateaccountingtaxratesecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |
| `connection_id`                                                                                                             | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the connection                                                                                                        |
| `id`                                                                                                                        | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the Taxrate                                                                                                           |
| `accounting_taxrate`                                                                                                        | [::UnifiedRubySDK::Shared::AccountingTaxrate](../../models/shared/accountingtaxrate.md)                                     | :heavy_minus_sign:                                                                                                          | N/A                                                                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAccountingTaxrateResponse)](../../models/operations/updateaccountingtaxrateresponse.md)**


## update_accounting_transaction

Update a transaction

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.update_accounting_transaction(::UnifiedRubySDK::Operations::UpdateAccountingTransactionSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", accounting_transaction=::UnifiedRubySDK::Shared::AccountingTransaction.new(
    id: "<id>",
  ))

if ! res.accounting_transaction.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                           | Type                                                                                                                                | Required                                                                                                                            | Description                                                                                                                         |
| ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                          | [::UnifiedRubySDK::Operations::UpdateAccountingTransactionSecurity](../../models/operations/updateaccountingtransactionsecurity.md) | :heavy_check_mark:                                                                                                                  | The security requirements to use for the request.                                                                                   |
| `connection_id`                                                                                                                     | *::String*                                                                                                                          | :heavy_check_mark:                                                                                                                  | ID of the connection                                                                                                                |
| `id`                                                                                                                                | *::String*                                                                                                                          | :heavy_check_mark:                                                                                                                  | ID of the Transaction                                                                                                               |
| `accounting_transaction`                                                                                                            | [::UnifiedRubySDK::Shared::AccountingTransaction](../../models/shared/accountingtransaction.md)                                     | :heavy_minus_sign:                                                                                                                  | N/A                                                                                                                                 |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAccountingTransactionResponse)](../../models/operations/updateaccountingtransactionresponse.md)**

