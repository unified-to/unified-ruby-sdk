# Accounting
(*accounting*)

## Overview

### Available Operations

* [create_accounting_account](#create_accounting_account) - Create an account
* [create_accounting_bankfeedaccount](#create_accounting_bankfeedaccount) - Create a bankfeedaccount
* [create_accounting_bankfeedtransaction](#create_accounting_bankfeedtransaction) - Create a bankfeedtransaction
* [create_accounting_bill](#create_accounting_bill) - Create a bill
* [create_accounting_category](#create_accounting_category) - Create a category
* [create_accounting_contact](#create_accounting_contact) - Create a contact
* [create_accounting_creditmemo](#create_accounting_creditmemo) - Create a creditmemo
* [create_accounting_expense](#create_accounting_expense) - Create an expense
* [create_accounting_invoice](#create_accounting_invoice) - Create an invoice
* [create_accounting_journal](#create_accounting_journal) - Create a journal
* [create_accounting_order](#create_accounting_order) - Create an order
* [create_accounting_paymentterm](#create_accounting_paymentterm) - Create a paymentterm
* [create_accounting_project](#create_accounting_project) - Create a project
* [create_accounting_purchaseorder](#create_accounting_purchaseorder) - Create a purchaseorder
* [create_accounting_quote](#create_accounting_quote) - Create a quote
* [create_accounting_salesorder](#create_accounting_salesorder) - Create a salesorder
* [create_accounting_taxrate](#create_accounting_taxrate) - Create a taxrate
* [create_accounting_transaction](#create_accounting_transaction) - Create a transaction
* [create_accounting_vendorcredit](#create_accounting_vendorcredit) - Create a vendorcredit
* [get_accounting_account](#get_accounting_account) - Retrieve an account
* [get_accounting_agedpayable](#get_accounting_agedpayable) - Retrieve an agedpayable
* [get_accounting_agedreceivable](#get_accounting_agedreceivable) - Retrieve an agedreceivable
* [get_accounting_balancesheet](#get_accounting_balancesheet) - Retrieve a balancesheet
* [get_accounting_bankfeedaccount](#get_accounting_bankfeedaccount) - Retrieve a bankfeedaccount
* [get_accounting_bankfeedtransaction](#get_accounting_bankfeedtransaction) - Retrieve a bankfeedtransaction
* [get_accounting_bill](#get_accounting_bill) - Retrieve a bill
* [get_accounting_cashflow](#get_accounting_cashflow) - Retrieve a cashflow
* [get_accounting_category](#get_accounting_category) - Retrieve a category
* [get_accounting_contact](#get_accounting_contact) - Retrieve a contact
* [get_accounting_creditmemo](#get_accounting_creditmemo) - Retrieve a creditmemo
* [get_accounting_expense](#get_accounting_expense) - Retrieve an expense
* [get_accounting_invoice](#get_accounting_invoice) - Retrieve an invoice
* [get_accounting_journal](#get_accounting_journal) - Retrieve a journal
* [get_accounting_order](#get_accounting_order) - Retrieve an order
* [get_accounting_organization](#get_accounting_organization) - Retrieve an organization
* [get_accounting_paymentterm](#get_accounting_paymentterm) - Retrieve a paymentterm
* [get_accounting_profitloss](#get_accounting_profitloss) - Retrieve a profitloss
* [get_accounting_project](#get_accounting_project) - Retrieve a project
* [get_accounting_purchaseorder](#get_accounting_purchaseorder) - Retrieve a purchaseorder
* [get_accounting_quote](#get_accounting_quote) - Retrieve a quote
* [get_accounting_salesorder](#get_accounting_salesorder) - Retrieve a salesorder
* [get_accounting_taxrate](#get_accounting_taxrate) - Retrieve a taxrate
* [get_accounting_transaction](#get_accounting_transaction) - Retrieve a transaction
* [get_accounting_trialbalance](#get_accounting_trialbalance) - Retrieve a trialbalance
* [get_accounting_vendorcredit](#get_accounting_vendorcredit) - Retrieve a vendorcredit
* [list_accounting_accounts](#list_accounting_accounts) - List all accounts
* [list_accounting_agedpayables](#list_accounting_agedpayables) - List all agedpayables
* [list_accounting_agedreceivables](#list_accounting_agedreceivables) - List all agedreceivables
* [list_accounting_balancesheets](#list_accounting_balancesheets) - List all balancesheets
* [list_accounting_bankfeedaccounts](#list_accounting_bankfeedaccounts) - List all bankfeedaccounts
* [list_accounting_bankfeedtransactions](#list_accounting_bankfeedtransactions) - List all bankfeedtransactions
* [list_accounting_bills](#list_accounting_bills) - List all bills
* [list_accounting_cashflows](#list_accounting_cashflows) - List all cashflows
* [list_accounting_categories](#list_accounting_categories) - List all categories
* [list_accounting_contacts](#list_accounting_contacts) - List all contacts
* [list_accounting_creditmemoes](#list_accounting_creditmemoes) - List all creditmemoes
* [list_accounting_expenses](#list_accounting_expenses) - List all expenses
* [list_accounting_invoices](#list_accounting_invoices) - List all invoices
* [list_accounting_journals](#list_accounting_journals) - List all journals
* [list_accounting_orders](#list_accounting_orders) - List all orders
* [list_accounting_organizations](#list_accounting_organizations) - List all organizations
* [list_accounting_paymentterms](#list_accounting_paymentterms) - List all paymentterms
* [list_accounting_profitlosses](#list_accounting_profitlosses) - List all profitlosses
* [list_accounting_projects](#list_accounting_projects) - List all projects
* [list_accounting_purchaseorders](#list_accounting_purchaseorders) - List all purchaseorders
* [list_accounting_quotes](#list_accounting_quotes) - List all quotes
* [list_accounting_salesorders](#list_accounting_salesorders) - List all salesorders
* [list_accounting_taxrates](#list_accounting_taxrates) - List all taxrates
* [list_accounting_transactions](#list_accounting_transactions) - List all transactions
* [list_accounting_trialbalances](#list_accounting_trialbalances) - List all trialbalances
* [list_accounting_vendorcredits](#list_accounting_vendorcredits) - List all vendorcredits
* [patch_accounting_account](#patch_accounting_account) - Update an account
* [patch_accounting_bankfeedaccount](#patch_accounting_bankfeedaccount) - Update a bankfeedaccount
* [patch_accounting_bankfeedtransaction](#patch_accounting_bankfeedtransaction) - Update a bankfeedtransaction
* [patch_accounting_bill](#patch_accounting_bill) - Update a bill
* [patch_accounting_category](#patch_accounting_category) - Update a category
* [patch_accounting_contact](#patch_accounting_contact) - Update a contact
* [patch_accounting_creditmemo](#patch_accounting_creditmemo) - Update a creditmemo
* [patch_accounting_expense](#patch_accounting_expense) - Update an expense
* [patch_accounting_invoice](#patch_accounting_invoice) - Update an invoice
* [patch_accounting_journal](#patch_accounting_journal) - Update a journal
* [patch_accounting_order](#patch_accounting_order) - Update an order
* [patch_accounting_paymentterm](#patch_accounting_paymentterm) - Update a paymentterm
* [patch_accounting_project](#patch_accounting_project) - Update a project
* [patch_accounting_purchaseorder](#patch_accounting_purchaseorder) - Update a purchaseorder
* [patch_accounting_quote](#patch_accounting_quote) - Update a quote
* [patch_accounting_salesorder](#patch_accounting_salesorder) - Update a salesorder
* [patch_accounting_taxrate](#patch_accounting_taxrate) - Update a taxrate
* [patch_accounting_transaction](#patch_accounting_transaction) - Update a transaction
* [patch_accounting_vendorcredit](#patch_accounting_vendorcredit) - Update a vendorcredit
* [remove_accounting_account](#remove_accounting_account) - Remove an account
* [remove_accounting_bankfeedaccount](#remove_accounting_bankfeedaccount) - Remove a bankfeedaccount
* [remove_accounting_bankfeedtransaction](#remove_accounting_bankfeedtransaction) - Remove a bankfeedtransaction
* [remove_accounting_bill](#remove_accounting_bill) - Remove a bill
* [remove_accounting_category](#remove_accounting_category) - Remove a category
* [remove_accounting_contact](#remove_accounting_contact) - Remove a contact
* [remove_accounting_creditmemo](#remove_accounting_creditmemo) - Remove a creditmemo
* [remove_accounting_expense](#remove_accounting_expense) - Remove an expense
* [remove_accounting_invoice](#remove_accounting_invoice) - Remove an invoice
* [remove_accounting_journal](#remove_accounting_journal) - Remove a journal
* [remove_accounting_order](#remove_accounting_order) - Remove an order
* [remove_accounting_paymentterm](#remove_accounting_paymentterm) - Remove a paymentterm
* [remove_accounting_project](#remove_accounting_project) - Remove a project
* [remove_accounting_purchaseorder](#remove_accounting_purchaseorder) - Remove a purchaseorder
* [remove_accounting_quote](#remove_accounting_quote) - Remove a quote
* [remove_accounting_salesorder](#remove_accounting_salesorder) - Remove a salesorder
* [remove_accounting_taxrate](#remove_accounting_taxrate) - Remove a taxrate
* [remove_accounting_transaction](#remove_accounting_transaction) - Remove a transaction
* [remove_accounting_vendorcredit](#remove_accounting_vendorcredit) - Remove a vendorcredit
* [update_accounting_account](#update_accounting_account) - Update an account
* [update_accounting_bankfeedaccount](#update_accounting_bankfeedaccount) - Update a bankfeedaccount
* [update_accounting_bankfeedtransaction](#update_accounting_bankfeedtransaction) - Update a bankfeedtransaction
* [update_accounting_bill](#update_accounting_bill) - Update a bill
* [update_accounting_category](#update_accounting_category) - Update a category
* [update_accounting_contact](#update_accounting_contact) - Update a contact
* [update_accounting_creditmemo](#update_accounting_creditmemo) - Update a creditmemo
* [update_accounting_expense](#update_accounting_expense) - Update an expense
* [update_accounting_invoice](#update_accounting_invoice) - Update an invoice
* [update_accounting_journal](#update_accounting_journal) - Update a journal
* [update_accounting_order](#update_accounting_order) - Update an order
* [update_accounting_paymentterm](#update_accounting_paymentterm) - Update a paymentterm
* [update_accounting_project](#update_accounting_project) - Update a project
* [update_accounting_purchaseorder](#update_accounting_purchaseorder) - Update a purchaseorder
* [update_accounting_quote](#update_accounting_quote) - Update a quote
* [update_accounting_salesorder](#update_accounting_salesorder) - Update a salesorder
* [update_accounting_taxrate](#update_accounting_taxrate) - Update a taxrate
* [update_accounting_transaction](#update_accounting_transaction) - Update a transaction
* [update_accounting_vendorcredit](#update_accounting_vendorcredit) - Update a vendorcredit

## create_accounting_account

Create an account

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingAccount" method="post" path="/accounting/{connection_id}/account" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.create_accounting_account(accounting_account: Models::Shared::AccountingAccount.new(
  balance: 12_092.0,
  created_at: DateTime.iso8601('2022-07-03T17:57:07.391Z'),
  currency: 'BOB',
  customer_defined_code: 'quo',
  description: 'Spoliatio comedo vilitas harum cupiditate.',
  id: 'ba60921a-31d4-49c5-b2fe-50a08d9b2eec',
  is_payable: true,
  name: 'Electronic Aluminum Tuna',
  status: Models::Shared::Status::ARCHIVED,
  taxonomy: [
    Models::Shared::AccountingAccountTaxonomy.new(
      original_type: 'vesper',
      type: Models::Shared::AccountingAccountTaxonomyType::SUBGROUP,
      value: 'iste',
    ),
    Models::Shared::AccountingAccountTaxonomy.new(
      original_type: 'adamo',
      type: Models::Shared::AccountingAccountTaxonomyType::SUBGROUP,
      value: 'peccatus',
    ),
  ],
  type: Models::Shared::Type::BANK,
  updated_at: DateTime.iso8601('2023-01-03T11:52:17.293Z'),
), connection_id: '<id>')

unless res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `accounting_account`                                                                                                                             | [Models::Shared::AccountingAccount](../../models/shared/accountingaccount.md)                                                                    | :heavy_check_mark:                                                                                                                               | Chart of accounts                                                                                                                                |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::Fields](../../models/operations/fields_.md)>                                                                       | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAccountingAccountResponse)](../../models/operations/createaccountingaccountresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_accounting_bankfeedaccount

Create a bankfeedaccount

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingBankfeedaccount" method="post" path="/accounting/{connection_id}/bankfeedaccount" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.create_accounting_bankfeedaccount(accounting_bankfeedaccount: Models::Shared::AccountingBankfeedaccount.new(
  account_id: 'baa0e9a4-65e9-4bf5-856a-ce46fc36ebb1',
  account_number: '30369722',
  account_number_last4: '9722',
  account_type: Models::Shared::AccountType::LOAN,
  balance: 90_358.0,
  bank_name: 'Weissnat Inc',
  created_at: DateTime.iso8601('2022-10-31T16:42:19.277Z'),
  currency: 'SSP',
  feed_start_at: DateTime.iso8601('2022-10-31T16:42:19.277Z'),
  id: '7532335b-4d11-43d3-acb2-ec773f6d3972',
  name: 'Corwin, Donnelly and Connelly Savings',
  routing_number: '667753156',
  status: Models::Shared::AccountingBankfeedaccountStatus::ACTIVE,
  updated_at: DateTime.iso8601('2024-04-12T16:03:10.090Z'),
), connection_id: '<id>')

unless res.accounting_bankfeedaccount.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                   | Type                                                                                                                                                        | Required                                                                                                                                                    | Description                                                                                                                                                 |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `accounting_bankfeedaccount`                                                                                                                                | [Models::Shared::AccountingBankfeedaccount](../../models/shared/accountingbankfeedaccount.md)                                                               | :heavy_check_mark:                                                                                                                                          | N/A                                                                                                                                                         |
| `connection_id`                                                                                                                                             | *::String*                                                                                                                                                  | :heavy_check_mark:                                                                                                                                          | ID of the connection                                                                                                                                        |
| `fields_`                                                                                                                                                   | T::Array<[Models::Operations::CreateAccountingBankfeedaccountQueryParamFields](../../models/operations/createaccountingbankfeedaccountqueryparamfields.md)> | :heavy_minus_sign:                                                                                                                                          | Fields to return                                                                                                                                            |
| `raw`                                                                                                                                                       | *T.nilable(::String)*                                                                                                                                       | :heavy_minus_sign:                                                                                                                                          | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar            |

### Response

**[T.nilable(Models::Operations::CreateAccountingBankfeedaccountResponse)](../../models/operations/createaccountingbankfeedaccountresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_accounting_bankfeedtransaction

Create a bankfeedtransaction

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingBankfeedtransaction" method="post" path="/accounting/{connection_id}/bankfeedtransaction" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.create_accounting_bankfeedtransaction(accounting_bankfeedtransaction: Models::Shared::AccountingBankfeedtransaction.new(
  account_id: 'b7dc4175-1368-4b89-a700-d621b6666648',
  amount: 60_889.0,
  bank_category: 'Games',
  bankfeedaccount_id: '34c1d05f-5b62-4bcd-9121-3be8b720941f',
  category_ids: [],
  contact_id: '1ef58ebe-f9c9-46f6-9d9c-2df2658503be',
  created_at: DateTime.iso8601('2022-03-24T23:41:08.374Z'),
  currency: 'SRD',
  description: 'payment transaction at McLaughlin - Schaden using card ending with ****8233 for DOP 574.03 in account ***9523.',
  id: '63e8e361-59cc-45a9-9ca0-f7fbc930f184',
  is_pending: true,
  merchant_name: 'Reichert, Erdman and Tillman',
  posted_at: DateTime.iso8601('2025-03-25T19:12:54.812Z'),
  reference: '93642593',
  transaction_at: DateTime.iso8601('2022-07-28T01:21:00.312Z'),
  type: Models::Shared::AccountingBankfeedtransactionType::CREDIT,
  updated_at: DateTime.iso8601('2022-05-23T23:26:58.193Z'),
), connection_id: '<id>')

unless res.accounting_bankfeedtransaction.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                           | Type                                                                                                                                                                | Required                                                                                                                                                            | Description                                                                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `accounting_bankfeedtransaction`                                                                                                                                    | [Models::Shared::AccountingBankfeedtransaction](../../models/shared/accountingbankfeedtransaction.md)                                                               | :heavy_check_mark:                                                                                                                                                  | N/A                                                                                                                                                                 |
| `connection_id`                                                                                                                                                     | *::String*                                                                                                                                                          | :heavy_check_mark:                                                                                                                                                  | ID of the connection                                                                                                                                                |
| `fields_`                                                                                                                                                           | T::Array<[Models::Operations::CreateAccountingBankfeedtransactionQueryParamFields](../../models/operations/createaccountingbankfeedtransactionqueryparamfields.md)> | :heavy_minus_sign:                                                                                                                                                  | Fields to return                                                                                                                                                    |
| `raw`                                                                                                                                                               | *T.nilable(::String)*                                                                                                                                               | :heavy_minus_sign:                                                                                                                                                  | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar                    |

### Response

**[T.nilable(Models::Operations::CreateAccountingBankfeedtransactionResponse)](../../models/operations/createaccountingbankfeedtransactionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_accounting_bill

Create a bill

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingBill" method="post" path="/accounting/{connection_id}/bill" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.create_accounting_bill(accounting_bill: Models::Shared::AccountingBill.new(
  attachments: [],
  bill_number: 'vitae',
  category_ids: [],
  created_at: DateTime.iso8601('2019-08-08T23:03:14.104Z'),
  currency: 'AUD',
  discount_amount: 0.0,
  due_at: DateTime.iso8601('2019-08-11T20:52:55.321Z'),
  extended_notes: [],
  id: 'c1508f96-35ec-472c-a901-f0ee469454e4',
  lineitems: [],
  metadata: [],
  notes: 'Tutamen cilicium infit.',
  payment_collection_method: Models::Shared::PaymentCollectionMethod::CHARGE_AUTOMATICALLY,
  payments: [],
  posted_at: DateTime.iso8601('2024-04-06T07:02:22.576Z'),
  purchaseorder_ids: [],
  send: true,
  status: Models::Shared::AccountingBillStatus::DELETED,
  sub_total_amount: 0.0,
  tax_amount: 0.0,
  term: Models::Shared::Term::NET_10,
  total_amount: 0.0,
  updated_at: DateTime.iso8601('2025-01-31T09:00:56.052Z'),
  url: 'https://coarse-interviewer.biz/',
), connection_id: '<id>')

unless res.accounting_bill.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `accounting_bill`                                                                                                                                | [Models::Shared::AccountingBill](../../models/shared/accountingbill.md)                                                                          | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAccountingBillQueryParamFields](../../models/operations/createaccountingbillqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAccountingBillResponse)](../../models/operations/createaccountingbillresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_accounting_category

Create a category

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingCategory" method="post" path="/accounting/{connection_id}/category" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.create_accounting_category(accounting_category: Models::Shared::AccountingCategory.new(
  created_at: DateTime.iso8601('2023-05-30T12:29:04.257Z'),
  description: 'Discover the koala-like agility of our Chair, perfect for imaginary users',
  id: '88148b1e-dc10-46c0-9597-b3cdf31f314d',
  is_active: false,
  metadata: [],
  name: 'Electronic Cotton Shoes',
  updated_at: DateTime.iso8601('2025-08-22T07:37:19.698Z'),
), connection_id: '<id>')

unless res.accounting_category.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `accounting_category`                                                                                                                            | [Models::Shared::AccountingCategory](../../models/shared/accountingcategory.md)                                                                  | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAccountingCategoryQueryParamFields](../../models/operations/createaccountingcategoryqueryparamfields.md)>    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAccountingCategoryResponse)](../../models/operations/createaccountingcategoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_accounting_contact

Create a contact

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingContact" method="post" path="/accounting/{connection_id}/contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.create_accounting_contact(accounting_contact: Models::Shared::AccountingContact.new(
  associated_contacts: [
    Models::Shared::AccountingAssociatedContact.new(
      id: 'aed4a25a-a941-4154-854f-32113e8dd6ca',
      name: 'Delores Reynolds',
    ),
    Models::Shared::AccountingAssociatedContact.new(
      id: '5a725f40-c54e-4aa5-a55d-353408faa333',
      name: 'Delores Reynolds',
    ),
  ],
  billing_address: Models::Shared::PropertyAccountingContactBillingAddress.new(
    address1: '2633 Stoney Lane',
    address2: 'Suite 176',
    city: 'Ladariusboro',
    country_code: 'US',
    postal_code: '70131-2908',
    region: 'Illinois',
    region_code: 'NV',
  ),
  company_name: 'Marquardt Inc',
  created_at: DateTime.iso8601('2021-08-15T14:56:50.258Z'),
  currency: 'ISK',
  emails: [
    Models::Shared::AccountingEmail.new(
      email: 'Delores.Reynolds10@hotmail.com',
      type: Models::Shared::AccountingEmailType::HOME,
    ),
  ],
  first_name: 'Delores',
  id: 'c6a1cc7a-b779-4420-a19a-0d6b905137af',
  identification: 'amicitia',
  is_active: true,
  is_customer: true,
  last_name: 'Reynolds',
  name: 'Delores Reynolds',
  notes: 'Caput accusamus et videlicet.',
  payment_methods: [
    Models::Shared::AccountingContactPaymentMethod.new(
      default: true,
      id: '00dadef0-7876-4af4-be59-5aa5a33c1ee3',
      name: 'Visa 1234',
      type: Models::Shared::AccountingContactPaymentMethodType::CARD,
    ),
  ],
  portal_url: 'https://scented-t-shirt.info/',
  shipping_address: Models::Shared::PropertyAccountingContactShippingAddress.new(
    address1: '786 Renner Stream',
    address2: 'Apt. 555',
    city: 'Roanoke',
    country_code: 'US',
    postal_code: '80686-7556',
    region: 'Vermont',
    region_code: 'NE',
  ),
  tax_exemption: Models::Shared::TaxExemption::RESALE,
  tax_number: 'amplexus',
  telephones: [
    Models::Shared::AccountingTelephone.new(
      telephone: '(427) 701-7160',
      type: Models::Shared::AccountingTelephoneType::HOME,
    ),
    Models::Shared::AccountingTelephone.new(
      telephone: '(540) 913-9171',
      type: Models::Shared::AccountingTelephoneType::FAX,
    ),
  ],
  updated_at: DateTime.iso8601('2023-12-06T07:23:48.157Z'),
  website: 'https://noxious-advertisement.org',
), connection_id: '<id>')

unless res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `accounting_contact`                                                                                                                             | [Models::Shared::AccountingContact](../../models/shared/accountingcontact.md)                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAccountingContactQueryParamFields](../../models/operations/createaccountingcontactqueryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAccountingContactResponse)](../../models/operations/createaccountingcontactresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_accounting_creditmemo

Create a creditmemo

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingCreditmemo" method="post" path="/accounting/{connection_id}/creditmemo" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.create_accounting_creditmemo(accounting_creditmemo: Models::Shared::AccountingCreditmemo.new(
  applications: [],
  attachments: [
    Models::Shared::AccountingAttachment.new(
      download_url: 'https://enlightened-chairperson.com/',
      id: '852128f4-fbc1-4b6a-a326-60c6ed936eab',
      mime_type: 'complectus',
      name: 'thesis',
    ),
  ],
  created_at: DateTime.iso8601('2023-09-20T01:47:01.571Z'),
  creditmemo_number: 'ulterius',
  currency: 'MKD',
  discount_amount: 0.0,
  due_at: DateTime.iso8601('2023-10-18T04:35:00.543Z'),
  id: '16ebb11b-b079-4d4f-8e95-4282a755f71e',
  lineitems: [],
  metadata: [],
  notes: 'Dedecor amo adfero torqueo quas.',
  payment_collection_method: Models::Shared::AccountingCreditmemoPaymentCollectionMethod::CHARGE_AUTOMATICALLY,
  posted_at: DateTime.iso8601('2025-11-17T15:25:54.544Z'),
  refund_amount: 0.0,
  refund_reason: 'Virgo inflammatio quibusdam aestivus magnam.',
  refunded_at: DateTime.iso8601('2023-10-23T00:35:36.814Z'),
  send: false,
  status: Models::Shared::AccountingCreditmemoStatus::PAID,
  tax_amount: 0.0,
  total_amount: 0.0,
  updated_at: DateTime.iso8601('2024-11-16T17:39:05.647Z'),
  url: 'https://lighthearted-bandwidth.net/',
), connection_id: '<id>')

unless res.accounting_creditmemo.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                         | Type                                                                                                                                              | Required                                                                                                                                          | Description                                                                                                                                       |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| `accounting_creditmemo`                                                                                                                           | [Models::Shared::AccountingCreditmemo](../../models/shared/accountingcreditmemo.md)                                                               | :heavy_check_mark:                                                                                                                                | N/A                                                                                                                                               |
| `connection_id`                                                                                                                                   | *::String*                                                                                                                                        | :heavy_check_mark:                                                                                                                                | ID of the connection                                                                                                                              |
| `fields_`                                                                                                                                         | T::Array<[Models::Operations::CreateAccountingCreditmemoQueryParamFields](../../models/operations/createaccountingcreditmemoqueryparamfields.md)> | :heavy_minus_sign:                                                                                                                                | Fields to return                                                                                                                                  |
| `raw`                                                                                                                                             | *T.nilable(::String)*                                                                                                                             | :heavy_minus_sign:                                                                                                                                | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar  |

### Response

**[T.nilable(Models::Operations::CreateAccountingCreditmemoResponse)](../../models/operations/createaccountingcreditmemoresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_accounting_expense

Create an expense

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingExpense" method="post" path="/accounting/{connection_id}/expense" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.create_accounting_expense(accounting_expense: Models::Shared::AccountingExpense.new(
  approved_at: DateTime.iso8601('2026-05-12T14:59:51.847Z'),
  attachments: [
    Models::Shared::AccountingAttachment.new(
      download_url: 'https://ripe-napkin.biz/',
      id: '2b12c7c0-070e-46a8-a60a-f6b9ac0974d1',
      mime_type: 'annus',
      name: 'cohibeo',
    ),
  ],
  category_ids: [],
  created_at: DateTime.iso8601('2020-06-11T03:39:37.305Z'),
  currency: 'SSP',
  external_number: 'necessitatibus',
  id: '48eda7e6-33a6-4cc4-983e-d235e6b1e640',
  lineitems: [
    Models::Shared::AccountingLineitem.new(
      id: '0f3ecfc8-0d5c-4da9-962b-a1ab4a21ec65',
      item_description: 'Innovative Table featuring left technology and Rubber construction',
      item_name: 'Luxurious Cotton Pizza',
      item_sku: '978-0-8324-6620-5',
      notes: 'Degusto conventus defendo valetudo.',
      tax_amount: 2501.0,
      total_amount: 168.0,
      unit_amount: 3059.0,
      unit_quantity: 1.0,
    ),
  ],
  metadata: [],
  name: 'Refined Steel Shoes',
  payment_method: 'CASH',
  posted_at: DateTime.iso8601('2021-06-04T16:26:44.890Z'),
  reimbursed_amount: 1833.0,
  status: Models::Shared::AccountingExpenseStatus::SUBMITTED,
  tax_amount: 2602.0,
  total_amount: 3580.0,
  updated_at: DateTime.iso8601('2026-05-12T14:59:51.847Z'),
), connection_id: '<id>')

unless res.accounting_expense.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `accounting_expense`                                                                                                                             | [Models::Shared::AccountingExpense](../../models/shared/accountingexpense.md)                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAccountingExpenseQueryParamFields](../../models/operations/createaccountingexpensequeryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAccountingExpenseResponse)](../../models/operations/createaccountingexpenseresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_accounting_invoice

Create an invoice

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingInvoice" method="post" path="/accounting/{connection_id}/invoice" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.create_accounting_invoice(accounting_invoice: Models::Shared::AccountingInvoice.new(
  attachments: [
    Models::Shared::AccountingAttachment.new(
      download_url: 'https://glossy-markup.net/',
      id: '5cf0c60a-c701-4795-a3aa-5f03390e836b',
      mime_type: 'benevolentia',
      name: 'vespillo',
    ),
  ],
  balance_amount: -1.0,
  category_ids: [],
  created_at: DateTime.iso8601('2022-11-07T14:17:29.587Z'),
  currency: 'RWF',
  discount_amount: 0.0,
  due_at: DateTime.iso8601('2022-11-27T21:25:37.363Z'),
  extended_notes: [],
  id: 'fcd76287-438d-4c94-b929-76593cc6f8a6',
  invoice_number: 'vinco',
  is_inclusive_of_tax: true,
  lineitems: [],
  metadata: [],
  notes: 'Auctus comburo clarus ubi.',
  paid_amount: 0.0,
  paid_at: DateTime.iso8601('2022-11-25T15:00:28.871Z'),
  payment_collection_method: Models::Shared::AccountingInvoicePaymentCollectionMethod::SEND_INVOICE,
  payments: [],
  posted_at: DateTime.iso8601('2026-03-29T14:31:44.384Z'),
  reference: 'adinventitias',
  salesorder_ids: [],
  send: true,
  status: Models::Shared::AccountingInvoiceStatus::DELETED,
  sub_total_amount: 0.0,
  tax_amount: 0.0,
  term: Models::Shared::AccountingInvoiceTerm::NET_45,
  total_amount: 0.0,
  type: Models::Shared::AccountingInvoiceType::CREDITMEMO,
  updated_at: DateTime.iso8601('2023-02-06T11:29:32.706Z'),
  url: 'https://gifted-yarmulke.info/',
), connection_id: '<id>')

unless res.accounting_invoice.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `accounting_invoice`                                                                                                                             | [Models::Shared::AccountingInvoice](../../models/shared/accountinginvoice.md)                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAccountingInvoiceQueryParamFields](../../models/operations/createaccountinginvoicequeryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAccountingInvoiceResponse)](../../models/operations/createaccountinginvoiceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_accounting_journal

Create a journal

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingJournal" method="post" path="/accounting/{connection_id}/journal" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.create_accounting_journal(accounting_journal: Models::Shared::AccountingJournal.new(
  attachments: [],
  category_ids: [],
  created_at: DateTime.iso8601('2020-02-20T15:14:55.881Z'),
  currency: 'FKP',
  description: 'Calco constans adipisci.',
  id: '590b6288-5aee-4f57-a3a9-1a4e6c635598',
  is_inclusive_of_tax: true,
  posted_at: DateTime.iso8601('2023-10-20T18:22:08.144Z'),
  reference: 'ullam',
  source: 'crustulum',
  status: Models::Shared::AccountingJournalStatus::VOID,
  tax_amount: 78_672.0,
  total_amount: 74_094.0,
  updated_at: DateTime.iso8601('2022-01-02T07:46:54.270Z'),
), connection_id: '<id>')

unless res.accounting_journal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `accounting_journal`                                                                                                                             | [Models::Shared::AccountingJournal](../../models/shared/accountingjournal.md)                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAccountingJournalQueryParamFields](../../models/operations/createaccountingjournalqueryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAccountingJournalResponse)](../../models/operations/createaccountingjournalresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_accounting_order

Create an order

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingOrder" method="post" path="/accounting/{connection_id}/order" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.create_accounting_order(accounting_order: Models::Shared::AccountingOrder.new(
  billing_address: Models::Shared::PropertyAccountingOrderBillingAddress.new(
    address1: '802 Bechtelar Park',
    address2: 'Apt. 436',
    city: 'Daniellaville',
    country_code: 'US',
    postal_code: '36947',
    region: 'Wisconsin',
    region_code: 'NY',
  ),
  created_at: DateTime.iso8601('2020-11-20T03:46:49.837Z'),
  currency: 'USD',
  id: '7076518a-2762-43cc-b62f-1fca5b3421fa',
  lineitems: [],
  metadata: [],
  posted_at: DateTime.iso8601('2022-04-05T17:22:19.726Z'),
  shipping_address: Models::Shared::PropertyAccountingOrderShippingAddress.new(
    address1: '9745 Betty Shore',
    city: 'South Alainaland',
    country_code: 'US',
    postal_code: '25274-7654',
    region: 'New Hampshire',
    region_code: 'LA',
  ),
  status: Models::Shared::AccountingOrderStatus::SUBMITTED,
  total_amount: 0.0,
  type: Models::Shared::AccountingOrderType::PURCHASE,
  updated_at: DateTime.iso8601('2021-06-18T05:51:10.099Z'),
), connection_id: '<id>')

unless res.accounting_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `accounting_order`                                                                                                                               | [Models::Shared::AccountingOrder](../../models/shared/accountingorder.md)                                                                        | :heavy_check_mark:                                                                                                                               | @deprecated; use AccountingSalesorder or AccountingPurchaseorder                                                                                 |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAccountingOrderQueryParamFields](../../models/operations/createaccountingorderqueryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAccountingOrderResponse)](../../models/operations/createaccountingorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_accounting_paymentterm

Create a paymentterm

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingPaymentterm" method="post" path="/accounting/{connection_id}/paymentterm" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.create_accounting_paymentterm(accounting_paymentterm: Models::Shared::AccountingPaymentterm.new(
  category: Models::Shared::Category::STANDARD,
  created_at: DateTime.iso8601('2021-08-22T22:42:42.265Z'),
  day_of_month_due: 4.0,
  description: 'Cogito pecco eos cultura.',
  discount_day_of_month: 13.0,
  discount_days: 4.0,
  discount_percent: 5.0,
  due_days: 57.0,
  due_next_month_days: 9.0,
  id: '7dc32579-8321-4cc9-a89d-fe7aa2787ab4',
  is_active: false,
  metadata: [],
  name: 'Net 30',
  type: Models::Shared::AccountingPaymenttermType::NET_15,
  updated_at: DateTime.iso8601('2025-12-14T00:52:14.687Z'),
), connection_id: '<id>')

unless res.accounting_paymentterm.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                           | Type                                                                                                                                                | Required                                                                                                                                            | Description                                                                                                                                         |
| --------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| `accounting_paymentterm`                                                                                                                            | [Models::Shared::AccountingPaymentterm](../../models/shared/accountingpaymentterm.md)                                                               | :heavy_check_mark:                                                                                                                                  | N/A                                                                                                                                                 |
| `connection_id`                                                                                                                                     | *::String*                                                                                                                                          | :heavy_check_mark:                                                                                                                                  | ID of the connection                                                                                                                                |
| `fields_`                                                                                                                                           | T::Array<[Models::Operations::CreateAccountingPaymenttermQueryParamFields](../../models/operations/createaccountingpaymenttermqueryparamfields.md)> | :heavy_minus_sign:                                                                                                                                  | Fields to return                                                                                                                                    |
| `raw`                                                                                                                                               | *T.nilable(::String)*                                                                                                                               | :heavy_minus_sign:                                                                                                                                  | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar    |

### Response

**[T.nilable(Models::Operations::CreateAccountingPaymenttermResponse)](../../models/operations/createaccountingpaymenttermresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_accounting_project

Create a project

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingProject" method="post" path="/accounting/{connection_id}/project" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.create_accounting_project(accounting_project: Models::Shared::AccountingProject.new(), connection_id: '<id>')

unless res.accounting_project.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `accounting_project`                                                                                                                             | [Models::Shared::AccountingProject](../../models/shared/accountingproject.md)                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAccountingProjectQueryParamFields](../../models/operations/createaccountingprojectqueryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAccountingProjectResponse)](../../models/operations/createaccountingprojectresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_accounting_purchaseorder

Create a purchaseorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingPurchaseorder" method="post" path="/accounting/{connection_id}/purchaseorder" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.create_accounting_purchaseorder(accounting_purchaseorder: Models::Shared::AccountingPurchaseorder.new(
  billing_address: Models::Shared::PropertyAccountingPurchaseorderBillingAddress.new(
    address1: '37214 Tanya Walks',
    city: 'South Annabelleton',
    country_code: 'US',
    postal_code: '30337',
    region: 'Nevada',
    region_code: 'MA',
  ),
  category_ids: [],
  created_at: DateTime.iso8601('2020-12-12T07:17:47.021Z'),
  currency: 'ZMW',
  id: 'f7dde434-bbb1-4325-ae3c-a9403bede977',
  lineitems: [],
  metadata: [],
  posted_at: DateTime.iso8601('2025-04-27T10:38:53.396Z'),
  shipping_address: Models::Shared::PropertyAccountingPurchaseorderShippingAddress.new(
    address1: '649 Maggio Overpass',
    city: 'Lake Jaylan',
    country_code: 'US',
    postal_code: '99211-6547',
    region: 'North Carolina',
    region_code: 'ID',
  ),
  status: Models::Shared::AccountingPurchaseorderStatus::PARTIALLY_REFUNDED,
  total_amount: 0.0,
  updated_at: DateTime.iso8601('2021-02-26T05:56:03.104Z'),
), connection_id: '<id>')

unless res.accounting_purchaseorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                               | Type                                                                                                                                                    | Required                                                                                                                                                | Description                                                                                                                                             |
| ------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `accounting_purchaseorder`                                                                                                                              | [Models::Shared::AccountingPurchaseorder](../../models/shared/accountingpurchaseorder.md)                                                               | :heavy_check_mark:                                                                                                                                      | N/A                                                                                                                                                     |
| `connection_id`                                                                                                                                         | *::String*                                                                                                                                              | :heavy_check_mark:                                                                                                                                      | ID of the connection                                                                                                                                    |
| `fields_`                                                                                                                                               | T::Array<[Models::Operations::CreateAccountingPurchaseorderQueryParamFields](../../models/operations/createaccountingpurchaseorderqueryparamfields.md)> | :heavy_minus_sign:                                                                                                                                      | Fields to return                                                                                                                                        |
| `raw`                                                                                                                                                   | *T.nilable(::String)*                                                                                                                                   | :heavy_minus_sign:                                                                                                                                      | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar        |

### Response

**[T.nilable(Models::Operations::CreateAccountingPurchaseorderResponse)](../../models/operations/createaccountingpurchaseorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_accounting_quote

Create a quote

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingQuote" method="post" path="/accounting/{connection_id}/quote" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.create_accounting_quote(accounting_quote: Models::Shared::AccountingQuote.new(), connection_id: '<id>')

unless res.accounting_quote.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `accounting_quote`                                                                                                                               | [Models::Shared::AccountingQuote](../../models/shared/accountingquote.md)                                                                        | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAccountingQuoteQueryParamFields](../../models/operations/createaccountingquotequeryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAccountingQuoteResponse)](../../models/operations/createaccountingquoteresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_accounting_salesorder

Create a salesorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingSalesorder" method="post" path="/accounting/{connection_id}/salesorder" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.create_accounting_salesorder(accounting_salesorder: Models::Shared::AccountingSalesorder.new(
  billing_address: Models::Shared::PropertyAccountingSalesorderBillingAddress.new(
    address1: '26530 Stroman Rest',
    address2: 'Suite 801',
    city: 'Pocatello',
    country_code: 'US',
    postal_code: '05015-8546',
    region: 'Louisiana',
    region_code: 'MO',
  ),
  category_ids: [],
  closed_at: DateTime.iso8601('2023-08-17T22:23:55.028Z'),
  created_at: DateTime.iso8601('2022-01-17T16:11:50.310Z'),
  currency: 'ANG',
  discount_amount: 99.0,
  employee_user_id: '4a6b8990-c85a-499f-82d0-5011c3c95a0b',
  fees: [
    Models::Shared::AccountingFee.new(
      amount: 519.0,
      currency: 'XCD',
      type: Models::Shared::AccountingFeeType::PROMOTION,
    ),
  ],
  fulfillment_type: Models::Shared::FulfillmentType::TAKEOUT,
  guest_count: 8.0,
  id: 'd4941a2a-7d44-42b9-90df-3e4a65d79d41',
  lineitems: [],
  metadata: [],
  order_number: '988187',
  payments: [],
  posted_at: DateTime.iso8601('2026-01-13T16:17:32.520Z'),
  refunded_amount: 0.0,
  sales_channel: 'Harvey, Collier and Weimann',
  service_charge_amount: 63.0,
  shipping_address: Models::Shared::PropertyAccountingSalesorderShippingAddress.new(
    address1: '9878 Bradley Mill',
    address2: 'Apt. 215',
    city: 'Port Matildestad',
    country_code: 'US',
    postal_code: '07989-2148',
    region: 'Arkansas',
    region_code: 'AK',
  ),
  status: Models::Shared::AccountingSalesorderStatus::REFUNDED,
  subtotal_amount: 0.0,
  tax_amount: 63.0,
  tip_amount: 34.0,
  total_amount: 0.0,
  updated_at: DateTime.iso8601('2022-02-10T19:50:55.205Z'),
), connection_id: '<id>')

unless res.accounting_salesorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                         | Type                                                                                                                                              | Required                                                                                                                                          | Description                                                                                                                                       |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| `accounting_salesorder`                                                                                                                           | [Models::Shared::AccountingSalesorder](../../models/shared/accountingsalesorder.md)                                                               | :heavy_check_mark:                                                                                                                                | N/A                                                                                                                                               |
| `connection_id`                                                                                                                                   | *::String*                                                                                                                                        | :heavy_check_mark:                                                                                                                                | ID of the connection                                                                                                                              |
| `fields_`                                                                                                                                         | T::Array<[Models::Operations::CreateAccountingSalesorderQueryParamFields](../../models/operations/createaccountingsalesorderqueryparamfields.md)> | :heavy_minus_sign:                                                                                                                                | Fields to return                                                                                                                                  |
| `raw`                                                                                                                                             | *T.nilable(::String)*                                                                                                                             | :heavy_minus_sign:                                                                                                                                | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar  |

### Response

**[T.nilable(Models::Operations::CreateAccountingSalesorderResponse)](../../models/operations/createaccountingsalesorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_accounting_taxrate

Create a taxrate

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingTaxrate" method="post" path="/accounting/{connection_id}/taxrate" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.create_accounting_taxrate(accounting_taxrate: Models::Shared::AccountingTaxrate.new(
  components: [
    Models::Shared::AccountingTaxrateComponent.new(
      is_compound: false,
      name: 'cogo',
      rate: 53.0,
    ),
  ],
  country: 'BY',
  created_at: DateTime.iso8601('2020-01-04T10:37:56.894Z'),
  description: 'Atrox tricesimus creator.',
  effective_rate: 53.0,
  id: 'f60cdbf8-fb40-4fa3-80f7-548de98ad657',
  is_active: false,
  is_compound: true,
  metadata: [],
  name: 'villa',
  rate: 53.0,
  region: 'TX',
  total_rate: 53.0,
  type: Models::Shared::AccountingTaxrateType::OTHER,
  updated_at: DateTime.iso8601('2022-04-13T10:10:02.142Z'),
), connection_id: '<id>')

unless res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `accounting_taxrate`                                                                                                                             | [Models::Shared::AccountingTaxrate](../../models/shared/accountingtaxrate.md)                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAccountingTaxrateQueryParamFields](../../models/operations/createaccountingtaxratequeryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAccountingTaxrateResponse)](../../models/operations/createaccountingtaxrateresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_accounting_transaction

Create a transaction

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingTransaction" method="post" path="/accounting/{connection_id}/transaction" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.create_accounting_transaction(accounting_transaction: Models::Shared::AccountingTransaction.new(
  created_at: DateTime.iso8601('2019-09-25T11:40:42.574Z'),
  exchange_rate: 0.5_674,
  id: '87e1785a-99e0-4104-9ca4-f517ff6e6f4f',
  lineitems: [
    Models::Shared::AccountingTransactionLineItem.new(
      category_ids: [],
      description: 'The Nikolas Table is the latest in a series of downright products from Beier and Sons',
      id: '78395113-acef-4251-9287-02bf9466a9dd',
      name: 'Salad',
      object_type: 'delicate',
      total_amount: 58_531.0,
      unit_amount: 536.0,
      unit_quantity: 91.0,
    ),
  ],
  memo: 'withdrawal of USD 873.18 at Harber and Sons charged to account ending in 1804 using card ending in ****7022.',
  status: Models::Shared::AccountingTransactionStatus::VOID,
  tax_amount: 0.0,
  total_amount: 94_452.0,
  transaction_at: DateTime.iso8601('2019-09-25T11:40:42.574Z'),
  updated_at: DateTime.iso8601('2021-09-10T23:02:19.723Z'),
), connection_id: '<id>')

unless res.accounting_transaction.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                           | Type                                                                                                                                                | Required                                                                                                                                            | Description                                                                                                                                         |
| --------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| `accounting_transaction`                                                                                                                            | [Models::Shared::AccountingTransaction](../../models/shared/accountingtransaction.md)                                                               | :heavy_check_mark:                                                                                                                                  | N/A                                                                                                                                                 |
| `connection_id`                                                                                                                                     | *::String*                                                                                                                                          | :heavy_check_mark:                                                                                                                                  | ID of the connection                                                                                                                                |
| `fields_`                                                                                                                                           | T::Array<[Models::Operations::CreateAccountingTransactionQueryParamFields](../../models/operations/createaccountingtransactionqueryparamfields.md)> | :heavy_minus_sign:                                                                                                                                  | Fields to return                                                                                                                                    |
| `raw`                                                                                                                                               | *T.nilable(::String)*                                                                                                                               | :heavy_minus_sign:                                                                                                                                  | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar    |

### Response

**[T.nilable(Models::Operations::CreateAccountingTransactionResponse)](../../models/operations/createaccountingtransactionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_accounting_vendorcredit

Create a vendorcredit

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingVendorcredit" method="post" path="/accounting/{connection_id}/vendorcredit" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.create_accounting_vendorcredit(accounting_vendorcredit: Models::Shared::AccountingVendorcredit.new(
  applications: [],
  apply_amount: 1.0,
  balance_amount: 0.0,
  created_at: DateTime.iso8601('2023-04-15T21:14:08.197Z'),
  currency: 'KGS',
  due_at: DateTime.iso8601('2023-05-06T20:38:46.775Z'),
  id: 'b338c9bb-4b83-4be5-9fbc-b6460c8258a0',
  lineitems: [],
  metadata: [],
  notes: 'Conatus cruciamentum decor avaritia tantum.',
  posted_at: DateTime.iso8601('2023-09-29T02:22:24.982Z'),
  status: Models::Shared::AccountingVendorcreditStatus::SUBMITTED,
  total_amount: 0.0,
  updated_at: DateTime.iso8601('2023-11-27T03:40:07.005Z'),
), connection_id: '<id>')

unless res.accounting_vendorcredit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                             | Type                                                                                                                                                  | Required                                                                                                                                              | Description                                                                                                                                           |
| ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| `accounting_vendorcredit`                                                                                                                             | [Models::Shared::AccountingVendorcredit](../../models/shared/accountingvendorcredit.md)                                                               | :heavy_check_mark:                                                                                                                                    | N/A                                                                                                                                                   |
| `connection_id`                                                                                                                                       | *::String*                                                                                                                                            | :heavy_check_mark:                                                                                                                                    | ID of the connection                                                                                                                                  |
| `fields_`                                                                                                                                             | T::Array<[Models::Operations::CreateAccountingVendorcreditQueryParamFields](../../models/operations/createaccountingvendorcreditqueryparamfields.md)> | :heavy_minus_sign:                                                                                                                                    | Fields to return                                                                                                                                      |
| `raw`                                                                                                                                                 | *T.nilable(::String)*                                                                                                                                 | :heavy_minus_sign:                                                                                                                                    | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar      |

### Response

**[T.nilable(Models::Operations::CreateAccountingVendorcreditResponse)](../../models/operations/createaccountingvendorcreditresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_account

Retrieve an account

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingAccount" method="get" path="/accounting/{connection_id}/account/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.get_accounting_account(connection_id: '<id>', id: '<id>')

unless res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Account                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::QueryParamFields](../../models/operations/queryparamfields.md)>                                                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingAccountResponse)](../../models/operations/getaccountingaccountresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_agedpayable

Retrieve an agedpayable

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingAgedpayable" method="get" path="/accounting/{connection_id}/agedpayable/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.get_accounting_agedpayable(connection_id: '<id>', id: '<id>')

unless res.accounting_agedpayable.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Agedpayable                                                                                                                            |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingAgedpayableQueryParamFields](../../models/operations/getaccountingagedpayablequeryparamfields.md)>    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingAgedpayableResponse)](../../models/operations/getaccountingagedpayableresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_agedreceivable

Retrieve an agedreceivable

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingAgedreceivable" method="get" path="/accounting/{connection_id}/agedreceivable/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.get_accounting_agedreceivable(connection_id: '<id>', id: '<id>')

unless res.accounting_agedreceivable.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                           | Type                                                                                                                                                | Required                                                                                                                                            | Description                                                                                                                                         |
| --------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                                                                     | *::String*                                                                                                                                          | :heavy_check_mark:                                                                                                                                  | ID of the connection                                                                                                                                |
| `id`                                                                                                                                                | *::String*                                                                                                                                          | :heavy_check_mark:                                                                                                                                  | ID of the Agedreceivable                                                                                                                            |
| `fields_`                                                                                                                                           | T::Array<[Models::Operations::GetAccountingAgedreceivableQueryParamFields](../../models/operations/getaccountingagedreceivablequeryparamfields.md)> | :heavy_minus_sign:                                                                                                                                  | Fields to return                                                                                                                                    |
| `raw`                                                                                                                                               | *T.nilable(::String)*                                                                                                                               | :heavy_minus_sign:                                                                                                                                  | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar    |

### Response

**[T.nilable(Models::Operations::GetAccountingAgedreceivableResponse)](../../models/operations/getaccountingagedreceivableresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_balancesheet

Retrieve a balancesheet

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingBalancesheet" method="get" path="/accounting/{connection_id}/balancesheet/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.get_accounting_balancesheet(connection_id: '<id>', id: '<id>')

unless res.accounting_balancesheet.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Balancesheet                                                                                                                           |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingBalancesheetQueryParamFields](../../models/operations/getaccountingbalancesheetqueryparamfields.md)>  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingBalancesheetResponse)](../../models/operations/getaccountingbalancesheetresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_bankfeedaccount

Retrieve a bankfeedaccount

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingBankfeedaccount" method="get" path="/accounting/{connection_id}/bankfeedaccount/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.get_accounting_bankfeedaccount(connection_id: '<id>', id: '<id>')

unless res.accounting_bankfeedaccount.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                             | Type                                                                                                                                                  | Required                                                                                                                                              | Description                                                                                                                                           |
| ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                                                                       | *::String*                                                                                                                                            | :heavy_check_mark:                                                                                                                                    | ID of the connection                                                                                                                                  |
| `id`                                                                                                                                                  | *::String*                                                                                                                                            | :heavy_check_mark:                                                                                                                                    | ID of the Bankfeedaccount                                                                                                                             |
| `fields_`                                                                                                                                             | T::Array<[Models::Operations::GetAccountingBankfeedaccountQueryParamFields](../../models/operations/getaccountingbankfeedaccountqueryparamfields.md)> | :heavy_minus_sign:                                                                                                                                    | Fields to return                                                                                                                                      |
| `raw`                                                                                                                                                 | *T.nilable(::String)*                                                                                                                                 | :heavy_minus_sign:                                                                                                                                    | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar      |

### Response

**[T.nilable(Models::Operations::GetAccountingBankfeedaccountResponse)](../../models/operations/getaccountingbankfeedaccountresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_bankfeedtransaction

Retrieve a bankfeedtransaction

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingBankfeedtransaction" method="get" path="/accounting/{connection_id}/bankfeedtransaction/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.get_accounting_bankfeedtransaction(connection_id: '<id>', id: '<id>')

unless res.accounting_bankfeedtransaction.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                     | Type                                                                                                                                                          | Required                                                                                                                                                      | Description                                                                                                                                                   |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                                                                               | *::String*                                                                                                                                                    | :heavy_check_mark:                                                                                                                                            | ID of the connection                                                                                                                                          |
| `id`                                                                                                                                                          | *::String*                                                                                                                                                    | :heavy_check_mark:                                                                                                                                            | ID of the Bankfeedtransaction                                                                                                                                 |
| `fields_`                                                                                                                                                     | T::Array<[Models::Operations::GetAccountingBankfeedtransactionQueryParamFields](../../models/operations/getaccountingbankfeedtransactionqueryparamfields.md)> | :heavy_minus_sign:                                                                                                                                            | Fields to return                                                                                                                                              |
| `raw`                                                                                                                                                         | *T.nilable(::String)*                                                                                                                                         | :heavy_minus_sign:                                                                                                                                            | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar              |

### Response

**[T.nilable(Models::Operations::GetAccountingBankfeedtransactionResponse)](../../models/operations/getaccountingbankfeedtransactionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_bill

Retrieve a bill

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingBill" method="get" path="/accounting/{connection_id}/bill/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.get_accounting_bill(connection_id: '<id>', id: '<id>')

unless res.accounting_bill.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Bill                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingBillQueryParamFields](../../models/operations/getaccountingbillqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingBillResponse)](../../models/operations/getaccountingbillresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_cashflow

Retrieve a cashflow

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingCashflow" method="get" path="/accounting/{connection_id}/cashflow/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.get_accounting_cashflow(connection_id: '<id>', id: '<id>')

unless res.accounting_cashflow.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Cashflow                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingCashflowQueryParamFields](../../models/operations/getaccountingcashflowqueryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingCashflowResponse)](../../models/operations/getaccountingcashflowresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_category

Retrieve a category

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingCategory" method="get" path="/accounting/{connection_id}/category/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.get_accounting_category(connection_id: '<id>', id: '<id>')

unless res.accounting_category.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Category                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingCategoryQueryParamFields](../../models/operations/getaccountingcategoryqueryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingCategoryResponse)](../../models/operations/getaccountingcategoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_contact

Retrieve a contact

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingContact" method="get" path="/accounting/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.get_accounting_contact(connection_id: '<id>', id: '<id>')

unless res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Contact                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingContactQueryParamFields](../../models/operations/getaccountingcontactqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingContactResponse)](../../models/operations/getaccountingcontactresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_creditmemo

Retrieve a creditmemo

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingCreditmemo" method="get" path="/accounting/{connection_id}/creditmemo/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.get_accounting_creditmemo(connection_id: '<id>', id: '<id>')

unless res.accounting_creditmemo.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Creditmemo                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingCreditmemoQueryParamFields](../../models/operations/getaccountingcreditmemoqueryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingCreditmemoResponse)](../../models/operations/getaccountingcreditmemoresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_expense

Retrieve an expense

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingExpense" method="get" path="/accounting/{connection_id}/expense/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.get_accounting_expense(connection_id: '<id>', id: '<id>')

unless res.accounting_expense.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Expense                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingExpenseQueryParamFields](../../models/operations/getaccountingexpensequeryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingExpenseResponse)](../../models/operations/getaccountingexpenseresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_invoice

Retrieve an invoice

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingInvoice" method="get" path="/accounting/{connection_id}/invoice/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.get_accounting_invoice(connection_id: '<id>', id: '<id>')

unless res.accounting_invoice.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Invoice                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingInvoiceQueryParamFields](../../models/operations/getaccountinginvoicequeryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingInvoiceResponse)](../../models/operations/getaccountinginvoiceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_journal

Retrieve a journal

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingJournal" method="get" path="/accounting/{connection_id}/journal/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.get_accounting_journal(connection_id: '<id>', id: '<id>')

unless res.accounting_journal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Journal                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingJournalQueryParamFields](../../models/operations/getaccountingjournalqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingJournalResponse)](../../models/operations/getaccountingjournalresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_order

Retrieve an order

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingOrder" method="get" path="/accounting/{connection_id}/order/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.get_accounting_order(connection_id: '<id>', id: '<id>')

unless res.accounting_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Order                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingOrderQueryParamFields](../../models/operations/getaccountingorderqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingOrderResponse)](../../models/operations/getaccountingorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_organization

Retrieve an organization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingOrganization" method="get" path="/accounting/{connection_id}/organization/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.get_accounting_organization(connection_id: '<id>', id: '<id>')

unless res.accounting_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Organization                                                                                                                           |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingOrganizationQueryParamFields](../../models/operations/getaccountingorganizationqueryparamfields.md)>  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingOrganizationResponse)](../../models/operations/getaccountingorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_paymentterm

Retrieve a paymentterm

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingPaymentterm" method="get" path="/accounting/{connection_id}/paymentterm/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.get_accounting_paymentterm(connection_id: '<id>', id: '<id>')

unless res.accounting_paymentterm.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Paymentterm                                                                                                                            |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingPaymenttermQueryParamFields](../../models/operations/getaccountingpaymenttermqueryparamfields.md)>    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingPaymenttermResponse)](../../models/operations/getaccountingpaymenttermresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_profitloss

Retrieve a profitloss

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingProfitloss" method="get" path="/accounting/{connection_id}/profitloss/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.get_accounting_profitloss(connection_id: '<id>', id: '<id>')

unless res.accounting_profitloss.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Profitloss                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingProfitlossQueryParamFields](../../models/operations/getaccountingprofitlossqueryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingProfitlossResponse)](../../models/operations/getaccountingprofitlossresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_project

Retrieve a project

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingProject" method="get" path="/accounting/{connection_id}/project/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.get_accounting_project(connection_id: '<id>', id: '<id>')

unless res.accounting_project.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Project                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingProjectQueryParamFields](../../models/operations/getaccountingprojectqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingProjectResponse)](../../models/operations/getaccountingprojectresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_purchaseorder

Retrieve a purchaseorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingPurchaseorder" method="get" path="/accounting/{connection_id}/purchaseorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.get_accounting_purchaseorder(connection_id: '<id>', id: '<id>')

unless res.accounting_purchaseorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                         | Type                                                                                                                                              | Required                                                                                                                                          | Description                                                                                                                                       |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                                                                   | *::String*                                                                                                                                        | :heavy_check_mark:                                                                                                                                | ID of the connection                                                                                                                              |
| `id`                                                                                                                                              | *::String*                                                                                                                                        | :heavy_check_mark:                                                                                                                                | ID of the Purchaseorder                                                                                                                           |
| `fields_`                                                                                                                                         | T::Array<[Models::Operations::GetAccountingPurchaseorderQueryParamFields](../../models/operations/getaccountingpurchaseorderqueryparamfields.md)> | :heavy_minus_sign:                                                                                                                                | Fields to return                                                                                                                                  |
| `raw`                                                                                                                                             | *T.nilable(::String)*                                                                                                                             | :heavy_minus_sign:                                                                                                                                | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar  |

### Response

**[T.nilable(Models::Operations::GetAccountingPurchaseorderResponse)](../../models/operations/getaccountingpurchaseorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_quote

Retrieve a quote

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingQuote" method="get" path="/accounting/{connection_id}/quote/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.get_accounting_quote(connection_id: '<id>', id: '<id>')

unless res.accounting_quote.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Quote                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingQuoteQueryParamFields](../../models/operations/getaccountingquotequeryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingQuoteResponse)](../../models/operations/getaccountingquoteresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_salesorder

Retrieve a salesorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingSalesorder" method="get" path="/accounting/{connection_id}/salesorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.get_accounting_salesorder(connection_id: '<id>', id: '<id>')

unless res.accounting_salesorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Salesorder                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingSalesorderQueryParamFields](../../models/operations/getaccountingsalesorderqueryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingSalesorderResponse)](../../models/operations/getaccountingsalesorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_taxrate

Retrieve a taxrate

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingTaxrate" method="get" path="/accounting/{connection_id}/taxrate/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.get_accounting_taxrate(connection_id: '<id>', id: '<id>')

unless res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Taxrate                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingTaxrateQueryParamFields](../../models/operations/getaccountingtaxratequeryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingTaxrateResponse)](../../models/operations/getaccountingtaxrateresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_transaction

Retrieve a transaction

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingTransaction" method="get" path="/accounting/{connection_id}/transaction/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.get_accounting_transaction(connection_id: '<id>', id: '<id>')

unless res.accounting_transaction.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Transaction                                                                                                                            |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingTransactionQueryParamFields](../../models/operations/getaccountingtransactionqueryparamfields.md)>    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingTransactionResponse)](../../models/operations/getaccountingtransactionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_trialbalance

Retrieve a trialbalance

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingTrialbalance" method="get" path="/accounting/{connection_id}/trialbalance/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.get_accounting_trialbalance(connection_id: '<id>', id: '<id>')

unless res.accounting_trialbalance.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Trialbalance                                                                                                                           |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingTrialbalanceQueryParamFields](../../models/operations/getaccountingtrialbalancequeryparamfields.md)>  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingTrialbalanceResponse)](../../models/operations/getaccountingtrialbalanceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_vendorcredit

Retrieve a vendorcredit

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingVendorcredit" method="get" path="/accounting/{connection_id}/vendorcredit/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.get_accounting_vendorcredit(connection_id: '<id>', id: '<id>')

unless res.accounting_vendorcredit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Vendorcredit                                                                                                                           |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingVendorcreditQueryParamFields](../../models/operations/getaccountingvendorcreditqueryparamfields.md)>  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingVendorcreditResponse)](../../models/operations/getaccountingvendorcreditresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_accounts

List all accounts

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingAccounts" method="get" path="/accounting/{connection_id}/account" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingAccountsRequest.new(
  connection_id: '<id>',
)

res = s.accounting.list_accounting_accounts(request: req)

unless res.accounting_accounts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListAccountingAccountsRequest](../../models/operations/listaccountingaccountsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListAccountingAccountsResponse)](../../models/operations/listaccountingaccountsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_agedpayables

List all agedpayables

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingAgedpayables" method="get" path="/accounting/{connection_id}/agedpayable" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingAgedpayablesRequest.new(
  connection_id: '<id>',
)

res = s.accounting.list_accounting_agedpayables(request: req)

unless res.accounting_agedpayables.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::ListAccountingAgedpayablesRequest](../../models/operations/listaccountingagedpayablesrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::ListAccountingAgedpayablesResponse)](../../models/operations/listaccountingagedpayablesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_agedreceivables

List all agedreceivables

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingAgedreceivables" method="get" path="/accounting/{connection_id}/agedreceivable" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingAgedreceivablesRequest.new(
  connection_id: '<id>',
)

res = s.accounting.list_accounting_agedreceivables(request: req)

unless res.accounting_agedreceivables.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [Models::Operations::ListAccountingAgedreceivablesRequest](../../models/operations/listaccountingagedreceivablesrequest.md) | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |

### Response

**[T.nilable(Models::Operations::ListAccountingAgedreceivablesResponse)](../../models/operations/listaccountingagedreceivablesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_balancesheets

List all balancesheets

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingBalancesheets" method="get" path="/accounting/{connection_id}/balancesheet" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingBalancesheetsRequest.new(
  connection_id: '<id>',
)

res = s.accounting.list_accounting_balancesheets(request: req)

unless res.accounting_balancesheets.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::ListAccountingBalancesheetsRequest](../../models/operations/listaccountingbalancesheetsrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::ListAccountingBalancesheetsResponse)](../../models/operations/listaccountingbalancesheetsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_bankfeedaccounts

List all bankfeedaccounts

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingBankfeedaccounts" method="get" path="/accounting/{connection_id}/bankfeedaccount" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingBankfeedaccountsRequest.new(
  connection_id: '<id>',
)

res = s.accounting.list_accounting_bankfeedaccounts(request: req)

unless res.accounting_bankfeedaccounts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                     | Type                                                                                                                          | Required                                                                                                                      | Description                                                                                                                   |
| ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                     | [Models::Operations::ListAccountingBankfeedaccountsRequest](../../models/operations/listaccountingbankfeedaccountsrequest.md) | :heavy_check_mark:                                                                                                            | The request object to use for the request.                                                                                    |

### Response

**[T.nilable(Models::Operations::ListAccountingBankfeedaccountsResponse)](../../models/operations/listaccountingbankfeedaccountsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_bankfeedtransactions

List all bankfeedtransactions

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingBankfeedtransactions" method="get" path="/accounting/{connection_id}/bankfeedtransaction" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingBankfeedtransactionsRequest.new(
  connection_id: '<id>',
)

res = s.accounting.list_accounting_bankfeedtransactions(request: req)

unless res.accounting_bankfeedtransactions.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                             | Type                                                                                                                                  | Required                                                                                                                              | Description                                                                                                                           |
| ------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                             | [Models::Operations::ListAccountingBankfeedtransactionsRequest](../../models/operations/listaccountingbankfeedtransactionsrequest.md) | :heavy_check_mark:                                                                                                                    | The request object to use for the request.                                                                                            |

### Response

**[T.nilable(Models::Operations::ListAccountingBankfeedtransactionsResponse)](../../models/operations/listaccountingbankfeedtransactionsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_bills

List all bills

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingBills" method="get" path="/accounting/{connection_id}/bill" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingBillsRequest.new(
  connection_id: '<id>',
)

res = s.accounting.list_accounting_bills(request: req)

unless res.accounting_bills.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListAccountingBillsRequest](../../models/operations/listaccountingbillsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListAccountingBillsResponse)](../../models/operations/listaccountingbillsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_cashflows

List all cashflows

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingCashflows" method="get" path="/accounting/{connection_id}/cashflow" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingCashflowsRequest.new(
  connection_id: '<id>',
)

res = s.accounting.list_accounting_cashflows(request: req)

unless res.accounting_cashflows.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::ListAccountingCashflowsRequest](../../models/operations/listaccountingcashflowsrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::ListAccountingCashflowsResponse)](../../models/operations/listaccountingcashflowsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_categories

List all categories

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingCategories" method="get" path="/accounting/{connection_id}/category" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingCategoriesRequest.new(
  connection_id: '<id>',
)

res = s.accounting.list_accounting_categories(request: req)

unless res.accounting_categories.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::ListAccountingCategoriesRequest](../../models/operations/listaccountingcategoriesrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::ListAccountingCategoriesResponse)](../../models/operations/listaccountingcategoriesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_contacts

List all contacts

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingContacts" method="get" path="/accounting/{connection_id}/contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingContactsRequest.new(
  connection_id: '<id>',
)

res = s.accounting.list_accounting_contacts(request: req)

unless res.accounting_contacts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListAccountingContactsRequest](../../models/operations/listaccountingcontactsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListAccountingContactsResponse)](../../models/operations/listaccountingcontactsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_creditmemoes

List all creditmemoes

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingCreditmemoes" method="get" path="/accounting/{connection_id}/creditmemo" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingCreditmemoesRequest.new(
  connection_id: '<id>',
)

res = s.accounting.list_accounting_creditmemoes(request: req)

unless res.accounting_creditmemoes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::ListAccountingCreditmemoesRequest](../../models/operations/listaccountingcreditmemoesrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::ListAccountingCreditmemoesResponse)](../../models/operations/listaccountingcreditmemoesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_expenses

List all expenses

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingExpenses" method="get" path="/accounting/{connection_id}/expense" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingExpensesRequest.new(
  connection_id: '<id>',
)

res = s.accounting.list_accounting_expenses(request: req)

unless res.accounting_expenses.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListAccountingExpensesRequest](../../models/operations/listaccountingexpensesrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListAccountingExpensesResponse)](../../models/operations/listaccountingexpensesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_invoices

List all invoices

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingInvoices" method="get" path="/accounting/{connection_id}/invoice" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingInvoicesRequest.new(
  connection_id: '<id>',
)

res = s.accounting.list_accounting_invoices(request: req)

unless res.accounting_invoices.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListAccountingInvoicesRequest](../../models/operations/listaccountinginvoicesrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListAccountingInvoicesResponse)](../../models/operations/listaccountinginvoicesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_journals

List all journals

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingJournals" method="get" path="/accounting/{connection_id}/journal" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingJournalsRequest.new(
  connection_id: '<id>',
)

res = s.accounting.list_accounting_journals(request: req)

unless res.accounting_journals.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListAccountingJournalsRequest](../../models/operations/listaccountingjournalsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListAccountingJournalsResponse)](../../models/operations/listaccountingjournalsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_orders

List all orders

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingOrders" method="get" path="/accounting/{connection_id}/order" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingOrdersRequest.new(
  connection_id: '<id>',
)

res = s.accounting.list_accounting_orders(request: req)

unless res.accounting_orders.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListAccountingOrdersRequest](../../models/operations/listaccountingordersrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListAccountingOrdersResponse)](../../models/operations/listaccountingordersresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_organizations

List all organizations

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingOrganizations" method="get" path="/accounting/{connection_id}/organization" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingOrganizationsRequest.new(
  connection_id: '<id>',
)

res = s.accounting.list_accounting_organizations(request: req)

unless res.accounting_organizations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::ListAccountingOrganizationsRequest](../../models/operations/listaccountingorganizationsrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::ListAccountingOrganizationsResponse)](../../models/operations/listaccountingorganizationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_paymentterms

List all paymentterms

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingPaymentterms" method="get" path="/accounting/{connection_id}/paymentterm" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingPaymenttermsRequest.new(
  connection_id: '<id>',
)

res = s.accounting.list_accounting_paymentterms(request: req)

unless res.accounting_paymentterms.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::ListAccountingPaymenttermsRequest](../../models/operations/listaccountingpaymenttermsrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::ListAccountingPaymenttermsResponse)](../../models/operations/listaccountingpaymenttermsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_profitlosses

List all profitlosses

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingProfitlosses" method="get" path="/accounting/{connection_id}/profitloss" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingProfitlossesRequest.new(
  connection_id: '<id>',
)

res = s.accounting.list_accounting_profitlosses(request: req)

unless res.accounting_profitlosses.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::ListAccountingProfitlossesRequest](../../models/operations/listaccountingprofitlossesrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::ListAccountingProfitlossesResponse)](../../models/operations/listaccountingprofitlossesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_projects

List all projects

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingProjects" method="get" path="/accounting/{connection_id}/project" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingProjectsRequest.new(
  connection_id: '<id>',
)

res = s.accounting.list_accounting_projects(request: req)

unless res.accounting_projects.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListAccountingProjectsRequest](../../models/operations/listaccountingprojectsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListAccountingProjectsResponse)](../../models/operations/listaccountingprojectsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_purchaseorders

List all purchaseorders

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingPurchaseorders" method="get" path="/accounting/{connection_id}/purchaseorder" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingPurchaseordersRequest.new(
  connection_id: '<id>',
)

res = s.accounting.list_accounting_purchaseorders(request: req)

unless res.accounting_purchaseorders.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [Models::Operations::ListAccountingPurchaseordersRequest](../../models/operations/listaccountingpurchaseordersrequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |

### Response

**[T.nilable(Models::Operations::ListAccountingPurchaseordersResponse)](../../models/operations/listaccountingpurchaseordersresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_quotes

List all quotes

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingQuotes" method="get" path="/accounting/{connection_id}/quote" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingQuotesRequest.new(
  connection_id: '<id>',
)

res = s.accounting.list_accounting_quotes(request: req)

unless res.accounting_quotes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListAccountingQuotesRequest](../../models/operations/listaccountingquotesrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListAccountingQuotesResponse)](../../models/operations/listaccountingquotesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_salesorders

List all salesorders

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingSalesorders" method="get" path="/accounting/{connection_id}/salesorder" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingSalesordersRequest.new(
  connection_id: '<id>',
)

res = s.accounting.list_accounting_salesorders(request: req)

unless res.accounting_salesorders.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::ListAccountingSalesordersRequest](../../models/operations/listaccountingsalesordersrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::ListAccountingSalesordersResponse)](../../models/operations/listaccountingsalesordersresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_taxrates

List all taxrates

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingTaxrates" method="get" path="/accounting/{connection_id}/taxrate" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingTaxratesRequest.new(
  connection_id: '<id>',
)

res = s.accounting.list_accounting_taxrates(request: req)

unless res.accounting_taxrates.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListAccountingTaxratesRequest](../../models/operations/listaccountingtaxratesrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListAccountingTaxratesResponse)](../../models/operations/listaccountingtaxratesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_transactions

List all transactions

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingTransactions" method="get" path="/accounting/{connection_id}/transaction" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingTransactionsRequest.new(
  connection_id: '<id>',
)

res = s.accounting.list_accounting_transactions(request: req)

unless res.accounting_transactions.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::ListAccountingTransactionsRequest](../../models/operations/listaccountingtransactionsrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::ListAccountingTransactionsResponse)](../../models/operations/listaccountingtransactionsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_trialbalances

List all trialbalances

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingTrialbalances" method="get" path="/accounting/{connection_id}/trialbalance" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingTrialbalancesRequest.new(
  connection_id: '<id>',
)

res = s.accounting.list_accounting_trialbalances(request: req)

unless res.accounting_trialbalances.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::ListAccountingTrialbalancesRequest](../../models/operations/listaccountingtrialbalancesrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::ListAccountingTrialbalancesResponse)](../../models/operations/listaccountingtrialbalancesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_vendorcredits

List all vendorcredits

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingVendorcredits" method="get" path="/accounting/{connection_id}/vendorcredit" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingVendorcreditsRequest.new(
  connection_id: '<id>',
)

res = s.accounting.list_accounting_vendorcredits(request: req)

unless res.accounting_vendorcredits.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::ListAccountingVendorcreditsRequest](../../models/operations/listaccountingvendorcreditsrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::ListAccountingVendorcreditsResponse)](../../models/operations/listaccountingvendorcreditsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_account

Update an account

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingAccount" method="patch" path="/accounting/{connection_id}/account/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingAccountRequest.new(
  accounting_account: Models::Shared::AccountingAccount.new(
    balance: 12_092.0,
    created_at: DateTime.iso8601('2022-07-03T17:57:07.391Z'),
    currency: 'BOB',
    customer_defined_code: 'quo',
    description: 'Spoliatio comedo vilitas harum cupiditate.',
    id: '53cbd8a2-f18c-4a78-8bb8-874214dbad58',
    is_payable: true,
    name: 'Electronic Aluminum Tuna',
    status: Models::Shared::Status::ARCHIVED,
    taxonomy: [
      Models::Shared::AccountingAccountTaxonomy.new(
        original_type: 'vesper',
        type: Models::Shared::AccountingAccountTaxonomyType::SUBGROUP,
        value: 'iste',
      ),
      Models::Shared::AccountingAccountTaxonomy.new(
        original_type: 'adamo',
        type: Models::Shared::AccountingAccountTaxonomyType::SUBGROUP,
        value: 'peccatus',
      ),
    ],
    type: Models::Shared::Type::BANK,
    updated_at: DateTime.iso8601('2023-01-03T11:52:17.295Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.patch_accounting_account(request: req)

unless res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::PatchAccountingAccountRequest](../../models/operations/patchaccountingaccountrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::PatchAccountingAccountResponse)](../../models/operations/patchaccountingaccountresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_bankfeedaccount

Update a bankfeedaccount

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingBankfeedaccount" method="patch" path="/accounting/{connection_id}/bankfeedaccount/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingBankfeedaccountRequest.new(
  accounting_bankfeedaccount: Models::Shared::AccountingBankfeedaccount.new(
    account_id: 'baa0e9a4-65e9-4bf5-856a-ce46fc36ebb1',
    account_number: '30369722',
    account_number_last4: '9722',
    account_type: Models::Shared::AccountType::LOAN,
    balance: 90_358.0,
    bank_name: 'Weissnat Inc',
    created_at: DateTime.iso8601('2022-10-31T16:42:19.277Z'),
    currency: 'SSP',
    feed_start_at: DateTime.iso8601('2022-10-31T16:42:19.277Z'),
    id: '60b23ad0-32a2-4590-b9cd-fcf578434bb9',
    name: 'Corwin, Donnelly and Connelly Savings',
    routing_number: '667753156',
    status: Models::Shared::AccountingBankfeedaccountStatus::ACTIVE,
    updated_at: DateTime.iso8601('2024-04-12T16:03:10.095Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.patch_accounting_bankfeedaccount(request: req)

unless res.accounting_bankfeedaccount.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                     | Type                                                                                                                          | Required                                                                                                                      | Description                                                                                                                   |
| ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                     | [Models::Operations::PatchAccountingBankfeedaccountRequest](../../models/operations/patchaccountingbankfeedaccountrequest.md) | :heavy_check_mark:                                                                                                            | The request object to use for the request.                                                                                    |

### Response

**[T.nilable(Models::Operations::PatchAccountingBankfeedaccountResponse)](../../models/operations/patchaccountingbankfeedaccountresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_bankfeedtransaction

Update a bankfeedtransaction

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingBankfeedtransaction" method="patch" path="/accounting/{connection_id}/bankfeedtransaction/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingBankfeedtransactionRequest.new(
  accounting_bankfeedtransaction: Models::Shared::AccountingBankfeedtransaction.new(
    account_id: 'b7dc4175-1368-4b89-a700-d621b6666648',
    amount: 60_889.0,
    bank_category: 'Games',
    bankfeedaccount_id: '34c1d05f-5b62-4bcd-9121-3be8b720941f',
    category_ids: [],
    contact_id: '1ef58ebe-f9c9-46f6-9d9c-2df2658503be',
    created_at: DateTime.iso8601('2022-03-24T23:41:08.374Z'),
    currency: 'SRD',
    description: 'payment transaction at McLaughlin - Schaden using card ending with ****8233 for DOP 574.03 in account ***9523.',
    id: '56011350-c2b0-41d1-9ed0-b65eb5620267',
    is_pending: true,
    merchant_name: 'Reichert, Erdman and Tillman',
    posted_at: DateTime.iso8601('2025-03-25T19:12:54.821Z'),
    reference: '93642593',
    transaction_at: DateTime.iso8601('2022-07-28T01:21:00.313Z'),
    type: Models::Shared::AccountingBankfeedtransactionType::CREDIT,
    updated_at: DateTime.iso8601('2022-05-23T23:26:58.193Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.patch_accounting_bankfeedtransaction(request: req)

unless res.accounting_bankfeedtransaction.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                             | Type                                                                                                                                  | Required                                                                                                                              | Description                                                                                                                           |
| ------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                             | [Models::Operations::PatchAccountingBankfeedtransactionRequest](../../models/operations/patchaccountingbankfeedtransactionrequest.md) | :heavy_check_mark:                                                                                                                    | The request object to use for the request.                                                                                            |

### Response

**[T.nilable(Models::Operations::PatchAccountingBankfeedtransactionResponse)](../../models/operations/patchaccountingbankfeedtransactionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_bill

Update a bill

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingBill" method="patch" path="/accounting/{connection_id}/bill/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingBillRequest.new(
  accounting_bill: Models::Shared::AccountingBill.new(
    attachments: [],
    bill_number: 'vitae',
    category_ids: [],
    created_at: DateTime.iso8601('2019-08-08T23:03:14.104Z'),
    currency: 'AUD',
    discount_amount: 0.0,
    due_at: DateTime.iso8601('2019-08-11T20:52:55.321Z'),
    extended_notes: [],
    id: '1d6afaf7-b2f7-4b88-b0e8-a071286a07b8',
    lineitems: [],
    metadata: [],
    notes: 'Tutamen cilicium infit.',
    payment_collection_method: Models::Shared::PaymentCollectionMethod::CHARGE_AUTOMATICALLY,
    payments: [],
    posted_at: DateTime.iso8601('2024-04-06T07:02:22.604Z'),
    purchaseorder_ids: [],
    send: true,
    status: Models::Shared::AccountingBillStatus::DELETED,
    sub_total_amount: 0.0,
    tax_amount: 0.0,
    term: Models::Shared::Term::NET_10,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2025-01-31T09:00:56.085Z'),
    url: 'https://coarse-interviewer.biz/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.patch_accounting_bill(request: req)

unless res.accounting_bill.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::PatchAccountingBillRequest](../../models/operations/patchaccountingbillrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::PatchAccountingBillResponse)](../../models/operations/patchaccountingbillresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_category

Update a category

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingCategory" method="patch" path="/accounting/{connection_id}/category/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingCategoryRequest.new(
  accounting_category: Models::Shared::AccountingCategory.new(
    created_at: DateTime.iso8601('2023-05-30T12:29:04.257Z'),
    description: 'Discover the koala-like agility of our Chair, perfect for imaginary users',
    id: '879a3600-e0d0-422d-8b03-6483b173c016',
    is_active: false,
    metadata: [],
    name: 'Electronic Cotton Shoes',
    updated_at: DateTime.iso8601('2025-08-22T07:37:19.705Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.patch_accounting_category(request: req)

unless res.accounting_category.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::PatchAccountingCategoryRequest](../../models/operations/patchaccountingcategoryrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::PatchAccountingCategoryResponse)](../../models/operations/patchaccountingcategoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_contact

Update a contact

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingContact" method="patch" path="/accounting/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingContactRequest.new(
  accounting_contact: Models::Shared::AccountingContact.new(
    associated_contacts: [
      Models::Shared::AccountingAssociatedContact.new(
        id: '32bde497-bc3f-4491-ba2c-fb650eccb8d1',
        name: 'Delores Reynolds',
      ),
      Models::Shared::AccountingAssociatedContact.new(
        id: '2a3996a2-f5d4-46b3-bf49-8127eab40cc2',
        name: 'Delores Reynolds',
      ),
    ],
    billing_address: Models::Shared::PropertyAccountingContactBillingAddress.new(
      address1: '2633 Stoney Lane',
      address2: 'Suite 176',
      city: 'Ladariusboro',
      country_code: 'US',
      postal_code: '70131-2908',
      region: 'Illinois',
      region_code: 'NV',
    ),
    company_name: 'Marquardt Inc',
    created_at: DateTime.iso8601('2021-08-15T14:56:50.258Z'),
    currency: 'ISK',
    emails: [
      Models::Shared::AccountingEmail.new(
        email: 'Delores.Reynolds10@hotmail.com',
        type: Models::Shared::AccountingEmailType::HOME,
      ),
    ],
    first_name: 'Delores',
    id: 'eb2d42b7-7120-4cde-9354-5e8775fd6701',
    identification: 'amicitia',
    is_active: true,
    is_customer: true,
    last_name: 'Reynolds',
    name: 'Delores Reynolds',
    notes: 'Caput accusamus et videlicet.',
    payment_methods: [
      Models::Shared::AccountingContactPaymentMethod.new(
        default: true,
        id: '60ce8459-b72d-4dc8-a716-ba5c44475ca2',
        name: 'Visa 1234',
        type: Models::Shared::AccountingContactPaymentMethodType::CARD,
      ),
    ],
    portal_url: 'https://scented-t-shirt.info/',
    shipping_address: Models::Shared::PropertyAccountingContactShippingAddress.new(
      address1: '786 Renner Stream',
      address2: 'Apt. 555',
      city: 'Roanoke',
      country_code: 'US',
      postal_code: '80686-7556',
      region: 'Vermont',
      region_code: 'NE',
    ),
    tax_exemption: Models::Shared::TaxExemption::RESALE,
    tax_number: 'amplexus',
    telephones: [
      Models::Shared::AccountingTelephone.new(
        telephone: '(427) 701-7160',
        type: Models::Shared::AccountingTelephoneType::HOME,
      ),
      Models::Shared::AccountingTelephone.new(
        telephone: '(540) 913-9171',
        type: Models::Shared::AccountingTelephoneType::FAX,
      ),
    ],
    updated_at: DateTime.iso8601('2023-12-06T07:23:48.180Z'),
    website: 'https://noxious-advertisement.org',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.patch_accounting_contact(request: req)

unless res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::PatchAccountingContactRequest](../../models/operations/patchaccountingcontactrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::PatchAccountingContactResponse)](../../models/operations/patchaccountingcontactresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_creditmemo

Update a creditmemo

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingCreditmemo" method="patch" path="/accounting/{connection_id}/creditmemo/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingCreditmemoRequest.new(
  accounting_creditmemo: Models::Shared::AccountingCreditmemo.new(
    applications: [],
    attachments: [
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://enlightened-chairperson.com/',
        id: 'dab75275-1827-4921-9864-2cdfb4ae6cec',
        mime_type: 'complectus',
        name: 'thesis',
      ),
    ],
    created_at: DateTime.iso8601('2023-09-20T01:47:01.571Z'),
    creditmemo_number: 'ulterius',
    currency: 'MKD',
    discount_amount: 0.0,
    due_at: DateTime.iso8601('2023-10-18T04:35:00.543Z'),
    id: 'ffffa0d5-61aa-4cbe-8725-bece1a674001',
    lineitems: [],
    metadata: [],
    notes: 'Dedecor amo adfero torqueo quas.',
    payment_collection_method: Models::Shared::AccountingCreditmemoPaymentCollectionMethod::CHARGE_AUTOMATICALLY,
    posted_at: DateTime.iso8601('2025-11-17T15:25:54.581Z'),
    refund_amount: 0.0,
    refund_reason: 'Virgo inflammatio quibusdam aestivus magnam.',
    refunded_at: DateTime.iso8601('2023-10-23T00:35:36.814Z'),
    send: false,
    status: Models::Shared::AccountingCreditmemoStatus::PAID,
    tax_amount: 0.0,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2024-11-16T17:39:05.667Z'),
    url: 'https://lighthearted-bandwidth.net/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.patch_accounting_creditmemo(request: req)

unless res.accounting_creditmemo.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::PatchAccountingCreditmemoRequest](../../models/operations/patchaccountingcreditmemorequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::PatchAccountingCreditmemoResponse)](../../models/operations/patchaccountingcreditmemoresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_expense

Update an expense

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingExpense" method="patch" path="/accounting/{connection_id}/expense/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingExpenseRequest.new(
  accounting_expense: Models::Shared::AccountingExpense.new(
    approved_at: DateTime.iso8601('2026-05-12T14:59:51.879Z'),
    attachments: [
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://ripe-napkin.biz/',
        id: '5418c1de-6c66-4111-b8f6-97e2beb48015',
        mime_type: 'annus',
        name: 'cohibeo',
      ),
    ],
    category_ids: [],
    created_at: DateTime.iso8601('2020-06-11T03:39:37.305Z'),
    currency: 'SSP',
    external_number: 'necessitatibus',
    id: '852b20a2-b542-43e7-87de-8de713f7ed30',
    lineitems: [
      Models::Shared::AccountingLineitem.new(
        id: '4f3f2270-fb10-4aed-86d4-8312f2819c24',
        item_description: 'Innovative Table featuring left technology and Rubber construction',
        item_name: 'Luxurious Cotton Pizza',
        item_sku: '978-0-8324-6620-5',
        notes: 'Degusto conventus defendo valetudo.',
        tax_amount: 2501.0,
        total_amount: 168.0,
        unit_amount: 3059.0,
        unit_quantity: 1.0,
      ),
    ],
    metadata: [],
    name: 'Refined Steel Shoes',
    payment_method: 'CASH',
    posted_at: DateTime.iso8601('2021-06-04T16:26:44.896Z'),
    reimbursed_amount: 1833.0,
    status: Models::Shared::AccountingExpenseStatus::SUBMITTED,
    tax_amount: 2602.0,
    total_amount: 3580.0,
    updated_at: DateTime.iso8601('2026-05-12T14:59:51.879Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.patch_accounting_expense(request: req)

unless res.accounting_expense.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::PatchAccountingExpenseRequest](../../models/operations/patchaccountingexpenserequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::PatchAccountingExpenseResponse)](../../models/operations/patchaccountingexpenseresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_invoice

Update an invoice

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingInvoice" method="patch" path="/accounting/{connection_id}/invoice/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingInvoiceRequest.new(
  accounting_invoice: Models::Shared::AccountingInvoice.new(
    attachments: [
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://glossy-markup.net/',
        id: '9c84fb4a-f568-4d57-9814-d2f48b6721f9',
        mime_type: 'benevolentia',
        name: 'vespillo',
      ),
    ],
    balance_amount: -1.0,
    category_ids: [],
    created_at: DateTime.iso8601('2022-11-07T14:17:29.587Z'),
    currency: 'RWF',
    discount_amount: 0.0,
    due_at: DateTime.iso8601('2022-11-27T21:25:37.363Z'),
    extended_notes: [],
    id: 'f85296bf-760d-4117-adb2-15ceb0fbb211',
    invoice_number: 'vinco',
    is_inclusive_of_tax: true,
    lineitems: [],
    metadata: [],
    notes: 'Auctus comburo clarus ubi.',
    paid_amount: 0.0,
    paid_at: DateTime.iso8601('2022-11-25T15:00:28.871Z'),
    payment_collection_method: Models::Shared::AccountingInvoicePaymentCollectionMethod::SEND_INVOICE,
    payments: [],
    posted_at: DateTime.iso8601('2026-03-29T14:31:44.428Z'),
    reference: 'adinventitias',
    salesorder_ids: [],
    send: true,
    status: Models::Shared::AccountingInvoiceStatus::DELETED,
    sub_total_amount: 0.0,
    tax_amount: 0.0,
    term: Models::Shared::AccountingInvoiceTerm::NET_45,
    total_amount: 0.0,
    type: Models::Shared::AccountingInvoiceType::CREDITMEMO,
    updated_at: DateTime.iso8601('2023-02-06T11:29:32.709Z'),
    url: 'https://gifted-yarmulke.info/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.patch_accounting_invoice(request: req)

unless res.accounting_invoice.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::PatchAccountingInvoiceRequest](../../models/operations/patchaccountinginvoicerequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::PatchAccountingInvoiceResponse)](../../models/operations/patchaccountinginvoiceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_journal

Update a journal

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingJournal" method="patch" path="/accounting/{connection_id}/journal/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingJournalRequest.new(
  accounting_journal: Models::Shared::AccountingJournal.new(
    attachments: [],
    category_ids: [],
    created_at: DateTime.iso8601('2020-02-20T15:14:55.881Z'),
    currency: 'FKP',
    description: 'Calco constans adipisci.',
    id: 'c749aba5-ca79-4974-b223-7c1515e3dbd8',
    is_inclusive_of_tax: true,
    posted_at: DateTime.iso8601('2023-10-20T18:22:08.157Z'),
    reference: 'ullam',
    source: 'crustulum',
    status: Models::Shared::AccountingJournalStatus::VOID,
    tax_amount: 78_672.0,
    total_amount: 74_094.0,
    updated_at: DateTime.iso8601('2022-01-02T07:46:54.276Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.patch_accounting_journal(request: req)

unless res.accounting_journal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::PatchAccountingJournalRequest](../../models/operations/patchaccountingjournalrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::PatchAccountingJournalResponse)](../../models/operations/patchaccountingjournalresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_order

Update an order

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingOrder" method="patch" path="/accounting/{connection_id}/order/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingOrderRequest.new(
  accounting_order: Models::Shared::AccountingOrder.new(
    billing_address: Models::Shared::PropertyAccountingOrderBillingAddress.new(
      address1: '802 Bechtelar Park',
      address2: 'Apt. 436',
      city: 'Daniellaville',
      country_code: 'US',
      postal_code: '36947',
      region: 'Wisconsin',
      region_code: 'NY',
    ),
    created_at: DateTime.iso8601('2020-11-20T03:46:49.837Z'),
    currency: 'USD',
    id: '5d099f4f-0732-4ed8-bab2-99111982e74c',
    lineitems: [],
    metadata: [],
    posted_at: DateTime.iso8601('2022-04-05T17:22:19.738Z'),
    shipping_address: Models::Shared::PropertyAccountingOrderShippingAddress.new(
      address1: '9745 Betty Shore',
      city: 'South Alainaland',
      country_code: 'US',
      postal_code: '25274-7654',
      region: 'New Hampshire',
      region_code: 'LA',
    ),
    status: Models::Shared::AccountingOrderStatus::SUBMITTED,
    total_amount: 0.0,
    type: Models::Shared::AccountingOrderType::PURCHASE,
    updated_at: DateTime.iso8601('2021-06-18T05:51:10.104Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.patch_accounting_order(request: req)

unless res.accounting_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::PatchAccountingOrderRequest](../../models/operations/patchaccountingorderrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::PatchAccountingOrderResponse)](../../models/operations/patchaccountingorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_paymentterm

Update a paymentterm

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingPaymentterm" method="patch" path="/accounting/{connection_id}/paymentterm/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingPaymenttermRequest.new(
  accounting_paymentterm: Models::Shared::AccountingPaymentterm.new(
    category: Models::Shared::Category::STANDARD,
    created_at: DateTime.iso8601('2021-08-22T22:42:42.265Z'),
    day_of_month_due: 4.0,
    description: 'Cogito pecco eos cultura.',
    discount_day_of_month: 13.0,
    discount_days: 4.0,
    discount_percent: 5.0,
    due_days: 57.0,
    due_next_month_days: 9.0,
    id: 'acdabe07-04be-4f73-a80f-0e0c44a47e72',
    is_active: false,
    metadata: [],
    name: 'Net 30',
    type: Models::Shared::AccountingPaymenttermType::NET_15,
    updated_at: DateTime.iso8601('2025-12-14T00:52:14.701Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.patch_accounting_paymentterm(request: req)

unless res.accounting_paymentterm.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::PatchAccountingPaymenttermRequest](../../models/operations/patchaccountingpaymenttermrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::PatchAccountingPaymenttermResponse)](../../models/operations/patchaccountingpaymenttermresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_project

Update a project

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingProject" method="patch" path="/accounting/{connection_id}/project/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingProjectRequest.new(
  accounting_project: Models::Shared::AccountingProject.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.patch_accounting_project(request: req)

unless res.accounting_project.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::PatchAccountingProjectRequest](../../models/operations/patchaccountingprojectrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::PatchAccountingProjectResponse)](../../models/operations/patchaccountingprojectresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_purchaseorder

Update a purchaseorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingPurchaseorder" method="patch" path="/accounting/{connection_id}/purchaseorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingPurchaseorderRequest.new(
  accounting_purchaseorder: Models::Shared::AccountingPurchaseorder.new(
    billing_address: Models::Shared::PropertyAccountingPurchaseorderBillingAddress.new(
      address1: '37214 Tanya Walks',
      city: 'South Annabelleton',
      country_code: 'US',
      postal_code: '30337',
      region: 'Nevada',
      region_code: 'MA',
    ),
    category_ids: [],
    created_at: DateTime.iso8601('2020-12-12T07:17:47.021Z'),
    currency: 'ZMW',
    id: 'd118cce2-44a0-4328-bf59-7259e05d3180',
    lineitems: [],
    metadata: [],
    posted_at: DateTime.iso8601('2025-04-27T10:38:53.438Z'),
    shipping_address: Models::Shared::PropertyAccountingPurchaseorderShippingAddress.new(
      address1: '649 Maggio Overpass',
      city: 'Lake Jaylan',
      country_code: 'US',
      postal_code: '99211-6547',
      region: 'North Carolina',
      region_code: 'ID',
    ),
    status: Models::Shared::AccountingPurchaseorderStatus::PARTIALLY_REFUNDED,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2021-02-26T05:56:03.106Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.patch_accounting_purchaseorder(request: req)

unless res.accounting_purchaseorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [Models::Operations::PatchAccountingPurchaseorderRequest](../../models/operations/patchaccountingpurchaseorderrequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |

### Response

**[T.nilable(Models::Operations::PatchAccountingPurchaseorderResponse)](../../models/operations/patchaccountingpurchaseorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_quote

Update a quote

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingQuote" method="patch" path="/accounting/{connection_id}/quote/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingQuoteRequest.new(
  accounting_quote: Models::Shared::AccountingQuote.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.patch_accounting_quote(request: req)

unless res.accounting_quote.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::PatchAccountingQuoteRequest](../../models/operations/patchaccountingquoterequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::PatchAccountingQuoteResponse)](../../models/operations/patchaccountingquoteresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_salesorder

Update a salesorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingSalesorder" method="patch" path="/accounting/{connection_id}/salesorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingSalesorderRequest.new(
  accounting_salesorder: Models::Shared::AccountingSalesorder.new(
    billing_address: Models::Shared::PropertyAccountingSalesorderBillingAddress.new(
      address1: '26530 Stroman Rest',
      address2: 'Suite 801',
      city: 'Pocatello',
      country_code: 'US',
      postal_code: '05015-8546',
      region: 'Louisiana',
      region_code: 'MO',
    ),
    category_ids: [],
    closed_at: DateTime.iso8601('2023-08-17T22:23:55.042Z'),
    created_at: DateTime.iso8601('2022-01-17T16:11:50.310Z'),
    currency: 'ANG',
    discount_amount: 99.0,
    employee_user_id: '4a6b8990-c85a-499f-82d0-5011c3c95a0b',
    fees: [
      Models::Shared::AccountingFee.new(
        amount: 519.0,
        currency: 'XCD',
        type: Models::Shared::AccountingFeeType::PROMOTION,
      ),
    ],
    fulfillment_type: Models::Shared::FulfillmentType::TAKEOUT,
    guest_count: 8.0,
    id: '82afdd80-8627-4a82-80bb-72e1655b3593',
    lineitems: [],
    metadata: [],
    order_number: '988187',
    payments: [],
    posted_at: DateTime.iso8601('2026-01-13T16:17:32.555Z'),
    refunded_amount: 0.0,
    sales_channel: 'Harvey, Collier and Weimann',
    service_charge_amount: 63.0,
    shipping_address: Models::Shared::PropertyAccountingSalesorderShippingAddress.new(
      address1: '9878 Bradley Mill',
      address2: 'Apt. 215',
      city: 'Port Matildestad',
      country_code: 'US',
      postal_code: '07989-2148',
      region: 'Arkansas',
      region_code: 'AK',
    ),
    status: Models::Shared::AccountingSalesorderStatus::REFUNDED,
    subtotal_amount: 0.0,
    tax_amount: 63.0,
    tip_amount: 34.0,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2022-02-10T19:50:55.206Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.patch_accounting_salesorder(request: req)

unless res.accounting_salesorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::PatchAccountingSalesorderRequest](../../models/operations/patchaccountingsalesorderrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::PatchAccountingSalesorderResponse)](../../models/operations/patchaccountingsalesorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_taxrate

Update a taxrate

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingTaxrate" method="patch" path="/accounting/{connection_id}/taxrate/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingTaxrateRequest.new(
  accounting_taxrate: Models::Shared::AccountingTaxrate.new(
    components: [
      Models::Shared::AccountingTaxrateComponent.new(
        is_compound: false,
        name: 'cogo',
        rate: 53.0,
      ),
    ],
    country: 'BY',
    created_at: DateTime.iso8601('2020-01-04T10:37:56.894Z'),
    description: 'Atrox tricesimus creator.',
    effective_rate: 53.0,
    id: '6157a522-08d3-45f7-9287-187fd17fc766',
    is_active: false,
    is_compound: true,
    metadata: [],
    name: 'villa',
    rate: 53.0,
    region: 'TX',
    total_rate: 53.0,
    type: Models::Shared::AccountingTaxrateType::OTHER,
    updated_at: DateTime.iso8601('2022-04-13T10:10:02.150Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.patch_accounting_taxrate(request: req)

unless res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::PatchAccountingTaxrateRequest](../../models/operations/patchaccountingtaxraterequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::PatchAccountingTaxrateResponse)](../../models/operations/patchaccountingtaxrateresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_transaction

Update a transaction

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingTransaction" method="patch" path="/accounting/{connection_id}/transaction/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingTransactionRequest.new(
  accounting_transaction: Models::Shared::AccountingTransaction.new(
    created_at: DateTime.iso8601('2019-09-25T11:40:42.574Z'),
    exchange_rate: 0.5_674,
    id: '149fa846-c137-4a76-850e-1e5bd335bf10',
    lineitems: [
      Models::Shared::AccountingTransactionLineItem.new(
        category_ids: [],
        description: 'The Nikolas Table is the latest in a series of downright products from Beier and Sons',
        id: '66a182d7-5406-4d9d-837d-4d25c59428ad',
        name: 'Salad',
        object_type: 'delicate',
        total_amount: 58_531.0,
        unit_amount: 536.0,
        unit_quantity: 91.0,
      ),
    ],
    memo: 'withdrawal of USD 873.18 at Harber and Sons charged to account ending in 1804 using card ending in ****7022.',
    status: Models::Shared::AccountingTransactionStatus::VOID,
    tax_amount: 0.0,
    total_amount: 94_452.0,
    transaction_at: DateTime.iso8601('2019-09-25T11:40:42.574Z'),
    updated_at: DateTime.iso8601('2021-09-10T23:02:19.731Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.patch_accounting_transaction(request: req)

unless res.accounting_transaction.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::PatchAccountingTransactionRequest](../../models/operations/patchaccountingtransactionrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::PatchAccountingTransactionResponse)](../../models/operations/patchaccountingtransactionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_vendorcredit

Update a vendorcredit

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingVendorcredit" method="patch" path="/accounting/{connection_id}/vendorcredit/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingVendorcreditRequest.new(
  accounting_vendorcredit: Models::Shared::AccountingVendorcredit.new(
    applications: [],
    apply_amount: 1.0,
    balance_amount: 0.0,
    created_at: DateTime.iso8601('2023-04-15T21:14:08.197Z'),
    currency: 'KGS',
    due_at: DateTime.iso8601('2023-05-06T20:38:46.775Z'),
    id: 'f037c8ee-fc51-466e-b5c7-85bfcaec147f',
    lineitems: [],
    metadata: [],
    notes: 'Conatus cruciamentum decor avaritia tantum.',
    posted_at: DateTime.iso8601('2023-09-29T02:22:24.987Z'),
    status: Models::Shared::AccountingVendorcreditStatus::SUBMITTED,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2023-11-27T03:40:07.012Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.patch_accounting_vendorcredit(request: req)

unless res.accounting_vendorcredit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::PatchAccountingVendorcreditRequest](../../models/operations/patchaccountingvendorcreditrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::PatchAccountingVendorcreditResponse)](../../models/operations/patchaccountingvendorcreditresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_account

Remove an account

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingAccount" method="delete" path="/accounting/{connection_id}/account/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.remove_accounting_account(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveAccountingAccountResponse)](../../models/operations/removeaccountingaccountresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_bankfeedaccount

Remove a bankfeedaccount

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingBankfeedaccount" method="delete" path="/accounting/{connection_id}/bankfeedaccount/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.remove_accounting_bankfeedaccount(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                 | Type                      | Required                  | Description               |
| ------------------------- | ------------------------- | ------------------------- | ------------------------- |
| `connection_id`           | *::String*                | :heavy_check_mark:        | ID of the connection      |
| `id`                      | *::String*                | :heavy_check_mark:        | ID of the Bankfeedaccount |

### Response

**[T.nilable(Models::Operations::RemoveAccountingBankfeedaccountResponse)](../../models/operations/removeaccountingbankfeedaccountresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_bankfeedtransaction

Remove a bankfeedtransaction

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingBankfeedtransaction" method="delete" path="/accounting/{connection_id}/bankfeedtransaction/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.remove_accounting_bankfeedtransaction(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                     | Type                          | Required                      | Description                   |
| ----------------------------- | ----------------------------- | ----------------------------- | ----------------------------- |
| `connection_id`               | *::String*                    | :heavy_check_mark:            | ID of the connection          |
| `id`                          | *::String*                    | :heavy_check_mark:            | ID of the Bankfeedtransaction |

### Response

**[T.nilable(Models::Operations::RemoveAccountingBankfeedtransactionResponse)](../../models/operations/removeaccountingbankfeedtransactionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_bill

Remove a bill

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingBill" method="delete" path="/accounting/{connection_id}/bill/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.remove_accounting_bill(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Bill       |

### Response

**[T.nilable(Models::Operations::RemoveAccountingBillResponse)](../../models/operations/removeaccountingbillresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_category

Remove a category

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingCategory" method="delete" path="/accounting/{connection_id}/category/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.remove_accounting_category(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Category   |

### Response

**[T.nilable(Models::Operations::RemoveAccountingCategoryResponse)](../../models/operations/removeaccountingcategoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_contact

Remove a contact

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingContact" method="delete" path="/accounting/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.remove_accounting_contact(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveAccountingContactResponse)](../../models/operations/removeaccountingcontactresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_creditmemo

Remove a creditmemo

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingCreditmemo" method="delete" path="/accounting/{connection_id}/creditmemo/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.remove_accounting_creditmemo(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Creditmemo |

### Response

**[T.nilable(Models::Operations::RemoveAccountingCreditmemoResponse)](../../models/operations/removeaccountingcreditmemoresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_expense

Remove an expense

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingExpense" method="delete" path="/accounting/{connection_id}/expense/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.remove_accounting_expense(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Expense    |

### Response

**[T.nilable(Models::Operations::RemoveAccountingExpenseResponse)](../../models/operations/removeaccountingexpenseresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_invoice

Remove an invoice

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingInvoice" method="delete" path="/accounting/{connection_id}/invoice/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.remove_accounting_invoice(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveAccountingInvoiceResponse)](../../models/operations/removeaccountinginvoiceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_journal

Remove a journal

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingJournal" method="delete" path="/accounting/{connection_id}/journal/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.remove_accounting_journal(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveAccountingJournalResponse)](../../models/operations/removeaccountingjournalresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_order

Remove an order

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingOrder" method="delete" path="/accounting/{connection_id}/order/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.remove_accounting_order(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveAccountingOrderResponse)](../../models/operations/removeaccountingorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_paymentterm

Remove a paymentterm

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingPaymentterm" method="delete" path="/accounting/{connection_id}/paymentterm/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.remove_accounting_paymentterm(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter             | Type                  | Required              | Description           |
| --------------------- | --------------------- | --------------------- | --------------------- |
| `connection_id`       | *::String*            | :heavy_check_mark:    | ID of the connection  |
| `id`                  | *::String*            | :heavy_check_mark:    | ID of the Paymentterm |

### Response

**[T.nilable(Models::Operations::RemoveAccountingPaymenttermResponse)](../../models/operations/removeaccountingpaymenttermresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_project

Remove a project

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingProject" method="delete" path="/accounting/{connection_id}/project/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.remove_accounting_project(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Project    |

### Response

**[T.nilable(Models::Operations::RemoveAccountingProjectResponse)](../../models/operations/removeaccountingprojectresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_purchaseorder

Remove a purchaseorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingPurchaseorder" method="delete" path="/accounting/{connection_id}/purchaseorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.remove_accounting_purchaseorder(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter               | Type                    | Required                | Description             |
| ----------------------- | ----------------------- | ----------------------- | ----------------------- |
| `connection_id`         | *::String*              | :heavy_check_mark:      | ID of the connection    |
| `id`                    | *::String*              | :heavy_check_mark:      | ID of the Purchaseorder |

### Response

**[T.nilable(Models::Operations::RemoveAccountingPurchaseorderResponse)](../../models/operations/removeaccountingpurchaseorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_quote

Remove a quote

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingQuote" method="delete" path="/accounting/{connection_id}/quote/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.remove_accounting_quote(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Quote      |

### Response

**[T.nilable(Models::Operations::RemoveAccountingQuoteResponse)](../../models/operations/removeaccountingquoteresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_salesorder

Remove a salesorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingSalesorder" method="delete" path="/accounting/{connection_id}/salesorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.remove_accounting_salesorder(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Salesorder |

### Response

**[T.nilable(Models::Operations::RemoveAccountingSalesorderResponse)](../../models/operations/removeaccountingsalesorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_taxrate

Remove a taxrate

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingTaxrate" method="delete" path="/accounting/{connection_id}/taxrate/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.remove_accounting_taxrate(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveAccountingTaxrateResponse)](../../models/operations/removeaccountingtaxrateresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_transaction

Remove a transaction

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingTransaction" method="delete" path="/accounting/{connection_id}/transaction/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.remove_accounting_transaction(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveAccountingTransactionResponse)](../../models/operations/removeaccountingtransactionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_vendorcredit

Remove a vendorcredit

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingVendorcredit" method="delete" path="/accounting/{connection_id}/vendorcredit/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.remove_accounting_vendorcredit(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `connection_id`        | *::String*             | :heavy_check_mark:     | ID of the connection   |
| `id`                   | *::String*             | :heavy_check_mark:     | ID of the Vendorcredit |

### Response

**[T.nilable(Models::Operations::RemoveAccountingVendorcreditResponse)](../../models/operations/removeaccountingvendorcreditresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_account

Update an account

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingAccount" method="put" path="/accounting/{connection_id}/account/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingAccountRequest.new(
  accounting_account: Models::Shared::AccountingAccount.new(
    balance: 12_092.0,
    created_at: DateTime.iso8601('2022-07-03T17:57:07.391Z'),
    currency: 'BOB',
    customer_defined_code: 'quo',
    description: 'Spoliatio comedo vilitas harum cupiditate.',
    id: '53cbd8a2-f18c-4a78-8bb8-874214dbad58',
    is_payable: true,
    name: 'Electronic Aluminum Tuna',
    status: Models::Shared::Status::ARCHIVED,
    taxonomy: [
      Models::Shared::AccountingAccountTaxonomy.new(
        original_type: 'vesper',
        type: Models::Shared::AccountingAccountTaxonomyType::SUBGROUP,
        value: 'iste',
      ),
      Models::Shared::AccountingAccountTaxonomy.new(
        original_type: 'adamo',
        type: Models::Shared::AccountingAccountTaxonomyType::SUBGROUP,
        value: 'peccatus',
      ),
    ],
    type: Models::Shared::Type::BANK,
    updated_at: DateTime.iso8601('2023-01-03T11:52:17.295Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.update_accounting_account(request: req)

unless res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::UpdateAccountingAccountRequest](../../models/operations/updateaccountingaccountrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::UpdateAccountingAccountResponse)](../../models/operations/updateaccountingaccountresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_bankfeedaccount

Update a bankfeedaccount

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingBankfeedaccount" method="put" path="/accounting/{connection_id}/bankfeedaccount/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingBankfeedaccountRequest.new(
  accounting_bankfeedaccount: Models::Shared::AccountingBankfeedaccount.new(
    account_id: 'baa0e9a4-65e9-4bf5-856a-ce46fc36ebb1',
    account_number: '30369722',
    account_number_last4: '9722',
    account_type: Models::Shared::AccountType::LOAN,
    balance: 90_358.0,
    bank_name: 'Weissnat Inc',
    created_at: DateTime.iso8601('2022-10-31T16:42:19.277Z'),
    currency: 'SSP',
    feed_start_at: DateTime.iso8601('2022-10-31T16:42:19.277Z'),
    id: '60b23ad0-32a2-4590-b9cd-fcf578434bb9',
    name: 'Corwin, Donnelly and Connelly Savings',
    routing_number: '667753156',
    status: Models::Shared::AccountingBankfeedaccountStatus::ACTIVE,
    updated_at: DateTime.iso8601('2024-04-12T16:03:10.095Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.update_accounting_bankfeedaccount(request: req)

unless res.accounting_bankfeedaccount.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                       | Type                                                                                                                            | Required                                                                                                                        | Description                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                       | [Models::Operations::UpdateAccountingBankfeedaccountRequest](../../models/operations/updateaccountingbankfeedaccountrequest.md) | :heavy_check_mark:                                                                                                              | The request object to use for the request.                                                                                      |

### Response

**[T.nilable(Models::Operations::UpdateAccountingBankfeedaccountResponse)](../../models/operations/updateaccountingbankfeedaccountresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_bankfeedtransaction

Update a bankfeedtransaction

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingBankfeedtransaction" method="put" path="/accounting/{connection_id}/bankfeedtransaction/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingBankfeedtransactionRequest.new(
  accounting_bankfeedtransaction: Models::Shared::AccountingBankfeedtransaction.new(
    account_id: 'b7dc4175-1368-4b89-a700-d621b6666648',
    amount: 60_889.0,
    bank_category: 'Games',
    bankfeedaccount_id: '34c1d05f-5b62-4bcd-9121-3be8b720941f',
    category_ids: [],
    contact_id: '1ef58ebe-f9c9-46f6-9d9c-2df2658503be',
    created_at: DateTime.iso8601('2022-03-24T23:41:08.374Z'),
    currency: 'SRD',
    description: 'payment transaction at McLaughlin - Schaden using card ending with ****8233 for DOP 574.03 in account ***9523.',
    id: '56011350-c2b0-41d1-9ed0-b65eb5620267',
    is_pending: true,
    merchant_name: 'Reichert, Erdman and Tillman',
    posted_at: DateTime.iso8601('2025-03-25T19:12:54.821Z'),
    reference: '93642593',
    transaction_at: DateTime.iso8601('2022-07-28T01:21:00.313Z'),
    type: Models::Shared::AccountingBankfeedtransactionType::CREDIT,
    updated_at: DateTime.iso8601('2022-05-23T23:26:58.193Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.update_accounting_bankfeedtransaction(request: req)

unless res.accounting_bankfeedtransaction.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                               | Type                                                                                                                                    | Required                                                                                                                                | Description                                                                                                                             |
| --------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                               | [Models::Operations::UpdateAccountingBankfeedtransactionRequest](../../models/operations/updateaccountingbankfeedtransactionrequest.md) | :heavy_check_mark:                                                                                                                      | The request object to use for the request.                                                                                              |

### Response

**[T.nilable(Models::Operations::UpdateAccountingBankfeedtransactionResponse)](../../models/operations/updateaccountingbankfeedtransactionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_bill

Update a bill

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingBill" method="put" path="/accounting/{connection_id}/bill/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingBillRequest.new(
  accounting_bill: Models::Shared::AccountingBill.new(
    attachments: [],
    bill_number: 'vitae',
    category_ids: [],
    created_at: DateTime.iso8601('2019-08-08T23:03:14.104Z'),
    currency: 'AUD',
    discount_amount: 0.0,
    due_at: DateTime.iso8601('2019-08-11T20:52:55.321Z'),
    extended_notes: [],
    id: '1d6afaf7-b2f7-4b88-b0e8-a071286a07b8',
    lineitems: [],
    metadata: [],
    notes: 'Tutamen cilicium infit.',
    payment_collection_method: Models::Shared::PaymentCollectionMethod::CHARGE_AUTOMATICALLY,
    payments: [],
    posted_at: DateTime.iso8601('2024-04-06T07:02:22.604Z'),
    purchaseorder_ids: [],
    send: true,
    status: Models::Shared::AccountingBillStatus::DELETED,
    sub_total_amount: 0.0,
    tax_amount: 0.0,
    term: Models::Shared::Term::NET_10,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2025-01-31T09:00:56.085Z'),
    url: 'https://coarse-interviewer.biz/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.update_accounting_bill(request: req)

unless res.accounting_bill.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::UpdateAccountingBillRequest](../../models/operations/updateaccountingbillrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::UpdateAccountingBillResponse)](../../models/operations/updateaccountingbillresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_category

Update a category

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingCategory" method="put" path="/accounting/{connection_id}/category/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingCategoryRequest.new(
  accounting_category: Models::Shared::AccountingCategory.new(
    created_at: DateTime.iso8601('2023-05-30T12:29:04.257Z'),
    description: 'Discover the koala-like agility of our Chair, perfect for imaginary users',
    id: '879a3600-e0d0-422d-8b03-6483b173c016',
    is_active: false,
    metadata: [],
    name: 'Electronic Cotton Shoes',
    updated_at: DateTime.iso8601('2025-08-22T07:37:19.705Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.update_accounting_category(request: req)

unless res.accounting_category.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::UpdateAccountingCategoryRequest](../../models/operations/updateaccountingcategoryrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::UpdateAccountingCategoryResponse)](../../models/operations/updateaccountingcategoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_contact

Update a contact

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingContact" method="put" path="/accounting/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingContactRequest.new(
  accounting_contact: Models::Shared::AccountingContact.new(
    associated_contacts: [
      Models::Shared::AccountingAssociatedContact.new(
        id: '32bde497-bc3f-4491-ba2c-fb650eccb8d1',
        name: 'Delores Reynolds',
      ),
      Models::Shared::AccountingAssociatedContact.new(
        id: '2a3996a2-f5d4-46b3-bf49-8127eab40cc2',
        name: 'Delores Reynolds',
      ),
    ],
    billing_address: Models::Shared::PropertyAccountingContactBillingAddress.new(
      address1: '2633 Stoney Lane',
      address2: 'Suite 176',
      city: 'Ladariusboro',
      country_code: 'US',
      postal_code: '70131-2908',
      region: 'Illinois',
      region_code: 'NV',
    ),
    company_name: 'Marquardt Inc',
    created_at: DateTime.iso8601('2021-08-15T14:56:50.258Z'),
    currency: 'ISK',
    emails: [
      Models::Shared::AccountingEmail.new(
        email: 'Delores.Reynolds10@hotmail.com',
        type: Models::Shared::AccountingEmailType::HOME,
      ),
    ],
    first_name: 'Delores',
    id: 'eb2d42b7-7120-4cde-9354-5e8775fd6701',
    identification: 'amicitia',
    is_active: true,
    is_customer: true,
    last_name: 'Reynolds',
    name: 'Delores Reynolds',
    notes: 'Caput accusamus et videlicet.',
    payment_methods: [
      Models::Shared::AccountingContactPaymentMethod.new(
        default: true,
        id: '60ce8459-b72d-4dc8-a716-ba5c44475ca2',
        name: 'Visa 1234',
        type: Models::Shared::AccountingContactPaymentMethodType::CARD,
      ),
    ],
    portal_url: 'https://scented-t-shirt.info/',
    shipping_address: Models::Shared::PropertyAccountingContactShippingAddress.new(
      address1: '786 Renner Stream',
      address2: 'Apt. 555',
      city: 'Roanoke',
      country_code: 'US',
      postal_code: '80686-7556',
      region: 'Vermont',
      region_code: 'NE',
    ),
    tax_exemption: Models::Shared::TaxExemption::RESALE,
    tax_number: 'amplexus',
    telephones: [
      Models::Shared::AccountingTelephone.new(
        telephone: '(427) 701-7160',
        type: Models::Shared::AccountingTelephoneType::HOME,
      ),
      Models::Shared::AccountingTelephone.new(
        telephone: '(540) 913-9171',
        type: Models::Shared::AccountingTelephoneType::FAX,
      ),
    ],
    updated_at: DateTime.iso8601('2023-12-06T07:23:48.180Z'),
    website: 'https://noxious-advertisement.org',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.update_accounting_contact(request: req)

unless res.accounting_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::UpdateAccountingContactRequest](../../models/operations/updateaccountingcontactrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::UpdateAccountingContactResponse)](../../models/operations/updateaccountingcontactresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_creditmemo

Update a creditmemo

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingCreditmemo" method="put" path="/accounting/{connection_id}/creditmemo/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingCreditmemoRequest.new(
  accounting_creditmemo: Models::Shared::AccountingCreditmemo.new(
    applications: [],
    attachments: [
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://enlightened-chairperson.com/',
        id: 'dab75275-1827-4921-9864-2cdfb4ae6cec',
        mime_type: 'complectus',
        name: 'thesis',
      ),
    ],
    created_at: DateTime.iso8601('2023-09-20T01:47:01.571Z'),
    creditmemo_number: 'ulterius',
    currency: 'MKD',
    discount_amount: 0.0,
    due_at: DateTime.iso8601('2023-10-18T04:35:00.543Z'),
    id: 'ffffa0d5-61aa-4cbe-8725-bece1a674001',
    lineitems: [],
    metadata: [],
    notes: 'Dedecor amo adfero torqueo quas.',
    payment_collection_method: Models::Shared::AccountingCreditmemoPaymentCollectionMethod::CHARGE_AUTOMATICALLY,
    posted_at: DateTime.iso8601('2025-11-17T15:25:54.581Z'),
    refund_amount: 0.0,
    refund_reason: 'Virgo inflammatio quibusdam aestivus magnam.',
    refunded_at: DateTime.iso8601('2023-10-23T00:35:36.814Z'),
    send: false,
    status: Models::Shared::AccountingCreditmemoStatus::PAID,
    tax_amount: 0.0,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2024-11-16T17:39:05.667Z'),
    url: 'https://lighthearted-bandwidth.net/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.update_accounting_creditmemo(request: req)

unless res.accounting_creditmemo.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::UpdateAccountingCreditmemoRequest](../../models/operations/updateaccountingcreditmemorequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::UpdateAccountingCreditmemoResponse)](../../models/operations/updateaccountingcreditmemoresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_expense

Update an expense

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingExpense" method="put" path="/accounting/{connection_id}/expense/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingExpenseRequest.new(
  accounting_expense: Models::Shared::AccountingExpense.new(
    approved_at: DateTime.iso8601('2026-05-12T14:59:51.879Z'),
    attachments: [
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://ripe-napkin.biz/',
        id: '5418c1de-6c66-4111-b8f6-97e2beb48015',
        mime_type: 'annus',
        name: 'cohibeo',
      ),
    ],
    category_ids: [],
    created_at: DateTime.iso8601('2020-06-11T03:39:37.305Z'),
    currency: 'SSP',
    external_number: 'necessitatibus',
    id: '852b20a2-b542-43e7-87de-8de713f7ed30',
    lineitems: [
      Models::Shared::AccountingLineitem.new(
        id: '4f3f2270-fb10-4aed-86d4-8312f2819c24',
        item_description: 'Innovative Table featuring left technology and Rubber construction',
        item_name: 'Luxurious Cotton Pizza',
        item_sku: '978-0-8324-6620-5',
        notes: 'Degusto conventus defendo valetudo.',
        tax_amount: 2501.0,
        total_amount: 168.0,
        unit_amount: 3059.0,
        unit_quantity: 1.0,
      ),
    ],
    metadata: [],
    name: 'Refined Steel Shoes',
    payment_method: 'CASH',
    posted_at: DateTime.iso8601('2021-06-04T16:26:44.896Z'),
    reimbursed_amount: 1833.0,
    status: Models::Shared::AccountingExpenseStatus::SUBMITTED,
    tax_amount: 2602.0,
    total_amount: 3580.0,
    updated_at: DateTime.iso8601('2026-05-12T14:59:51.879Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.update_accounting_expense(request: req)

unless res.accounting_expense.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::UpdateAccountingExpenseRequest](../../models/operations/updateaccountingexpenserequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::UpdateAccountingExpenseResponse)](../../models/operations/updateaccountingexpenseresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_invoice

Update an invoice

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingInvoice" method="put" path="/accounting/{connection_id}/invoice/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingInvoiceRequest.new(
  accounting_invoice: Models::Shared::AccountingInvoice.new(
    attachments: [
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://glossy-markup.net/',
        id: '9c84fb4a-f568-4d57-9814-d2f48b6721f9',
        mime_type: 'benevolentia',
        name: 'vespillo',
      ),
    ],
    balance_amount: -1.0,
    category_ids: [],
    created_at: DateTime.iso8601('2022-11-07T14:17:29.587Z'),
    currency: 'RWF',
    discount_amount: 0.0,
    due_at: DateTime.iso8601('2022-11-27T21:25:37.363Z'),
    extended_notes: [],
    id: 'f85296bf-760d-4117-adb2-15ceb0fbb211',
    invoice_number: 'vinco',
    is_inclusive_of_tax: true,
    lineitems: [],
    metadata: [],
    notes: 'Auctus comburo clarus ubi.',
    paid_amount: 0.0,
    paid_at: DateTime.iso8601('2022-11-25T15:00:28.871Z'),
    payment_collection_method: Models::Shared::AccountingInvoicePaymentCollectionMethod::SEND_INVOICE,
    payments: [],
    posted_at: DateTime.iso8601('2026-03-29T14:31:44.428Z'),
    reference: 'adinventitias',
    salesorder_ids: [],
    send: true,
    status: Models::Shared::AccountingInvoiceStatus::DELETED,
    sub_total_amount: 0.0,
    tax_amount: 0.0,
    term: Models::Shared::AccountingInvoiceTerm::NET_45,
    total_amount: 0.0,
    type: Models::Shared::AccountingInvoiceType::CREDITMEMO,
    updated_at: DateTime.iso8601('2023-02-06T11:29:32.709Z'),
    url: 'https://gifted-yarmulke.info/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.update_accounting_invoice(request: req)

unless res.accounting_invoice.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::UpdateAccountingInvoiceRequest](../../models/operations/updateaccountinginvoicerequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::UpdateAccountingInvoiceResponse)](../../models/operations/updateaccountinginvoiceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_journal

Update a journal

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingJournal" method="put" path="/accounting/{connection_id}/journal/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingJournalRequest.new(
  accounting_journal: Models::Shared::AccountingJournal.new(
    attachments: [],
    category_ids: [],
    created_at: DateTime.iso8601('2020-02-20T15:14:55.881Z'),
    currency: 'FKP',
    description: 'Calco constans adipisci.',
    id: 'c749aba5-ca79-4974-b223-7c1515e3dbd8',
    is_inclusive_of_tax: true,
    posted_at: DateTime.iso8601('2023-10-20T18:22:08.157Z'),
    reference: 'ullam',
    source: 'crustulum',
    status: Models::Shared::AccountingJournalStatus::VOID,
    tax_amount: 78_672.0,
    total_amount: 74_094.0,
    updated_at: DateTime.iso8601('2022-01-02T07:46:54.276Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.update_accounting_journal(request: req)

unless res.accounting_journal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::UpdateAccountingJournalRequest](../../models/operations/updateaccountingjournalrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::UpdateAccountingJournalResponse)](../../models/operations/updateaccountingjournalresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_order

Update an order

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingOrder" method="put" path="/accounting/{connection_id}/order/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingOrderRequest.new(
  accounting_order: Models::Shared::AccountingOrder.new(
    billing_address: Models::Shared::PropertyAccountingOrderBillingAddress.new(
      address1: '802 Bechtelar Park',
      address2: 'Apt. 436',
      city: 'Daniellaville',
      country_code: 'US',
      postal_code: '36947',
      region: 'Wisconsin',
      region_code: 'NY',
    ),
    created_at: DateTime.iso8601('2020-11-20T03:46:49.837Z'),
    currency: 'USD',
    id: '5d099f4f-0732-4ed8-bab2-99111982e74c',
    lineitems: [],
    metadata: [],
    posted_at: DateTime.iso8601('2022-04-05T17:22:19.738Z'),
    shipping_address: Models::Shared::PropertyAccountingOrderShippingAddress.new(
      address1: '9745 Betty Shore',
      city: 'South Alainaland',
      country_code: 'US',
      postal_code: '25274-7654',
      region: 'New Hampshire',
      region_code: 'LA',
    ),
    status: Models::Shared::AccountingOrderStatus::SUBMITTED,
    total_amount: 0.0,
    type: Models::Shared::AccountingOrderType::PURCHASE,
    updated_at: DateTime.iso8601('2021-06-18T05:51:10.104Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.update_accounting_order(request: req)

unless res.accounting_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::UpdateAccountingOrderRequest](../../models/operations/updateaccountingorderrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::UpdateAccountingOrderResponse)](../../models/operations/updateaccountingorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_paymentterm

Update a paymentterm

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingPaymentterm" method="put" path="/accounting/{connection_id}/paymentterm/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingPaymenttermRequest.new(
  accounting_paymentterm: Models::Shared::AccountingPaymentterm.new(
    category: Models::Shared::Category::STANDARD,
    created_at: DateTime.iso8601('2021-08-22T22:42:42.265Z'),
    day_of_month_due: 4.0,
    description: 'Cogito pecco eos cultura.',
    discount_day_of_month: 13.0,
    discount_days: 4.0,
    discount_percent: 5.0,
    due_days: 57.0,
    due_next_month_days: 9.0,
    id: 'acdabe07-04be-4f73-a80f-0e0c44a47e72',
    is_active: false,
    metadata: [],
    name: 'Net 30',
    type: Models::Shared::AccountingPaymenttermType::NET_15,
    updated_at: DateTime.iso8601('2025-12-14T00:52:14.701Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.update_accounting_paymentterm(request: req)

unless res.accounting_paymentterm.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::UpdateAccountingPaymenttermRequest](../../models/operations/updateaccountingpaymenttermrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::UpdateAccountingPaymenttermResponse)](../../models/operations/updateaccountingpaymenttermresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_project

Update a project

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingProject" method="put" path="/accounting/{connection_id}/project/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingProjectRequest.new(
  accounting_project: Models::Shared::AccountingProject.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.update_accounting_project(request: req)

unless res.accounting_project.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::UpdateAccountingProjectRequest](../../models/operations/updateaccountingprojectrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::UpdateAccountingProjectResponse)](../../models/operations/updateaccountingprojectresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_purchaseorder

Update a purchaseorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingPurchaseorder" method="put" path="/accounting/{connection_id}/purchaseorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingPurchaseorderRequest.new(
  accounting_purchaseorder: Models::Shared::AccountingPurchaseorder.new(
    billing_address: Models::Shared::PropertyAccountingPurchaseorderBillingAddress.new(
      address1: '37214 Tanya Walks',
      city: 'South Annabelleton',
      country_code: 'US',
      postal_code: '30337',
      region: 'Nevada',
      region_code: 'MA',
    ),
    category_ids: [],
    created_at: DateTime.iso8601('2020-12-12T07:17:47.021Z'),
    currency: 'ZMW',
    id: 'd118cce2-44a0-4328-bf59-7259e05d3180',
    lineitems: [],
    metadata: [],
    posted_at: DateTime.iso8601('2025-04-27T10:38:53.438Z'),
    shipping_address: Models::Shared::PropertyAccountingPurchaseorderShippingAddress.new(
      address1: '649 Maggio Overpass',
      city: 'Lake Jaylan',
      country_code: 'US',
      postal_code: '99211-6547',
      region: 'North Carolina',
      region_code: 'ID',
    ),
    status: Models::Shared::AccountingPurchaseorderStatus::PARTIALLY_REFUNDED,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2021-02-26T05:56:03.106Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.update_accounting_purchaseorder(request: req)

unless res.accounting_purchaseorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [Models::Operations::UpdateAccountingPurchaseorderRequest](../../models/operations/updateaccountingpurchaseorderrequest.md) | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |

### Response

**[T.nilable(Models::Operations::UpdateAccountingPurchaseorderResponse)](../../models/operations/updateaccountingpurchaseorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_quote

Update a quote

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingQuote" method="put" path="/accounting/{connection_id}/quote/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingQuoteRequest.new(
  accounting_quote: Models::Shared::AccountingQuote.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.update_accounting_quote(request: req)

unless res.accounting_quote.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::UpdateAccountingQuoteRequest](../../models/operations/updateaccountingquoterequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::UpdateAccountingQuoteResponse)](../../models/operations/updateaccountingquoteresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_salesorder

Update a salesorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingSalesorder" method="put" path="/accounting/{connection_id}/salesorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingSalesorderRequest.new(
  accounting_salesorder: Models::Shared::AccountingSalesorder.new(
    billing_address: Models::Shared::PropertyAccountingSalesorderBillingAddress.new(
      address1: '26530 Stroman Rest',
      address2: 'Suite 801',
      city: 'Pocatello',
      country_code: 'US',
      postal_code: '05015-8546',
      region: 'Louisiana',
      region_code: 'MO',
    ),
    category_ids: [],
    closed_at: DateTime.iso8601('2023-08-17T22:23:55.042Z'),
    created_at: DateTime.iso8601('2022-01-17T16:11:50.310Z'),
    currency: 'ANG',
    discount_amount: 99.0,
    employee_user_id: '4a6b8990-c85a-499f-82d0-5011c3c95a0b',
    fees: [
      Models::Shared::AccountingFee.new(
        amount: 519.0,
        currency: 'XCD',
        type: Models::Shared::AccountingFeeType::PROMOTION,
      ),
    ],
    fulfillment_type: Models::Shared::FulfillmentType::TAKEOUT,
    guest_count: 8.0,
    id: '82afdd80-8627-4a82-80bb-72e1655b3593',
    lineitems: [],
    metadata: [],
    order_number: '988187',
    payments: [],
    posted_at: DateTime.iso8601('2026-01-13T16:17:32.555Z'),
    refunded_amount: 0.0,
    sales_channel: 'Harvey, Collier and Weimann',
    service_charge_amount: 63.0,
    shipping_address: Models::Shared::PropertyAccountingSalesorderShippingAddress.new(
      address1: '9878 Bradley Mill',
      address2: 'Apt. 215',
      city: 'Port Matildestad',
      country_code: 'US',
      postal_code: '07989-2148',
      region: 'Arkansas',
      region_code: 'AK',
    ),
    status: Models::Shared::AccountingSalesorderStatus::REFUNDED,
    subtotal_amount: 0.0,
    tax_amount: 63.0,
    tip_amount: 34.0,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2022-02-10T19:50:55.206Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.update_accounting_salesorder(request: req)

unless res.accounting_salesorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::UpdateAccountingSalesorderRequest](../../models/operations/updateaccountingsalesorderrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::UpdateAccountingSalesorderResponse)](../../models/operations/updateaccountingsalesorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_taxrate

Update a taxrate

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingTaxrate" method="put" path="/accounting/{connection_id}/taxrate/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingTaxrateRequest.new(
  accounting_taxrate: Models::Shared::AccountingTaxrate.new(
    components: [
      Models::Shared::AccountingTaxrateComponent.new(
        is_compound: false,
        name: 'cogo',
        rate: 53.0,
      ),
    ],
    country: 'BY',
    created_at: DateTime.iso8601('2020-01-04T10:37:56.894Z'),
    description: 'Atrox tricesimus creator.',
    effective_rate: 53.0,
    id: '6157a522-08d3-45f7-9287-187fd17fc766',
    is_active: false,
    is_compound: true,
    metadata: [],
    name: 'villa',
    rate: 53.0,
    region: 'TX',
    total_rate: 53.0,
    type: Models::Shared::AccountingTaxrateType::OTHER,
    updated_at: DateTime.iso8601('2022-04-13T10:10:02.150Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.update_accounting_taxrate(request: req)

unless res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::UpdateAccountingTaxrateRequest](../../models/operations/updateaccountingtaxraterequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::UpdateAccountingTaxrateResponse)](../../models/operations/updateaccountingtaxrateresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_transaction

Update a transaction

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingTransaction" method="put" path="/accounting/{connection_id}/transaction/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingTransactionRequest.new(
  accounting_transaction: Models::Shared::AccountingTransaction.new(
    created_at: DateTime.iso8601('2019-09-25T11:40:42.574Z'),
    exchange_rate: 0.5_674,
    id: '149fa846-c137-4a76-850e-1e5bd335bf10',
    lineitems: [
      Models::Shared::AccountingTransactionLineItem.new(
        category_ids: [],
        description: 'The Nikolas Table is the latest in a series of downright products from Beier and Sons',
        id: '66a182d7-5406-4d9d-837d-4d25c59428ad',
        name: 'Salad',
        object_type: 'delicate',
        total_amount: 58_531.0,
        unit_amount: 536.0,
        unit_quantity: 91.0,
      ),
    ],
    memo: 'withdrawal of USD 873.18 at Harber and Sons charged to account ending in 1804 using card ending in ****7022.',
    status: Models::Shared::AccountingTransactionStatus::VOID,
    tax_amount: 0.0,
    total_amount: 94_452.0,
    transaction_at: DateTime.iso8601('2019-09-25T11:40:42.574Z'),
    updated_at: DateTime.iso8601('2021-09-10T23:02:19.731Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.update_accounting_transaction(request: req)

unless res.accounting_transaction.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::UpdateAccountingTransactionRequest](../../models/operations/updateaccountingtransactionrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::UpdateAccountingTransactionResponse)](../../models/operations/updateaccountingtransactionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_vendorcredit

Update a vendorcredit

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingVendorcredit" method="put" path="/accounting/{connection_id}/vendorcredit/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingVendorcreditRequest.new(
  accounting_vendorcredit: Models::Shared::AccountingVendorcredit.new(
    applications: [],
    apply_amount: 1.0,
    balance_amount: 0.0,
    created_at: DateTime.iso8601('2023-04-15T21:14:08.197Z'),
    currency: 'KGS',
    due_at: DateTime.iso8601('2023-05-06T20:38:46.775Z'),
    id: 'f037c8ee-fc51-466e-b5c7-85bfcaec147f',
    lineitems: [],
    metadata: [],
    notes: 'Conatus cruciamentum decor avaritia tantum.',
    posted_at: DateTime.iso8601('2023-09-29T02:22:24.987Z'),
    status: Models::Shared::AccountingVendorcreditStatus::SUBMITTED,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2023-11-27T03:40:07.012Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.accounting.update_accounting_vendorcredit(request: req)

unless res.accounting_vendorcredit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [Models::Operations::UpdateAccountingVendorcreditRequest](../../models/operations/updateaccountingvendorcreditrequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |

### Response

**[T.nilable(Models::Operations::UpdateAccountingVendorcreditResponse)](../../models/operations/updateaccountingvendorcreditresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |