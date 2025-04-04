# Accounting
(*accounting*)

## Overview

### Available Operations

* [create_accounting_account](#create_accounting_account) - Create an account
* [create_accounting_contact](#create_accounting_contact) - Create a contact
* [create_accounting_invoice](#create_accounting_invoice) - Create an invoice
* [create_accounting_journal](#create_accounting_journal) - Create a journal
* [create_accounting_order](#create_accounting_order) - Create an order
* [create_accounting_taxrate](#create_accounting_taxrate) - Create a taxrate
* [create_accounting_transaction](#create_accounting_transaction) - Create a transaction
* [get_accounting_account](#get_accounting_account) - Retrieve an account
* [get_accounting_contact](#get_accounting_contact) - Retrieve a contact
* [get_accounting_invoice](#get_accounting_invoice) - Retrieve an invoice
* [get_accounting_journal](#get_accounting_journal) - Retrieve a journal
* [get_accounting_order](#get_accounting_order) - Retrieve an order
* [get_accounting_organization](#get_accounting_organization) - Retrieve an organization
* [get_accounting_report](#get_accounting_report) - Retrieve a report
* [get_accounting_taxrate](#get_accounting_taxrate) - Retrieve a taxrate
* [get_accounting_transaction](#get_accounting_transaction) - Retrieve a transaction
* [list_accounting_accounts](#list_accounting_accounts) - List all accounts
* [list_accounting_contacts](#list_accounting_contacts) - List all contacts
* [list_accounting_invoices](#list_accounting_invoices) - List all invoices
* [list_accounting_journals](#list_accounting_journals) - List all journals
* [list_accounting_orders](#list_accounting_orders) - List all orders
* [list_accounting_organizations](#list_accounting_organizations) - List all organizations
* [list_accounting_reports](#list_accounting_reports) - List all reports
* [list_accounting_taxrates](#list_accounting_taxrates) - List all taxrates
* [list_accounting_transactions](#list_accounting_transactions) - List all transactions
* [patch_accounting_account](#patch_accounting_account) - Update an account
* [patch_accounting_contact](#patch_accounting_contact) - Update a contact
* [patch_accounting_invoice](#patch_accounting_invoice) - Update an invoice
* [patch_accounting_journal](#patch_accounting_journal) - Update a journal
* [patch_accounting_order](#patch_accounting_order) - Update an order
* [patch_accounting_taxrate](#patch_accounting_taxrate) - Update a taxrate
* [patch_accounting_transaction](#patch_accounting_transaction) - Update a transaction
* [remove_accounting_account](#remove_accounting_account) - Remove an account
* [remove_accounting_contact](#remove_accounting_contact) - Remove a contact
* [remove_accounting_invoice](#remove_accounting_invoice) - Remove an invoice
* [remove_accounting_journal](#remove_accounting_journal) - Remove a journal
* [remove_accounting_order](#remove_accounting_order) - Remove an order
* [remove_accounting_taxrate](#remove_accounting_taxrate) - Remove a taxrate
* [remove_accounting_transaction](#remove_accounting_transaction) - Remove a transaction
* [update_accounting_account](#update_accounting_account) - Update an account
* [update_accounting_contact](#update_accounting_contact) - Update a contact
* [update_accounting_invoice](#update_accounting_invoice) - Update an invoice
* [update_accounting_journal](#update_accounting_journal) - Update a journal
* [update_accounting_order](#update_accounting_order) - Update an order
* [update_accounting_taxrate](#update_accounting_taxrate) - Update a taxrate
* [update_accounting_transaction](#update_accounting_transaction) - Update a transaction

## create_accounting_account

Create an account

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.create_accounting_account(accounting_account=::UnifiedRubySDK::Shared::AccountingAccount.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `accounting_account`                                                                    | [::UnifiedRubySDK::Shared::AccountingAccount](../../models/shared/accountingaccount.md) | :heavy_check_mark:                                                                      | Chart of accounts                                                                       |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `fields_`                                                                               | T::Array<*::String*>                                                                    | :heavy_minus_sign:                                                                      | Comma-delimited fields to return                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAccountingAccountResponse)](../../models/operations/createaccountingaccountresponse.md)**



## create_accounting_contact

Create a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.create_accounting_contact(accounting_contact=::UnifiedRubySDK::Shared::AccountingContact.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `accounting_contact`                                                                    | [::UnifiedRubySDK::Shared::AccountingContact](../../models/shared/accountingcontact.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `fields_`                                                                               | T::Array<*::String*>                                                                    | :heavy_minus_sign:                                                                      | Comma-delimited fields to return                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAccountingContactResponse)](../../models/operations/createaccountingcontactresponse.md)**



## create_accounting_invoice

Create an invoice

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.create_accounting_invoice(accounting_invoice=::UnifiedRubySDK::Shared::AccountingInvoice.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_invoice.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `accounting_invoice`                                                                    | [::UnifiedRubySDK::Shared::AccountingInvoice](../../models/shared/accountinginvoice.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `fields_`                                                                               | T::Array<*::String*>                                                                    | :heavy_minus_sign:                                                                      | Comma-delimited fields to return                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAccountingInvoiceResponse)](../../models/operations/createaccountinginvoiceresponse.md)**



## create_accounting_journal

Create a journal

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.create_accounting_journal(accounting_journal=::UnifiedRubySDK::Shared::AccountingJournal.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_journal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `accounting_journal`                                                                    | [::UnifiedRubySDK::Shared::AccountingJournal](../../models/shared/accountingjournal.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `fields_`                                                                               | T::Array<*::String*>                                                                    | :heavy_minus_sign:                                                                      | Comma-delimited fields to return                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAccountingJournalResponse)](../../models/operations/createaccountingjournalresponse.md)**



## create_accounting_order

Create an order

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.create_accounting_order(accounting_order=::UnifiedRubySDK::Shared::AccountingOrder.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `accounting_order`                                                                  | [::UnifiedRubySDK::Shared::AccountingOrder](../../models/shared/accountingorder.md) | :heavy_check_mark:                                                                  | N/A                                                                                 |
| `connection_id`                                                                     | *::String*                                                                          | :heavy_check_mark:                                                                  | ID of the connection                                                                |
| `fields_`                                                                           | T::Array<*::String*>                                                                | :heavy_minus_sign:                                                                  | Comma-delimited fields to return                                                    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAccountingOrderResponse)](../../models/operations/createaccountingorderresponse.md)**



## create_accounting_taxrate

Create a taxrate

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.create_accounting_taxrate(accounting_taxrate=::UnifiedRubySDK::Shared::AccountingTaxrate.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `accounting_taxrate`                                                                    | [::UnifiedRubySDK::Shared::AccountingTaxrate](../../models/shared/accountingtaxrate.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `fields_`                                                                               | T::Array<*::String*>                                                                    | :heavy_minus_sign:                                                                      | Comma-delimited fields to return                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAccountingTaxrateResponse)](../../models/operations/createaccountingtaxrateresponse.md)**



## create_accounting_transaction

Create a transaction

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.create_accounting_transaction(accounting_transaction=::UnifiedRubySDK::Shared::AccountingTransaction.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_transaction.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `accounting_transaction`                                                                        | [::UnifiedRubySDK::Shared::AccountingTransaction](../../models/shared/accountingtransaction.md) | :heavy_check_mark:                                                                              | N/A                                                                                             |
| `connection_id`                                                                                 | *::String*                                                                                      | :heavy_check_mark:                                                                              | ID of the connection                                                                            |
| `fields_`                                                                                       | T::Array<*::String*>                                                                            | :heavy_minus_sign:                                                                              | Comma-delimited fields to return                                                                |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAccountingTransactionResponse)](../../models/operations/createaccountingtransactionresponse.md)**



## get_accounting_account

Retrieve an account

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.get_accounting_account(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Account                |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingAccountResponse)](../../models/operations/getaccountingaccountresponse.md)**



## get_accounting_contact

Retrieve a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.get_accounting_contact(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Contact                |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingContactResponse)](../../models/operations/getaccountingcontactresponse.md)**



## get_accounting_invoice

Retrieve an invoice

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.get_accounting_invoice(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_invoice.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Invoice                |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingInvoiceResponse)](../../models/operations/getaccountinginvoiceresponse.md)**



## get_accounting_journal

Retrieve a journal

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.get_accounting_journal(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_journal.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Journal                |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingJournalResponse)](../../models/operations/getaccountingjournalresponse.md)**



## get_accounting_order

Retrieve an order

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.get_accounting_order(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_order.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Order                  |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingOrderResponse)](../../models/operations/getaccountingorderresponse.md)**



## get_accounting_organization

Retrieve an organization

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.get_accounting_organization(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Organization           |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingOrganizationResponse)](../../models/operations/getaccountingorganizationresponse.md)**



## get_accounting_report

Retrieve a report

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.get_accounting_report(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_report.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Report                 |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingReportResponse)](../../models/operations/getaccountingreportresponse.md)**



## get_accounting_taxrate

Retrieve a taxrate

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.get_accounting_taxrate(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Taxrate                |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingTaxrateResponse)](../../models/operations/getaccountingtaxrateresponse.md)**



## get_accounting_transaction

Retrieve a transaction

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.get_accounting_transaction(connection_id="<id>", id="<id>", fields_=[
  "<value>",
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
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingTransactionResponse)](../../models/operations/getaccountingtransactionresponse.md)**



## list_accounting_accounts

List all accounts

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListAccountingAccountsRequest.new(
  connection_id: "<id>",
)

res = s.accounting.list_accounting_accounts(req)

if ! res.accounting_accounts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::UnifiedRubySDK::Operations::ListAccountingAccountsRequest](../../models/operations/listaccountingaccountsrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingAccountsResponse)](../../models/operations/listaccountingaccountsresponse.md)**



## list_accounting_contacts

List all contacts

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListAccountingContactsRequest.new(
  connection_id: "<id>",
)

res = s.accounting.list_accounting_contacts(req)

if ! res.accounting_contacts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::UnifiedRubySDK::Operations::ListAccountingContactsRequest](../../models/operations/listaccountingcontactsrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingContactsResponse)](../../models/operations/listaccountingcontactsresponse.md)**



## list_accounting_invoices

List all invoices

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListAccountingInvoicesRequest.new(
  connection_id: "<id>",
)

res = s.accounting.list_accounting_invoices(req)

if ! res.accounting_invoices.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::UnifiedRubySDK::Operations::ListAccountingInvoicesRequest](../../models/operations/listaccountinginvoicesrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingInvoicesResponse)](../../models/operations/listaccountinginvoicesresponse.md)**



## list_accounting_journals

List all journals

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListAccountingJournalsRequest.new(
  connection_id: "<id>",
)

res = s.accounting.list_accounting_journals(req)

if ! res.accounting_journals.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::UnifiedRubySDK::Operations::ListAccountingJournalsRequest](../../models/operations/listaccountingjournalsrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingJournalsResponse)](../../models/operations/listaccountingjournalsresponse.md)**



## list_accounting_orders

List all orders

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListAccountingOrdersRequest.new(
  connection_id: "<id>",
)

res = s.accounting.list_accounting_orders(req)

if ! res.accounting_orders.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [::UnifiedRubySDK::Operations::ListAccountingOrdersRequest](../../models/operations/listaccountingordersrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingOrdersResponse)](../../models/operations/listaccountingordersresponse.md)**



## list_accounting_organizations

List all organizations

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListAccountingOrganizationsRequest.new(
  connection_id: "<id>",
)

res = s.accounting.list_accounting_organizations(req)

if ! res.accounting_organizations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                         | Type                                                                                                                              | Required                                                                                                                          | Description                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                         | [::UnifiedRubySDK::Operations::ListAccountingOrganizationsRequest](../../models/operations/listaccountingorganizationsrequest.md) | :heavy_check_mark:                                                                                                                | The request object to use for the request.                                                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingOrganizationsResponse)](../../models/operations/listaccountingorganizationsresponse.md)**



## list_accounting_reports

List all reports

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListAccountingReportsRequest.new(
  connection_id: "<id>",
)

res = s.accounting.list_accounting_reports(req)

if ! res.accounting_reports.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [::UnifiedRubySDK::Operations::ListAccountingReportsRequest](../../models/operations/listaccountingreportsrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingReportsResponse)](../../models/operations/listaccountingreportsresponse.md)**



## list_accounting_taxrates

List all taxrates

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListAccountingTaxratesRequest.new(
  connection_id: "<id>",
)

res = s.accounting.list_accounting_taxrates(req)

if ! res.accounting_taxrates.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::UnifiedRubySDK::Operations::ListAccountingTaxratesRequest](../../models/operations/listaccountingtaxratesrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingTaxratesResponse)](../../models/operations/listaccountingtaxratesresponse.md)**



## list_accounting_transactions

List all transactions

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListAccountingTransactionsRequest.new(
  connection_id: "<id>",
)

res = s.accounting.list_accounting_transactions(req)

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



## patch_accounting_account

Update an account

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.patch_accounting_account(accounting_account=::UnifiedRubySDK::Shared::AccountingAccount.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `accounting_account`                                                                    | [::UnifiedRubySDK::Shared::AccountingAccount](../../models/shared/accountingaccount.md) | :heavy_check_mark:                                                                      | Chart of accounts                                                                       |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `id`                                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the Account                                                                       |
| `fields_`                                                                               | T::Array<*::String*>                                                                    | :heavy_minus_sign:                                                                      | Comma-delimited fields to return                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAccountingAccountResponse)](../../models/operations/patchaccountingaccountresponse.md)**



## patch_accounting_contact

Update a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.patch_accounting_contact(accounting_contact=::UnifiedRubySDK::Shared::AccountingContact.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `accounting_contact`                                                                    | [::UnifiedRubySDK::Shared::AccountingContact](../../models/shared/accountingcontact.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `id`                                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the Contact                                                                       |
| `fields_`                                                                               | T::Array<*::String*>                                                                    | :heavy_minus_sign:                                                                      | Comma-delimited fields to return                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAccountingContactResponse)](../../models/operations/patchaccountingcontactresponse.md)**



## patch_accounting_invoice

Update an invoice

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.patch_accounting_invoice(accounting_invoice=::UnifiedRubySDK::Shared::AccountingInvoice.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_invoice.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `accounting_invoice`                                                                    | [::UnifiedRubySDK::Shared::AccountingInvoice](../../models/shared/accountinginvoice.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `id`                                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the Invoice                                                                       |
| `fields_`                                                                               | T::Array<*::String*>                                                                    | :heavy_minus_sign:                                                                      | Comma-delimited fields to return                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAccountingInvoiceResponse)](../../models/operations/patchaccountinginvoiceresponse.md)**



## patch_accounting_journal

Update a journal

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.patch_accounting_journal(accounting_journal=::UnifiedRubySDK::Shared::AccountingJournal.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_journal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `accounting_journal`                                                                    | [::UnifiedRubySDK::Shared::AccountingJournal](../../models/shared/accountingjournal.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `id`                                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the Journal                                                                       |
| `fields_`                                                                               | T::Array<*::String*>                                                                    | :heavy_minus_sign:                                                                      | Comma-delimited fields to return                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAccountingJournalResponse)](../../models/operations/patchaccountingjournalresponse.md)**



## patch_accounting_order

Update an order

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.patch_accounting_order(accounting_order=::UnifiedRubySDK::Shared::AccountingOrder.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `accounting_order`                                                                  | [::UnifiedRubySDK::Shared::AccountingOrder](../../models/shared/accountingorder.md) | :heavy_check_mark:                                                                  | N/A                                                                                 |
| `connection_id`                                                                     | *::String*                                                                          | :heavy_check_mark:                                                                  | ID of the connection                                                                |
| `id`                                                                                | *::String*                                                                          | :heavy_check_mark:                                                                  | ID of the Order                                                                     |
| `fields_`                                                                           | T::Array<*::String*>                                                                | :heavy_minus_sign:                                                                  | Comma-delimited fields to return                                                    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAccountingOrderResponse)](../../models/operations/patchaccountingorderresponse.md)**



## patch_accounting_taxrate

Update a taxrate

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.patch_accounting_taxrate(accounting_taxrate=::UnifiedRubySDK::Shared::AccountingTaxrate.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `accounting_taxrate`                                                                    | [::UnifiedRubySDK::Shared::AccountingTaxrate](../../models/shared/accountingtaxrate.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `id`                                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the Taxrate                                                                       |
| `fields_`                                                                               | T::Array<*::String*>                                                                    | :heavy_minus_sign:                                                                      | Comma-delimited fields to return                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAccountingTaxrateResponse)](../../models/operations/patchaccountingtaxrateresponse.md)**



## patch_accounting_transaction

Update a transaction

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.patch_accounting_transaction(accounting_transaction=::UnifiedRubySDK::Shared::AccountingTransaction.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_transaction.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `accounting_transaction`                                                                        | [::UnifiedRubySDK::Shared::AccountingTransaction](../../models/shared/accountingtransaction.md) | :heavy_check_mark:                                                                              | N/A                                                                                             |
| `connection_id`                                                                                 | *::String*                                                                                      | :heavy_check_mark:                                                                              | ID of the connection                                                                            |
| `id`                                                                                            | *::String*                                                                                      | :heavy_check_mark:                                                                              | ID of the Transaction                                                                           |
| `fields_`                                                                                       | T::Array<*::String*>                                                                            | :heavy_minus_sign:                                                                              | Comma-delimited fields to return                                                                |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAccountingTransactionResponse)](../../models/operations/patchaccountingtransactionresponse.md)**



## remove_accounting_account

Remove an account

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.remove_accounting_account(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Account    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAccountingAccountResponse)](../../models/operations/removeaccountingaccountresponse.md)**



## remove_accounting_contact

Remove a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.remove_accounting_contact(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Contact    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAccountingContactResponse)](../../models/operations/removeaccountingcontactresponse.md)**



## remove_accounting_invoice

Remove an invoice

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.remove_accounting_invoice(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Invoice    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAccountingInvoiceResponse)](../../models/operations/removeaccountinginvoiceresponse.md)**



## remove_accounting_journal

Remove a journal

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.remove_accounting_journal(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Journal    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAccountingJournalResponse)](../../models/operations/removeaccountingjournalresponse.md)**



## remove_accounting_order

Remove an order

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.remove_accounting_order(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Order      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAccountingOrderResponse)](../../models/operations/removeaccountingorderresponse.md)**



## remove_accounting_taxrate

Remove a taxrate

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.remove_accounting_taxrate(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Taxrate    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAccountingTaxrateResponse)](../../models/operations/removeaccountingtaxrateresponse.md)**



## remove_accounting_transaction

Remove a transaction

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.remove_accounting_transaction(connection_id="<id>", id="<id>")

if res.status_code == 200
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



## update_accounting_account

Update an account

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.update_accounting_account(accounting_account=::UnifiedRubySDK::Shared::AccountingAccount.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `accounting_account`                                                                    | [::UnifiedRubySDK::Shared::AccountingAccount](../../models/shared/accountingaccount.md) | :heavy_check_mark:                                                                      | Chart of accounts                                                                       |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `id`                                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the Account                                                                       |
| `fields_`                                                                               | T::Array<*::String*>                                                                    | :heavy_minus_sign:                                                                      | Comma-delimited fields to return                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAccountingAccountResponse)](../../models/operations/updateaccountingaccountresponse.md)**



## update_accounting_contact

Update a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.update_accounting_contact(accounting_contact=::UnifiedRubySDK::Shared::AccountingContact.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `accounting_contact`                                                                    | [::UnifiedRubySDK::Shared::AccountingContact](../../models/shared/accountingcontact.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `id`                                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the Contact                                                                       |
| `fields_`                                                                               | T::Array<*::String*>                                                                    | :heavy_minus_sign:                                                                      | Comma-delimited fields to return                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAccountingContactResponse)](../../models/operations/updateaccountingcontactresponse.md)**



## update_accounting_invoice

Update an invoice

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.update_accounting_invoice(accounting_invoice=::UnifiedRubySDK::Shared::AccountingInvoice.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_invoice.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `accounting_invoice`                                                                    | [::UnifiedRubySDK::Shared::AccountingInvoice](../../models/shared/accountinginvoice.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `id`                                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the Invoice                                                                       |
| `fields_`                                                                               | T::Array<*::String*>                                                                    | :heavy_minus_sign:                                                                      | Comma-delimited fields to return                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAccountingInvoiceResponse)](../../models/operations/updateaccountinginvoiceresponse.md)**



## update_accounting_journal

Update a journal

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.update_accounting_journal(accounting_journal=::UnifiedRubySDK::Shared::AccountingJournal.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_journal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `accounting_journal`                                                                    | [::UnifiedRubySDK::Shared::AccountingJournal](../../models/shared/accountingjournal.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `id`                                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the Journal                                                                       |
| `fields_`                                                                               | T::Array<*::String*>                                                                    | :heavy_minus_sign:                                                                      | Comma-delimited fields to return                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAccountingJournalResponse)](../../models/operations/updateaccountingjournalresponse.md)**



## update_accounting_order

Update an order

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.update_accounting_order(accounting_order=::UnifiedRubySDK::Shared::AccountingOrder.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `accounting_order`                                                                  | [::UnifiedRubySDK::Shared::AccountingOrder](../../models/shared/accountingorder.md) | :heavy_check_mark:                                                                  | N/A                                                                                 |
| `connection_id`                                                                     | *::String*                                                                          | :heavy_check_mark:                                                                  | ID of the connection                                                                |
| `id`                                                                                | *::String*                                                                          | :heavy_check_mark:                                                                  | ID of the Order                                                                     |
| `fields_`                                                                           | T::Array<*::String*>                                                                | :heavy_minus_sign:                                                                  | Comma-delimited fields to return                                                    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAccountingOrderResponse)](../../models/operations/updateaccountingorderresponse.md)**



## update_accounting_taxrate

Update a taxrate

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.update_accounting_taxrate(accounting_taxrate=::UnifiedRubySDK::Shared::AccountingTaxrate.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `accounting_taxrate`                                                                    | [::UnifiedRubySDK::Shared::AccountingTaxrate](../../models/shared/accountingtaxrate.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `id`                                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the Taxrate                                                                       |
| `fields_`                                                                               | T::Array<*::String*>                                                                    | :heavy_minus_sign:                                                                      | Comma-delimited fields to return                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAccountingTaxrateResponse)](../../models/operations/updateaccountingtaxrateresponse.md)**



## update_accounting_transaction

Update a transaction

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.update_accounting_transaction(accounting_transaction=::UnifiedRubySDK::Shared::AccountingTransaction.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_transaction.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `accounting_transaction`                                                                        | [::UnifiedRubySDK::Shared::AccountingTransaction](../../models/shared/accountingtransaction.md) | :heavy_check_mark:                                                                              | N/A                                                                                             |
| `connection_id`                                                                                 | *::String*                                                                                      | :heavy_check_mark:                                                                              | ID of the connection                                                                            |
| `id`                                                                                            | *::String*                                                                                      | :heavy_check_mark:                                                                              | ID of the Transaction                                                                           |
| `fields_`                                                                                       | T::Array<*::String*>                                                                            | :heavy_minus_sign:                                                                              | Comma-delimited fields to return                                                                |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAccountingTransactionResponse)](../../models/operations/updateaccountingtransactionresponse.md)**

