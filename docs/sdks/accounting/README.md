# Accounting

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
* [create_accounting_expensereport](#create_accounting_expensereport) - Create an expensereport
* [create_accounting_invoice](#create_accounting_invoice) - Create an invoice
* [create_accounting_journal](#create_accounting_journal) - Create a journal
* [~~create_accounting_order~~](#create_accounting_order) - Create an order :warning: **Deprecated**
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
* [get_accounting_expensereport](#get_accounting_expensereport) - Retrieve an expensereport
* [get_accounting_invoice](#get_accounting_invoice) - Retrieve an invoice
* [get_accounting_journal](#get_accounting_journal) - Retrieve a journal
* [~~get_accounting_order~~](#get_accounting_order) - Retrieve an order :warning: **Deprecated**
* [get_accounting_organization](#get_accounting_organization) - Retrieve an organization
* [get_accounting_paymentterm](#get_accounting_paymentterm) - Retrieve a paymentterm
* [get_accounting_profitloss](#get_accounting_profitloss) - Retrieve a profitloss
* [get_accounting_project](#get_accounting_project) - Retrieve a project
* [get_accounting_purchaseorder](#get_accounting_purchaseorder) - Retrieve a purchaseorder
* [get_accounting_purchasereceipt](#get_accounting_purchasereceipt) - Retrieve a purchasereceipt
* [get_accounting_quote](#get_accounting_quote) - Retrieve a quote
* [get_accounting_salesorder](#get_accounting_salesorder) - Retrieve a salesorder
* [get_accounting_salesreceipt](#get_accounting_salesreceipt) - Retrieve a salesreceipt
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
* [list_accounting_expensereports](#list_accounting_expensereports) - List all expensereports
* [list_accounting_expenses](#list_accounting_expenses) - List all expenses
* [list_accounting_invoices](#list_accounting_invoices) - List all invoices
* [list_accounting_journals](#list_accounting_journals) - List all journals
* [~~list_accounting_orders~~](#list_accounting_orders) - List all orders :warning: **Deprecated**
* [list_accounting_organizations](#list_accounting_organizations) - List all organizations
* [list_accounting_paymentterms](#list_accounting_paymentterms) - List all paymentterms
* [list_accounting_profitlosses](#list_accounting_profitlosses) - List all profitlosses
* [list_accounting_projects](#list_accounting_projects) - List all projects
* [list_accounting_purchaseorders](#list_accounting_purchaseorders) - List all purchaseorders
* [list_accounting_purchasereceipts](#list_accounting_purchasereceipts) - List all purchasereceipts
* [list_accounting_quotes](#list_accounting_quotes) - List all quotes
* [list_accounting_salesorders](#list_accounting_salesorders) - List all salesorders
* [list_accounting_salesreceipts](#list_accounting_salesreceipts) - List all salesreceipts
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
* [patch_accounting_expensereport](#patch_accounting_expensereport) - Update an expensereport
* [patch_accounting_invoice](#patch_accounting_invoice) - Update an invoice
* [patch_accounting_journal](#patch_accounting_journal) - Update a journal
* [~~patch_accounting_order~~](#patch_accounting_order) - Update an order :warning: **Deprecated**
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
* [remove_accounting_expensereport](#remove_accounting_expensereport) - Remove an expensereport
* [remove_accounting_invoice](#remove_accounting_invoice) - Remove an invoice
* [remove_accounting_journal](#remove_accounting_journal) - Remove a journal
* [~~remove_accounting_order~~](#remove_accounting_order) - Remove an order :warning: **Deprecated**
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
* [update_accounting_expensereport](#update_accounting_expensereport) - Update an expensereport
* [update_accounting_invoice](#update_accounting_invoice) - Update an invoice
* [update_accounting_journal](#update_accounting_journal) - Update a journal
* [~~update_accounting_order~~](#update_accounting_order) - Update an order :warning: **Deprecated**
* [update_accounting_paymentterm](#update_accounting_paymentterm) - Update a paymentterm
* [update_accounting_project](#update_accounting_project) - Update a project
* [update_accounting_purchaseorder](#update_accounting_purchaseorder) - Update a purchaseorder
* [update_accounting_quote](#update_accounting_quote) - Update a quote
* [update_accounting_salesorder](#update_accounting_salesorder) - Update a salesorder
* [update_accounting_taxrate](#update_accounting_taxrate) - Update a taxrate
* [update_accounting_transaction](#update_accounting_transaction) - Update a transaction
* [update_accounting_vendorcredit](#update_accounting_vendorcredit) - Update a vendorcredit

## create_accounting_account

Creates a AccountingAccount. Provide the unified AccountingAccount fields in the request body; they are mapped to the provider's API. Returns the created AccountingAccount.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingAccount" method="post" path="/accounting/{connection_id}/account" example="accounting_account" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.accounting.create_accounting_account(accounting_account: Models::Shared::AccountingAccount.new(
  balance: 12_092.0,
  created_at: DateTime.iso8601('2022-07-03T17:57:07.391Z'),
  currency: 'CAD',
  customer_defined_code: '6170',
  description: 'Comedo vilitas harum cupiditate animus quo iste.',
  id: '817dfe59-5f90-4cdd-9c19-bc8124a95e84',
  is_payable: false,
  metadata: [],
  name: 'Savings Account',
  status: Models::Shared::Status::ARCHIVED,
  taxonomy: [
    Models::Shared::AccountingAccountTaxonomy.new(
      original_type: 'peccatus',
      type: Models::Shared::AccountingAccountTaxonomyType::SUBGROUP,
      value: 'vesper'
    ),
  ],
  type: Models::Shared::Type::ACCOUNTS_RECEIVABLE,
  updated_at: DateTime.iso8601('2023-08-16T01:01:45.447Z')
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

Creates a AccountingBankfeedaccount. Provide the unified AccountingBankfeedaccount fields in the request body; they are mapped to the provider's API. Returns the created AccountingBankfeedaccount.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingBankfeedaccount" method="post" path="/accounting/{connection_id}/bankfeedaccount" example="accounting_bankfeedaccount" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.accounting.create_accounting_bankfeedaccount(accounting_bankfeedaccount: Models::Shared::AccountingBankfeedaccount.new(
  account_number: '69722811',
  account_number_last4: '2811',
  account_type: Models::Shared::AccountType::LOAN,
  balance: 49_437.0,
  bank_name: 'Wells Fargo',
  created_at: DateTime.iso8601('2022-10-31T16:42:19.277Z'),
  currency: 'AUD',
  feed_start_at: DateTime.iso8601('2022-10-31T16:42:19.277Z'),
  id: '6ed979fa-b74e-443f-b802-fbe1f320f8fc',
  metadata: [],
  name: 'Kirlin - Rowe Checking',
  routing_number: '104153154',
  status: Models::Shared::AccountingBankfeedaccountStatus::ACTIVE,
  updated_at: DateTime.iso8601('2024-05-07T05:18:29.723Z')
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

Creates a AccountingBankfeedtransaction. Provide the unified AccountingBankfeedtransaction fields in the request body; they are mapped to the provider's API. Returns the created AccountingBankfeedtransaction.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingBankfeedtransaction" method="post" path="/accounting/{connection_id}/bankfeedtransaction" example="accounting_bankfeedtransaction" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.accounting.create_accounting_bankfeedtransaction(accounting_bankfeedtransaction: Models::Shared::AccountingBankfeedtransaction.new(
  amount: 60_889.0,
  bank_category: 'Beauty',
  category_ids: [],
  created_at: DateTime.iso8601('2022-03-24T23:41:08.374Z'),
  currency: 'CAD',
  description: 'deposit processed at Renner - Quigley for SSP 824.35, using card ending ****1112. Account: ***7957.',
  id: 'f5a49686-9bf6-4289-ae5c-21b5addbdadd',
  is_pending: true,
  merchant_name: 'McKenzie Inc',
  metadata: [],
  posted_at: DateTime.iso8601('2025-05-08T20:41:50.455Z'),
  reference: '09339705',
  transaction_at: DateTime.iso8601('2022-08-02T01:56:04.077Z'),
  type: Models::Shared::AccountingBankfeedtransactionType::CREDIT,
  updated_at: DateTime.iso8601('2022-05-26T09:17:18.305Z')
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

Creates a AccountingBill. Provide the unified AccountingBill fields in the request body; they are mapped to the provider's API. Returns the created AccountingBill.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingBill" method="post" path="/accounting/{connection_id}/bill" example="accounting_bill" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.accounting.create_accounting_bill(accounting_bill: Models::Shared::AccountingBill.new(
  attachments: [
    Models::Shared::AccountingAttachment.new(
      download_url: 'https://mixed-flame.biz',
      id: 'f5c17819-7620-49ce-b843-08f3e826bb7b',
      mime_type: 'application/pdf',
      name: 'BILL-2466.pdf'
    ),
    Models::Shared::AccountingAttachment.new(
      download_url: 'https://minor-testimonial.biz',
      id: 'd53c3116-16b3-404c-8cb7-a3e90c067157',
      mime_type: 'application/pdf',
      name: 'BILL-2466-1.pdf'
    ),
  ],
  balance_amount: 0.0,
  bill_number: 'BILL-2466',
  category_ids: [],
  created_at: DateTime.iso8601('2019-08-08T23:03:14.104Z'),
  currency: 'USD',
  discount_amount: 0.0,
  due_at: DateTime.iso8601('2019-09-07T23:03:14.104Z'),
  extended_notes: [],
  id: 'd71eb48f-8820-4d99-a476-f486a7a360f4',
  lineitems: [],
  metadata: [],
  notes: 'Cilicium infit amissio ante demulceo annus defluo tumultus.',
  paid_amount: 0.0,
  paid_at: DateTime.iso8601('2019-08-15T17:24:28.313Z'),
  payment_collection_method: Models::Shared::PaymentCollectionMethod::CHARGE_AUTOMATICALLY,
  payments: [],
  posted_at: DateTime.iso8601('2019-08-08T23:03:14.104Z'),
  purchaseorder_ids: [],
  send: true,
  status: Models::Shared::AccountingBillStatus::PARTIALLY_PAID,
  sub_total_amount: 0.0,
  tax_amount: 0.0,
  term: Models::Shared::Term::NET_90,
  total_amount: 0.0,
  updated_at: DateTime.iso8601('2020-06-05T05:21:54.161Z'),
  url: 'https://utilized-partridge.info/bills/BILL-2466'
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

Creates a AccountingCategory. Provide the unified AccountingCategory fields in the request body; they are mapped to the provider's API. Returns the created AccountingCategory.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingCategory" method="post" path="/accounting/{connection_id}/category" example="accounting_category" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.accounting.create_accounting_category(accounting_category: Models::Shared::AccountingCategory.new(
  created_at: DateTime.iso8601('2023-05-30T12:29:04.257Z'),
  description: 'Labore basium corrumpo crinis ars subito pecto.',
  id: '0727a962-7c64-497a-8ef2-c41bdffb34d1',
  is_active: false,
  metadata: [],
  name: 'Automotive',
  updated_at: DateTime.iso8601('2025-10-05T17:29:09.391Z')
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

Creates a AccountingContact. Provide the unified AccountingContact fields in the request body; they are mapped to the provider's API. Returns the created AccountingContact.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingContact" method="post" path="/accounting/{connection_id}/contact" example="accounting_contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.accounting.create_accounting_contact(accounting_contact: Models::Shared::AccountingContact.new(
  associated_contacts: [],
  balance_amount: 55_574.0,
  billing_address: Models::Shared::PropertyAccountingContactBillingAddress.new(
    address1: '9171 Parisian Gateway',
    city: 'Lake Keltonboro',
    country_code: 'US',
    postal_code: '70131-2908',
    region: 'Illinois',
    region_code: 'CO'
  ),
  company_name: 'Rice LLC',
  created_at: DateTime.iso8601('2021-08-15T14:56:50.258Z'),
  currency: 'AUD',
  emails: [
    Models::Shared::AccountingEmail.new(
      email: 'michele.breitenberg@ricellc.com',
      type: Models::Shared::AccountingEmailType::WORK
    ),
    Models::Shared::AccountingEmail.new(
      email: 'accounts@ricellc.com',
      type: Models::Shared::AccountingEmailType::OTHER
    ),
  ],
  first_name: 'Michele',
  id: '6337ea8f-1637-4996-947c-6216c14be4d8',
  identification: '508720595',
  is_active: true,
  is_customer: true,
  last_name: 'Breitenberg',
  metadata: [],
  name: 'Rice LLC',
  notes: 'Tabella reprehenderit sono corrupti approbo crastinus sopor ultra.',
  payment_methods: [
    Models::Shared::AccountingContactPaymentMethod.new(
      default: true,
      id: 'f9975245-6c3c-4481-8bc9-05b3df379b0f',
      name: 'Visa 5318',
      type: Models::Shared::AccountingContactPaymentMethodType::CARD
    ),
  ],
  portal_url: 'https://ricellc.com/billing',
  shipping_address: Models::Shared::PropertyAccountingContactShippingAddress.new(
    address1: '786 Dare Meadows',
    city: 'Phoenix',
    country_code: 'US',
    postal_code: '68675',
    region: 'Tennessee',
    region_code: 'NE'
  ),
  tax_exemption: Models::Shared::TaxExemption::FOREIGN,
  tax_number: '564107844',
  telephones: [
    Models::Shared::AccountingTelephone.new(
      telephone: '(217) 260-4409',
      type: Models::Shared::AccountingTelephoneType::FAX
    ),
  ],
  updated_at: DateTime.iso8601('2024-01-05T03:17:37.181Z'),
  website: 'https://ricellc.com'
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

Creates a AccountingCreditmemo. Provide the unified AccountingCreditmemo fields in the request body; they are mapped to the provider's API. Returns the created AccountingCreditmemo.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingCreditmemo" method="post" path="/accounting/{connection_id}/creditmemo" example="accounting_creditmemo" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.accounting.create_accounting_creditmemo(accounting_creditmemo: Models::Shared::AccountingCreditmemo.new(
  applications: [],
  attachments: [],
  balance_amount: 0.0,
  created_at: DateTime.iso8601('2023-09-20T01:47:01.571Z'),
  creditmemo_number: 'CM-99537',
  currency: 'AUD',
  discount_amount: 0.0,
  id: '3d5bb4e2-c115-431b-b937-b0d858c43dd0',
  lineitems: [],
  metadata: [],
  notes: 'Amo adfero torqueo quas victoria.',
  posted_at: DateTime.iso8601('2023-09-20T01:47:01.571Z'),
  send: true,
  status: Models::Shared::AccountingCreditmemoStatus::AUTHORIZED,
  tax_amount: 0.0,
  total_amount: 0.0,
  updated_at: DateTime.iso8601('2025-10-04T08:59:55.017Z')
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

Creates a AccountingExpense. Provide the unified AccountingExpense fields in the request body; they are mapped to the provider's API. Returns the created AccountingExpense.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingExpense" method="post" path="/accounting/{connection_id}/expense" example="accounting_expense" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.accounting.create_accounting_expense(accounting_expense: Models::Shared::AccountingExpense.new(
  attachments: [
    Models::Shared::AccountingAttachment.new(
      download_url: 'https://avaricious-larva.biz',
      id: '0c4a1021-8e83-4849-8c1c-e0c1f944aa63',
      mime_type: 'application/pdf',
      name: 'receipt-9696.pdf'
    ),
    Models::Shared::AccountingAttachment.new(
      download_url: 'https://precious-comparison.net/',
      id: 'a00403c6-4d9f-4ba4-8519-53f6e6082f8a',
      mime_type: 'application/pdf',
      name: 'receipt-9696-1.pdf'
    ),
  ],
  category_ids: [],
  created_at: DateTime.iso8601('2020-06-11T03:39:37.305Z'),
  currency: 'GBP',
  external_number: 'EXP-38303',
  id: '89666e06-328c-457d-808e-af5ecff65169',
  lineitems: [
    Models::Shared::AccountingLineitem.new(
      id: '66938c30-b13c-4aa1-8fad-5909ce3a867f',
      item_name: 'Client dinner',
      tax_amount: 0.0,
      total_amount: 364.74,
      unit_amount: 364.74,
      unit_quantity: 1.0
    ),
    Models::Shared::AccountingLineitem.new(
      id: '39ba545b-afb2-4bab-a8e3-af903a6eaede',
      item_name: 'Client dinner',
      tax_amount: 0.0,
      total_amount: 258.35,
      unit_amount: 258.35,
      unit_quantity: 1.0
    ),
    Models::Shared::AccountingLineitem.new(
      id: 'e5246f5f-b8d6-4ea4-aa84-168d0d3812fd',
      item_name: 'Conference ticket',
      notes: 'Sint spiculum carcer ago charisma.',
      tax_amount: 0.0,
      total_amount: 28.14,
      unit_amount: 28.14,
      unit_quantity: 1.0
    ),
    Models::Shared::AccountingLineitem.new(
      id: '921ec444-3d71-413c-8f6e-3d5134eb0b31',
      item_name: 'Hotel',
      tax_amount: 0.0,
      total_amount: 157.04,
      unit_amount: 157.04,
      unit_quantity: 1.0
    ),
    Models::Shared::AccountingLineitem.new(
      id: '38a1de1f-6ef8-4934-ba4f-98aac4046f5a',
      item_name: 'Hotel',
      tax_amount: 0.0,
      total_amount: 164.02,
      unit_amount: 164.02,
      unit_quantity: 1.0
    ),
  ],
  metadata: [],
  name: 'A deposit for KPW 867.85 was made at Kohler LLC via card ending ****1416 on account ***1040.',
  payment_method: 'CASH',
  posted_at: DateTime.iso8601('2020-06-11T03:39:37.305Z'),
  status: Models::Shared::AccountingExpenseStatus::SUBMITTED,
  tax_amount: 0.0,
  total_amount: 972.29,
  type: Models::Shared::AccountingExpenseType::COMPANY,
  updated_at: DateTime.iso8601('2020-09-03T14:10:33.151Z')
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

## create_accounting_expensereport

Creates a AccountingExpensereport. Provide the unified AccountingExpensereport fields in the request body; they are mapped to the provider's API. Returns the created AccountingExpensereport.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingExpensereport" method="post" path="/accounting/{connection_id}/expensereport" example="accounting_expensereport" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.accounting.create_accounting_expensereport(accounting_expensereport: Models::Shared::AccountingExpensereport.new(
  approved_at: DateTime.iso8601('2021-04-24T11:41:18.199Z'),
  attachments: [],
  category_ids: [],
  created_at: DateTime.iso8601('2020-05-29T02:04:59.078Z'),
  currency: 'GBP',
  external_number: 'ER-31240',
  id: '928969e0-0c84-4eaf-8fdf-578063f89a18',
  lineitems: [
    Models::Shared::AccountingLineitem.new(
      id: '4bac50cb-85d8-4a03-b309-8587a042f366',
      item_name: 'Conference ticket',
      tax_amount: 0.0,
      total_amount: 39.9,
      unit_amount: 39.9,
      unit_quantity: 1.0
    ),
    Models::Shared::AccountingLineitem.new(
      id: 'd390d6c1-49e7-4523-83b2-116a83b5c021',
      item_name: 'Flight',
      notes: 'Aliquam soluta omnis dolor.',
      tax_amount: 0.0,
      total_amount: 193.17,
      unit_amount: 193.17,
      unit_quantity: 1.0
    ),
    Models::Shared::AccountingLineitem.new(
      id: '0827d064-b435-4ae9-b84a-a1f964914636',
      item_name: 'Client dinner',
      notes: 'Altus caveo capio.',
      tax_amount: 0.0,
      total_amount: 230.12,
      unit_amount: 230.12,
      unit_quantity: 1.0
    ),
    Models::Shared::AccountingLineitem.new(
      id: 'f64be73a-6e85-464e-9b79-b41005e2aeea',
      item_name: 'Flight',
      tax_amount: 0.0,
      total_amount: 445.27,
      unit_amount: 445.27,
      unit_quantity: 1.0
    ),
  ],
  metadata: [],
  name: 'Jamil Christiansen - October expenses',
  posted_at: DateTime.iso8601('2020-05-29T02:04:59.078Z'),
  reimbursed_amount: 908.46,
  reimbursed_at: DateTime.iso8601('2021-04-24T11:41:18.199Z'),
  status: Models::Shared::AccountingExpensereportStatus::PAID,
  tax_amount: 0.0,
  total_amount: 908.46,
  updated_at: DateTime.iso8601('2021-04-24T11:41:18.199Z')
), connection_id: '<id>')

unless res.accounting_expensereport.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                               | Type                                                                                                                                                    | Required                                                                                                                                                | Description                                                                                                                                             |
| ------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `accounting_expensereport`                                                                                                                              | [Models::Shared::AccountingExpensereport](../../models/shared/accountingexpensereport.md)                                                               | :heavy_check_mark:                                                                                                                                      | N/A                                                                                                                                                     |
| `connection_id`                                                                                                                                         | *::String*                                                                                                                                              | :heavy_check_mark:                                                                                                                                      | ID of the connection                                                                                                                                    |
| `fields_`                                                                                                                                               | T::Array<[Models::Operations::CreateAccountingExpensereportQueryParamFields](../../models/operations/createaccountingexpensereportqueryparamfields.md)> | :heavy_minus_sign:                                                                                                                                      | Fields to return                                                                                                                                        |
| `raw`                                                                                                                                                   | *T.nilable(::String)*                                                                                                                                   | :heavy_minus_sign:                                                                                                                                      | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar        |

### Response

**[T.nilable(Models::Operations::CreateAccountingExpensereportResponse)](../../models/operations/createaccountingexpensereportresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_accounting_invoice

Creates a AccountingInvoice. Provide the unified AccountingInvoice fields in the request body; they are mapped to the provider's API. Returns the created AccountingInvoice.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingInvoice" method="post" path="/accounting/{connection_id}/invoice" example="accounting_invoice" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.accounting.create_accounting_invoice(accounting_invoice: Models::Shared::AccountingInvoice.new(
  attachments: [
    Models::Shared::AccountingAttachment.new(
      download_url: 'https://simplistic-translation.com',
      id: '2e23b892-ccdd-4ffd-bcdd-2f55d12432d0',
      mime_type: 'application/pdf',
      name: 'INV-77705.pdf'
    ),
    Models::Shared::AccountingAttachment.new(
      download_url: 'https://squiggly-amnesty.name/',
      id: '21381459-89fa-4312-8c3c-385198288569',
      mime_type: 'application/pdf',
      name: 'INV-77705-1.pdf'
    ),
  ],
  balance_amount: 0.0,
  category_ids: [],
  created_at: DateTime.iso8601('2022-11-07T14:17:29.587Z'),
  currency: 'GBP',
  discount_amount: 0.0,
  due_at: DateTime.iso8601('2022-12-07T14:17:29.587Z'),
  extended_notes: [],
  id: '232d704e-8fe0-471d-8fd0-15a7df8911e9',
  invoice_number: 'INV-77705',
  is_inclusive_of_tax: false,
  lineitems: [],
  metadata: [],
  notes: 'Auctus comburo clarus ubi deprimo comburo vulgus.',
  payment_collection_method: Models::Shared::AccountingInvoicePaymentCollectionMethod::CHARGE_AUTOMATICALLY,
  payments: [],
  posted_at: DateTime.iso8601('2022-11-07T14:17:29.587Z'),
  reference: 'PO-2331',
  salesorder_ids: [],
  send: true,
  status: Models::Shared::AccountingInvoiceStatus::OVERDUE,
  sub_total_amount: 0.0,
  tax_amount: 0.0,
  term: Models::Shared::AccountingInvoiceTerm::NET_25,
  total_amount: 0.0,
  type: Models::Shared::AccountingInvoiceType::INVOICE,
  updated_at: DateTime.iso8601('2026-05-25T00:04:53.312Z'),
  url: 'https://helpful-exterior.com/invoices/INV-77705'
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

Creates a AccountingJournal. Provide the unified AccountingJournal fields in the request body; they are mapped to the provider's API. Returns the created AccountingJournal.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingJournal" method="post" path="/accounting/{connection_id}/journal" example="accounting_journal" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.accounting.create_accounting_journal(accounting_journal: Models::Shared::AccountingJournal.new(
  attachments: [],
  category_ids: [],
  created_at: DateTime.iso8601('2020-02-20T15:14:55.881Z'),
  currency: 'CAD',
  description: 'Constans adipisci.',
  id: '8cb08287-bcb3-4da0-993a-61fa6bdabb7f',
  is_inclusive_of_tax: true,
  lineitems: [],
  metadata: [],
  posted_at: DateTime.iso8601('2023-11-26T10:54:49.740Z'),
  reference: 'JE-78884',
  source: 'crustulum',
  status: Models::Shared::AccountingJournalStatus::VOID,
  total_amount: 0.0,
  updated_at: DateTime.iso8601('2022-01-21T00:21:40.368Z')
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

## ~~create_accounting_order~~

Creates a AccountingOrder. Provide the unified AccountingOrder fields in the request body; they are mapped to the provider's API. Returns the created AccountingOrder.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingOrder" method="post" path="/accounting/{connection_id}/order" example="accounting_order" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.accounting.create_accounting_order(accounting_order: Models::Shared::AccountingOrder.new(
  billing_address: Models::Shared::PropertyAccountingOrderBillingAddress.new(
    address1: '125 Hayden Highway',
    city: 'Altoona',
    country_code: 'US',
    postal_code: '94706-7691',
    region: 'Louisiana',
    region_code: 'VT'
  ),
  created_at: DateTime.iso8601('2020-11-20T03:46:49.837Z'),
  currency: 'GBP',
  id: '07e53e6f-89b9-4048-9d08-b94408b5b921',
  lineitems: [],
  metadata: [],
  posted_at: DateTime.iso8601('2020-11-20T03:46:49.837Z'),
  shipping_address: Models::Shared::PropertyAccountingOrderShippingAddress.new(
    address1: '450 Garett Mall',
    city: 'New Kamronburgh',
    country_code: 'US',
    postal_code: '76546',
    region: 'Oregon',
    region_code: 'VA'
  ),
  status: Models::Shared::AccountingOrderStatus::AUTHORIZED,
  total_amount: 0.0,
  type: Models::Shared::AccountingOrderType::SALES,
  updated_at: DateTime.iso8601('2022-02-15T17:04:37.203Z')
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

Creates a AccountingPaymentterm. Provide the unified AccountingPaymentterm fields in the request body; they are mapped to the provider's API. Returns the created AccountingPaymentterm.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingPaymentterm" method="post" path="/accounting/{connection_id}/paymentterm" example="accounting_paymentterm" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.accounting.create_accounting_paymentterm(accounting_paymentterm: Models::Shared::AccountingPaymentterm.new(
  category: Models::Shared::Category::STANDARD,
  created_at: DateTime.iso8601('2021-08-22T22:42:42.265Z'),
  day_of_month_due: 4.0,
  description: 'Cultura cena claustrum.',
  discount_day_of_month: 13.0,
  discount_days: 4.0,
  discount_percent: 5.0,
  due_days: 57.0,
  due_next_month_days: 9.0,
  id: '6cc8c2a0-9c6a-4e17-bce8-0e21bf4d01d2',
  is_active: false,
  metadata: [],
  name: 'Net 30',
  type: Models::Shared::AccountingPaymenttermType::NET_15,
  updated_at: DateTime.iso8601('2026-02-07T23:24:22.093Z')
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

Creates a AccountingProject. Provide the unified AccountingProject fields in the request body; they are mapped to the provider's API. Returns the created AccountingProject.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingProject" method="post" path="/accounting/{connection_id}/project" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.accounting.create_accounting_project(accounting_project: Models::Shared::AccountingProject.new, connection_id: '<id>')

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

Creates a AccountingPurchaseorder. Provide the unified AccountingPurchaseorder fields in the request body; they are mapped to the provider's API. Returns the created AccountingPurchaseorder.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingPurchaseorder" method="post" path="/accounting/{connection_id}/purchaseorder" example="accounting_purchaseorder" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.accounting.create_accounting_purchaseorder(accounting_purchaseorder: Models::Shared::AccountingPurchaseorder.new(
  attachments: [],
  billing_address: Models::Shared::PropertyAccountingPurchaseorderBillingAddress.new(
    address1: '37214 Golden Via',
    address2: 'Suite 713',
    city: 'North Eltontown',
    country_code: 'US',
    postal_code: '75366',
    region: 'Kentucky',
    region_code: 'MA'
  ),
  category_ids: [],
  created_at: DateTime.iso8601('2020-12-12T07:17:47.021Z'),
  currency: 'EUR',
  id: 'd0e48e5a-1f50-41bf-b39d-ccc087ac43cf',
  lineitems: [],
  metadata: [],
  posted_at: DateTime.iso8601('2020-12-12T07:17:47.021Z'),
  shipping_address: Models::Shared::PropertyAccountingPurchaseorderShippingAddress.new(
    address1: '9455 Brad Forks',
    city: 'Washington',
    country_code: 'US',
    postal_code: '16547',
    region: 'Idaho',
    region_code: 'NY'
  ),
  status: Models::Shared::AccountingPurchaseorderStatus::SUBMITTED,
  total_amount: 0.0,
  updated_at: DateTime.iso8601('2021-08-15T07:37:28.009Z')
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

Creates a AccountingQuote. Provide the unified AccountingQuote fields in the request body; they are mapped to the provider's API. Returns the created AccountingQuote.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingQuote" method="post" path="/accounting/{connection_id}/quote" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.accounting.create_accounting_quote(accounting_quote: Models::Shared::AccountingQuote.new, connection_id: '<id>')

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

Creates a AccountingSalesorder. Provide the unified AccountingSalesorder fields in the request body; they are mapped to the provider's API. Returns the created AccountingSalesorder.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingSalesorder" method="post" path="/accounting/{connection_id}/salesorder" example="accounting_salesorder" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.accounting.create_accounting_salesorder(accounting_salesorder: Models::Shared::AccountingSalesorder.new(
  billing_address: Models::Shared::PropertyAccountingSalesorderBillingAddress.new(
    address1: '1487 Valley Road',
    address2: 'Apt. 287',
    city: 'Lake Angelina',
    country_code: 'US',
    postal_code: '85469-3199',
    region: 'Georgia',
    region_code: 'MT'
  ),
  category_ids: [],
  closed_at: DateTime.iso8601('2023-04-03T11:27:22.116Z'),
  created_at: DateTime.iso8601('2022-01-17T16:11:50.310Z'),
  currency: 'USD',
  discount_amount: 0.0,
  fees: [],
  fulfillment_type: Models::Shared::FulfillmentType::OTHER,
  id: '8eca044e-0062-4b76-8e2e-40f87ec0d5fb',
  lineitems: [],
  metadata: [],
  order_number: '832663',
  paid_amount: 0.0,
  payments: [],
  posted_at: DateTime.iso8601('2022-01-17T16:11:50.310Z'),
  refunded_amount: 0.0,
  sales_channel: 'Wholesale',
  service_charge_amount: 0.0,
  shipping_address: Models::Shared::PropertyAccountingSalesorderShippingAddress.new(
    address1: '781 Darrell Coves',
    city: 'Annabelfield',
    country_code: 'US',
    postal_code: '92148-4116',
    region: 'Virginia',
    region_code: 'WI'
  ),
  status: Models::Shared::AccountingSalesorderStatus::PAID,
  subtotal_amount: 0.0,
  tax_amount: 0.0,
  tip_amount: 0.0,
  total_amount: 0.0,
  updated_at: DateTime.iso8601('2023-04-03T11:27:22.116Z')
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

Creates a AccountingTaxrate. Provide the unified AccountingTaxrate fields in the request body; they are mapped to the provider's API. Returns the created AccountingTaxrate.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingTaxrate" method="post" path="/accounting/{connection_id}/taxrate" example="accounting_taxrate" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.accounting.create_accounting_taxrate(accounting_taxrate: Models::Shared::AccountingTaxrate.new(
  components: [
    Models::Shared::AccountingTaxrateComponent.new(
      is_compound: false,
      name: 'Exempt',
      rate: 0.0
    ),
  ],
  country: 'US',
  created_at: DateTime.iso8601('2020-01-04T10:37:56.894Z'),
  description: 'Exempt (0%)',
  effective_rate: 0.0,
  id: '159002f0-2d60-4394-8b45-db90f2c63304',
  is_active: false,
  is_compound: false,
  metadata: [],
  name: 'Exempt',
  rate: 0.0,
  region: 'FL',
  total_rate: 0.0,
  type: Models::Shared::AccountingTaxrateType::SALES,
  updated_at: DateTime.iso8601('2020-02-13T18:59:38.199Z')
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

Creates a AccountingTransaction. Provide the unified AccountingTransaction fields in the request body; they are mapped to the provider's API. Returns the created AccountingTransaction.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingTransaction" method="post" path="/accounting/{connection_id}/transaction" example="accounting_transaction" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.accounting.create_accounting_transaction(accounting_transaction: Models::Shared::AccountingTransaction.new(
  created_at: DateTime.iso8601('2019-09-25T11:40:42.574Z'),
  id: 'b6e6f247-7783-4f8b-ba8f-cbfbd90666a5',
  lineitems: [
    Models::Shared::AccountingTransactionLineItem.new(
      category_ids: [],
      description: 'The Wilma Car is the latest in a series of beneficial products from Fritsch Group',
      id: '4d6317ad-e55d-4133-87ae-50d5b3fae594',
      name: 'Table',
      total_amount: 10_184.0,
      unit_amount: 536.0,
      unit_quantity: 19.0
    ),
  ],
  memo: 'withdrawal confirmed at Doyle, White and Conroy for FJD 391.94, card ending in ****0497 associated with account ***6676.',
  status: Models::Shared::AccountingTransactionStatus::PENDING,
  tax_amount: 0.0,
  total_amount: 10_184.0,
  transaction_at: DateTime.iso8601('2019-09-25T11:40:42.574Z'),
  updated_at: DateTime.iso8601('2019-10-14T12:24:46.426Z')
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

Creates a AccountingVendorcredit. Provide the unified AccountingVendorcredit fields in the request body; they are mapped to the provider's API. Returns the created AccountingVendorcredit.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingVendorcredit" method="post" path="/accounting/{connection_id}/vendorcredit" example="accounting_vendorcredit" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.accounting.create_accounting_vendorcredit(accounting_vendorcredit: Models::Shared::AccountingVendorcredit.new(
  applications: [],
  balance_amount: 0.0,
  created_at: DateTime.iso8601('2023-04-15T21:14:08.197Z'),
  currency: 'USD',
  id: '5a175945-3e0f-4c7b-af69-158814af6816',
  lineitems: [],
  metadata: [],
  notes: 'Avaritia tantum campana comitatus atrox.',
  posted_at: DateTime.iso8601('2023-04-15T21:14:08.197Z'),
  status: Models::Shared::AccountingVendorcreditStatus::AUTHORIZED,
  total_amount: 0.0,
  updated_at: DateTime.iso8601('2023-10-07T20:03:55.210Z')
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

Retrieves a single AccountingAccount by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingAccount" method="get" path="/accounting/{connection_id}/account/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AccountingAgedpayable by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingAgedpayable" method="get" path="/accounting/{connection_id}/agedpayable/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AccountingAgedreceivable by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingAgedreceivable" method="get" path="/accounting/{connection_id}/agedreceivable/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AccountingBalancesheet by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingBalancesheet" method="get" path="/accounting/{connection_id}/balancesheet/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AccountingBankfeedaccount by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingBankfeedaccount" method="get" path="/accounting/{connection_id}/bankfeedaccount/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AccountingBankfeedtransaction by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingBankfeedtransaction" method="get" path="/accounting/{connection_id}/bankfeedtransaction/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AccountingBill by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingBill" method="get" path="/accounting/{connection_id}/bill/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AccountingCashflow by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingCashflow" method="get" path="/accounting/{connection_id}/cashflow/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AccountingCategory by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingCategory" method="get" path="/accounting/{connection_id}/category/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AccountingContact by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingContact" method="get" path="/accounting/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AccountingCreditmemo by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingCreditmemo" method="get" path="/accounting/{connection_id}/creditmemo/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AccountingExpense by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingExpense" method="get" path="/accounting/{connection_id}/expense/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

## get_accounting_expensereport

Retrieves a single AccountingExpensereport by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingExpensereport" method="get" path="/accounting/{connection_id}/expensereport/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.accounting.get_accounting_expensereport(connection_id: '<id>', id: '<id>')

unless res.accounting_expensereport.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                         | Type                                                                                                                                              | Required                                                                                                                                          | Description                                                                                                                                       |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                                                                   | *::String*                                                                                                                                        | :heavy_check_mark:                                                                                                                                | ID of the connection                                                                                                                              |
| `id`                                                                                                                                              | *::String*                                                                                                                                        | :heavy_check_mark:                                                                                                                                | ID of the Expensereport                                                                                                                           |
| `fields_`                                                                                                                                         | T::Array<[Models::Operations::GetAccountingExpensereportQueryParamFields](../../models/operations/getaccountingexpensereportqueryparamfields.md)> | :heavy_minus_sign:                                                                                                                                | Fields to return                                                                                                                                  |
| `raw`                                                                                                                                             | *T.nilable(::String)*                                                                                                                             | :heavy_minus_sign:                                                                                                                                | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar  |

### Response

**[T.nilable(Models::Operations::GetAccountingExpensereportResponse)](../../models/operations/getaccountingexpensereportresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_invoice

Retrieves a single AccountingInvoice by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingInvoice" method="get" path="/accounting/{connection_id}/invoice/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AccountingJournal by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingJournal" method="get" path="/accounting/{connection_id}/journal/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

## ~~get_accounting_order~~

Retrieves a single AccountingOrder by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingOrder" method="get" path="/accounting/{connection_id}/order/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AccountingOrganization by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingOrganization" method="get" path="/accounting/{connection_id}/organization/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AccountingPaymentterm by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingPaymentterm" method="get" path="/accounting/{connection_id}/paymentterm/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AccountingProfitloss by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingProfitloss" method="get" path="/accounting/{connection_id}/profitloss/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AccountingProject by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingProject" method="get" path="/accounting/{connection_id}/project/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AccountingPurchaseorder by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingPurchaseorder" method="get" path="/accounting/{connection_id}/purchaseorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

## get_accounting_purchasereceipt

Retrieves a single AccountingPurchasereceipt by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingPurchasereceipt" method="get" path="/accounting/{connection_id}/purchasereceipt/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.accounting.get_accounting_purchasereceipt(connection_id: '<id>', id: '<id>')

unless res.accounting_purchasereceipt.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                             | Type                                                                                                                                                  | Required                                                                                                                                              | Description                                                                                                                                           |
| ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                                                                       | *::String*                                                                                                                                            | :heavy_check_mark:                                                                                                                                    | ID of the connection                                                                                                                                  |
| `id`                                                                                                                                                  | *::String*                                                                                                                                            | :heavy_check_mark:                                                                                                                                    | ID of the Purchasereceipt                                                                                                                             |
| `fields_`                                                                                                                                             | T::Array<[Models::Operations::GetAccountingPurchasereceiptQueryParamFields](../../models/operations/getaccountingpurchasereceiptqueryparamfields.md)> | :heavy_minus_sign:                                                                                                                                    | Fields to return                                                                                                                                      |
| `raw`                                                                                                                                                 | *T.nilable(::String)*                                                                                                                                 | :heavy_minus_sign:                                                                                                                                    | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar      |

### Response

**[T.nilable(Models::Operations::GetAccountingPurchasereceiptResponse)](../../models/operations/getaccountingpurchasereceiptresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_quote

Retrieves a single AccountingQuote by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingQuote" method="get" path="/accounting/{connection_id}/quote/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AccountingSalesorder by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingSalesorder" method="get" path="/accounting/{connection_id}/salesorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

## get_accounting_salesreceipt

Retrieves a single AccountingSalesreceipt by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingSalesreceipt" method="get" path="/accounting/{connection_id}/salesreceipt/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.accounting.get_accounting_salesreceipt(connection_id: '<id>', id: '<id>')

unless res.accounting_salesreceipt.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Salesreceipt                                                                                                                           |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingSalesreceiptQueryParamFields](../../models/operations/getaccountingsalesreceiptqueryparamfields.md)>  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingSalesreceiptResponse)](../../models/operations/getaccountingsalesreceiptresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_taxrate

Retrieves a single AccountingTaxrate by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingTaxrate" method="get" path="/accounting/{connection_id}/taxrate/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AccountingTransaction by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingTransaction" method="get" path="/accounting/{connection_id}/transaction/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AccountingTrialbalance by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingTrialbalance" method="get" path="/accounting/{connection_id}/trialbalance/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Retrieves a single AccountingVendorcredit by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingVendorcredit" method="get" path="/accounting/{connection_id}/vendorcredit/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Returns a list of AccountingAccounts. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingAccounts" method="get" path="/accounting/{connection_id}/account" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingAccountsRequest.new(
  connection_id: '<id>'
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

Returns a list of AccountingAgedpayables. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingAgedpayables" method="get" path="/accounting/{connection_id}/agedpayable" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingAgedpayablesRequest.new(
  connection_id: '<id>'
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

Returns a list of AccountingAgedreceivables. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingAgedreceivables" method="get" path="/accounting/{connection_id}/agedreceivable" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingAgedreceivablesRequest.new(
  connection_id: '<id>'
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

Returns a list of AccountingBalancesheets. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingBalancesheets" method="get" path="/accounting/{connection_id}/balancesheet" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingBalancesheetsRequest.new(
  connection_id: '<id>'
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

Returns a list of AccountingBankfeedaccounts. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingBankfeedaccounts" method="get" path="/accounting/{connection_id}/bankfeedaccount" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingBankfeedaccountsRequest.new(
  connection_id: '<id>'
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

Returns a list of AccountingBankfeedtransactions. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingBankfeedtransactions" method="get" path="/accounting/{connection_id}/bankfeedtransaction" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingBankfeedtransactionsRequest.new(
  connection_id: '<id>'
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

Returns a list of AccountingBills. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingBills" method="get" path="/accounting/{connection_id}/bill" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingBillsRequest.new(
  connection_id: '<id>'
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

Returns a list of AccountingCashflows. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingCashflows" method="get" path="/accounting/{connection_id}/cashflow" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingCashflowsRequest.new(
  connection_id: '<id>'
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

Returns a list of AccountingCategories. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingCategories" method="get" path="/accounting/{connection_id}/category" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingCategoriesRequest.new(
  connection_id: '<id>'
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

Returns a list of AccountingContacts. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingContacts" method="get" path="/accounting/{connection_id}/contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingContactsRequest.new(
  connection_id: '<id>'
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

Returns a list of AccountingCreditmemoes. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingCreditmemoes" method="get" path="/accounting/{connection_id}/creditmemo" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingCreditmemoesRequest.new(
  connection_id: '<id>'
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

## list_accounting_expensereports

Returns a list of AccountingExpensereports. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingExpensereports" method="get" path="/accounting/{connection_id}/expensereport" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingExpensereportsRequest.new(
  connection_id: '<id>'
)
res = s.accounting.list_accounting_expensereports(request: req)

unless res.accounting_expensereports.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [Models::Operations::ListAccountingExpensereportsRequest](../../models/operations/listaccountingexpensereportsrequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |

### Response

**[T.nilable(Models::Operations::ListAccountingExpensereportsResponse)](../../models/operations/listaccountingexpensereportsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_expenses

Returns a list of AccountingExpenses. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingExpenses" method="get" path="/accounting/{connection_id}/expense" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingExpensesRequest.new(
  connection_id: '<id>'
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

Returns a list of AccountingInvoices. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingInvoices" method="get" path="/accounting/{connection_id}/invoice" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingInvoicesRequest.new(
  connection_id: '<id>'
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

Returns a list of AccountingJournals. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingJournals" method="get" path="/accounting/{connection_id}/journal" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingJournalsRequest.new(
  connection_id: '<id>'
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

## ~~list_accounting_orders~~

Returns a list of AccountingOrders. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingOrders" method="get" path="/accounting/{connection_id}/order" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingOrdersRequest.new(
  connection_id: '<id>'
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

Returns a list of AccountingOrganizations. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingOrganizations" method="get" path="/accounting/{connection_id}/organization" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingOrganizationsRequest.new(
  connection_id: '<id>'
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

Returns a list of AccountingPaymentterms. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingPaymentterms" method="get" path="/accounting/{connection_id}/paymentterm" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingPaymenttermsRequest.new(
  connection_id: '<id>'
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

Returns a list of AccountingProfitlosses. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingProfitlosses" method="get" path="/accounting/{connection_id}/profitloss" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingProfitlossesRequest.new(
  connection_id: '<id>'
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

Returns a list of AccountingProjects. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingProjects" method="get" path="/accounting/{connection_id}/project" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingProjectsRequest.new(
  connection_id: '<id>'
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

Returns a list of AccountingPurchaseorders. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingPurchaseorders" method="get" path="/accounting/{connection_id}/purchaseorder" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingPurchaseordersRequest.new(
  connection_id: '<id>'
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

## list_accounting_purchasereceipts

Returns a list of AccountingPurchasereceipts. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingPurchasereceipts" method="get" path="/accounting/{connection_id}/purchasereceipt" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingPurchasereceiptsRequest.new(
  connection_id: '<id>'
)
res = s.accounting.list_accounting_purchasereceipts(request: req)

unless res.accounting_purchasereceipts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                     | Type                                                                                                                          | Required                                                                                                                      | Description                                                                                                                   |
| ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                     | [Models::Operations::ListAccountingPurchasereceiptsRequest](../../models/operations/listaccountingpurchasereceiptsrequest.md) | :heavy_check_mark:                                                                                                            | The request object to use for the request.                                                                                    |

### Response

**[T.nilable(Models::Operations::ListAccountingPurchasereceiptsResponse)](../../models/operations/listaccountingpurchasereceiptsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_quotes

Returns a list of AccountingQuotes. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingQuotes" method="get" path="/accounting/{connection_id}/quote" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingQuotesRequest.new(
  connection_id: '<id>'
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

Returns a list of AccountingSalesorders. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingSalesorders" method="get" path="/accounting/{connection_id}/salesorder" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingSalesordersRequest.new(
  connection_id: '<id>'
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

## list_accounting_salesreceipts

Returns a list of AccountingSalesreceipts. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingSalesreceipts" method="get" path="/accounting/{connection_id}/salesreceipt" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingSalesreceiptsRequest.new(
  connection_id: '<id>'
)
res = s.accounting.list_accounting_salesreceipts(request: req)

unless res.accounting_salesreceipts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::ListAccountingSalesreceiptsRequest](../../models/operations/listaccountingsalesreceiptsrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::ListAccountingSalesreceiptsResponse)](../../models/operations/listaccountingsalesreceiptsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_taxrates

Returns a list of AccountingTaxrates. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingTaxrates" method="get" path="/accounting/{connection_id}/taxrate" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingTaxratesRequest.new(
  connection_id: '<id>'
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

Returns a list of AccountingTransactions. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingTransactions" method="get" path="/accounting/{connection_id}/transaction" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingTransactionsRequest.new(
  connection_id: '<id>'
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

Returns a list of AccountingTrialbalances. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingTrialbalances" method="get" path="/accounting/{connection_id}/trialbalance" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingTrialbalancesRequest.new(
  connection_id: '<id>'
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

Returns a list of AccountingVendorcredits. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingVendorcredits" method="get" path="/accounting/{connection_id}/vendorcredit" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListAccountingVendorcreditsRequest.new(
  connection_id: '<id>'
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

Updates the AccountingAccount identified by `id`. Provide the unified AccountingAccount fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingAccount" method="patch" path="/accounting/{connection_id}/account/{id}" example="accounting_account" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAccountingAccountRequest.new(
  accounting_account: Models::Shared::AccountingAccount.new(
    balance: 12_092.0,
    created_at: DateTime.iso8601('2022-07-03T17:57:07.391Z'),
    currency: 'CAD',
    customer_defined_code: '6170',
    description: 'Comedo vilitas harum cupiditate animus quo iste.',
    id: '281f303f-531a-4056-8993-821e3db2167c',
    is_payable: false,
    metadata: [],
    name: 'Savings Account',
    status: Models::Shared::Status::ARCHIVED,
    taxonomy: [
      Models::Shared::AccountingAccountTaxonomy.new(
        original_type: 'peccatus',
        type: Models::Shared::AccountingAccountTaxonomyType::SUBGROUP,
        value: 'vesper'
      ),
    ],
    type: Models::Shared::Type::ACCOUNTS_RECEIVABLE,
    updated_at: DateTime.iso8601('2023-08-16T01:01:45.450Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingBankfeedaccount identified by `id`. Provide the unified AccountingBankfeedaccount fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingBankfeedaccount" method="patch" path="/accounting/{connection_id}/bankfeedaccount/{id}" example="accounting_bankfeedaccount" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAccountingBankfeedaccountRequest.new(
  accounting_bankfeedaccount: Models::Shared::AccountingBankfeedaccount.new(
    account_number: '69722811',
    account_number_last4: '2811',
    account_type: Models::Shared::AccountType::LOAN,
    balance: 49_437.0,
    bank_name: 'Wells Fargo',
    created_at: DateTime.iso8601('2022-10-31T16:42:19.277Z'),
    currency: 'AUD',
    feed_start_at: DateTime.iso8601('2022-10-31T16:42:19.277Z'),
    id: 'c22ec33e-0c5b-4f50-821c-ac57cd98e65d',
    metadata: [],
    name: 'Kirlin - Rowe Checking',
    routing_number: '104153154',
    status: Models::Shared::AccountingBankfeedaccountStatus::ACTIVE,
    updated_at: DateTime.iso8601('2024-05-07T05:18:29.728Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingBankfeedtransaction identified by `id`. Provide the unified AccountingBankfeedtransaction fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingBankfeedtransaction" method="patch" path="/accounting/{connection_id}/bankfeedtransaction/{id}" example="accounting_bankfeedtransaction" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAccountingBankfeedtransactionRequest.new(
  accounting_bankfeedtransaction: Models::Shared::AccountingBankfeedtransaction.new(
    amount: 60_889.0,
    bank_category: 'Beauty',
    category_ids: [],
    created_at: DateTime.iso8601('2022-03-24T23:41:08.374Z'),
    currency: 'CAD',
    description: 'deposit processed at Renner - Quigley for SSP 824.35, using card ending ****1112. Account: ***7957.',
    id: '050d8262-db72-4403-8012-f6d95896c19a',
    is_pending: true,
    merchant_name: 'McKenzie Inc',
    metadata: [],
    posted_at: DateTime.iso8601('2025-05-08T20:41:50.470Z'),
    reference: '09339705',
    transaction_at: DateTime.iso8601('2022-08-02T01:56:04.079Z'),
    type: Models::Shared::AccountingBankfeedtransactionType::CREDIT,
    updated_at: DateTime.iso8601('2022-05-26T09:17:18.306Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingBill identified by `id`. Provide the unified AccountingBill fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingBill" method="patch" path="/accounting/{connection_id}/bill/{id}" example="accounting_bill" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAccountingBillRequest.new(
  accounting_bill: Models::Shared::AccountingBill.new(
    attachments: [
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://mixed-flame.biz',
        id: '1d6bcc95-5822-4f22-b26d-9453b1879859',
        mime_type: 'application/pdf',
        name: 'BILL-2466.pdf'
      ),
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://minor-testimonial.biz',
        id: '9e3221b4-9952-455a-9152-f37c3ad9fd3f',
        mime_type: 'application/pdf',
        name: 'BILL-2466-1.pdf'
      ),
    ],
    balance_amount: 0.0,
    bill_number: 'BILL-2466',
    category_ids: [],
    created_at: DateTime.iso8601('2019-08-08T23:03:14.104Z'),
    currency: 'USD',
    discount_amount: 0.0,
    due_at: DateTime.iso8601('2019-09-07T23:03:14.104Z'),
    extended_notes: [],
    id: '1f56c28a-48c8-4e0b-9f26-a0ed47664a1d',
    lineitems: [],
    metadata: [],
    notes: 'Cilicium infit amissio ante demulceo annus defluo tumultus.',
    paid_amount: 0.0,
    paid_at: DateTime.iso8601('2019-08-15T17:24:28.313Z'),
    payment_collection_method: Models::Shared::PaymentCollectionMethod::CHARGE_AUTOMATICALLY,
    payments: [],
    posted_at: DateTime.iso8601('2019-08-08T23:03:14.104Z'),
    purchaseorder_ids: [],
    send: true,
    status: Models::Shared::AccountingBillStatus::PARTIALLY_PAID,
    sub_total_amount: 0.0,
    tax_amount: 0.0,
    term: Models::Shared::Term::NET_90,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2020-06-05T05:21:54.167Z'),
    url: 'https://utilized-partridge.info/bills/BILL-2466'
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingCategory identified by `id`. Provide the unified AccountingCategory fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingCategory" method="patch" path="/accounting/{connection_id}/category/{id}" example="accounting_category" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAccountingCategoryRequest.new(
  accounting_category: Models::Shared::AccountingCategory.new(
    created_at: DateTime.iso8601('2023-05-30T12:29:04.257Z'),
    description: 'Labore basium corrumpo crinis ars subito pecto.',
    id: 'f9978de5-7b68-4a32-ab91-9daee208101f',
    is_active: false,
    metadata: [],
    name: 'Automotive',
    updated_at: DateTime.iso8601('2025-10-05T17:29:09.398Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingContact identified by `id`. Provide the unified AccountingContact fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingContact" method="patch" path="/accounting/{connection_id}/contact/{id}" example="accounting_contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAccountingContactRequest.new(
  accounting_contact: Models::Shared::AccountingContact.new(
    associated_contacts: [],
    balance_amount: 55_574.0,
    billing_address: Models::Shared::PropertyAccountingContactBillingAddress.new(
      address1: '9171 Parisian Gateway',
      city: 'Lake Keltonboro',
      country_code: 'US',
      postal_code: '70131-2908',
      region: 'Illinois',
      region_code: 'CO'
    ),
    company_name: 'Rice LLC',
    created_at: DateTime.iso8601('2021-08-15T14:56:50.258Z'),
    currency: 'AUD',
    emails: [
      Models::Shared::AccountingEmail.new(
        email: 'michele.breitenberg@ricellc.com',
        type: Models::Shared::AccountingEmailType::WORK
      ),
      Models::Shared::AccountingEmail.new(
        email: 'accounts@ricellc.com',
        type: Models::Shared::AccountingEmailType::OTHER
      ),
    ],
    first_name: 'Michele',
    id: '970058af-ca27-46cc-9d01-701c343cbf1d',
    identification: '508720595',
    is_active: true,
    is_customer: true,
    last_name: 'Breitenberg',
    metadata: [],
    name: 'Rice LLC',
    notes: 'Tabella reprehenderit sono corrupti approbo crastinus sopor ultra.',
    payment_methods: [
      Models::Shared::AccountingContactPaymentMethod.new(
        default: true,
        id: '99f33ef2-4817-4e9c-a64b-b45554c6e007',
        name: 'Visa 5318',
        type: Models::Shared::AccountingContactPaymentMethodType::CARD
      ),
    ],
    portal_url: 'https://ricellc.com/billing',
    shipping_address: Models::Shared::PropertyAccountingContactShippingAddress.new(
      address1: '786 Dare Meadows',
      city: 'Phoenix',
      country_code: 'US',
      postal_code: '68675',
      region: 'Tennessee',
      region_code: 'NE'
    ),
    tax_exemption: Models::Shared::TaxExemption::FOREIGN,
    tax_number: '564107844',
    telephones: [
      Models::Shared::AccountingTelephone.new(
        telephone: '(217) 260-4409',
        type: Models::Shared::AccountingTelephoneType::FAX
      ),
    ],
    updated_at: DateTime.iso8601('2024-01-05T03:17:37.200Z'),
    website: 'https://ricellc.com'
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingCreditmemo identified by `id`. Provide the unified AccountingCreditmemo fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingCreditmemo" method="patch" path="/accounting/{connection_id}/creditmemo/{id}" example="accounting_creditmemo" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAccountingCreditmemoRequest.new(
  accounting_creditmemo: Models::Shared::AccountingCreditmemo.new(
    applications: [],
    attachments: [],
    balance_amount: 0.0,
    created_at: DateTime.iso8601('2023-09-20T01:47:01.571Z'),
    creditmemo_number: 'CM-99537',
    currency: 'AUD',
    discount_amount: 0.0,
    id: '11b732d9-4f30-4320-9905-44039fae0029',
    lineitems: [],
    metadata: [],
    notes: 'Amo adfero torqueo quas victoria.',
    posted_at: DateTime.iso8601('2023-09-20T01:47:01.571Z'),
    send: true,
    status: Models::Shared::AccountingCreditmemoStatus::AUTHORIZED,
    tax_amount: 0.0,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2025-10-04T08:59:55.043Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingExpense identified by `id`. Provide the unified AccountingExpense fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingExpense" method="patch" path="/accounting/{connection_id}/expense/{id}" example="accounting_expense" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAccountingExpenseRequest.new(
  accounting_expense: Models::Shared::AccountingExpense.new(
    attachments: [
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://avaricious-larva.biz',
        id: 'e16cfa70-24af-46ac-9a85-21aedc8cdbd4',
        mime_type: 'application/pdf',
        name: 'receipt-9696.pdf'
      ),
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://precious-comparison.net/',
        id: '4da16b1c-7bb2-42a0-a030-6d509e5d9ed8',
        mime_type: 'application/pdf',
        name: 'receipt-9696-1.pdf'
      ),
    ],
    category_ids: [],
    created_at: DateTime.iso8601('2020-06-11T03:39:37.305Z'),
    currency: 'GBP',
    external_number: 'EXP-38303',
    id: '8ef3047d-59e9-4359-8a3f-77226d385de3',
    lineitems: [
      Models::Shared::AccountingLineitem.new(
        id: 'a3c44466-0811-4431-9ec8-72523914dc10',
        item_name: 'Client dinner',
        tax_amount: 0.0,
        total_amount: 364.74,
        unit_amount: 364.74,
        unit_quantity: 1.0
      ),
      Models::Shared::AccountingLineitem.new(
        id: 'dc4dbc89-f09c-44a3-9c08-10fca4286afb',
        item_name: 'Client dinner',
        tax_amount: 0.0,
        total_amount: 258.35,
        unit_amount: 258.35,
        unit_quantity: 1.0
      ),
      Models::Shared::AccountingLineitem.new(
        id: 'ab268748-ce50-4e51-9d19-b05df780cbae',
        item_name: 'Conference ticket',
        notes: 'Sint spiculum carcer ago charisma.',
        tax_amount: 0.0,
        total_amount: 28.14,
        unit_amount: 28.14,
        unit_quantity: 1.0
      ),
      Models::Shared::AccountingLineitem.new(
        id: '601c3a64-67c0-4ce0-90b1-4915f0b7118b',
        item_name: 'Hotel',
        tax_amount: 0.0,
        total_amount: 157.04,
        unit_amount: 157.04,
        unit_quantity: 1.0
      ),
      Models::Shared::AccountingLineitem.new(
        id: 'f46a55a0-dc47-4ab7-a2b6-a48712db1cbc',
        item_name: 'Hotel',
        tax_amount: 0.0,
        total_amount: 164.02,
        unit_amount: 164.02,
        unit_quantity: 1.0
      ),
    ],
    metadata: [],
    name: 'A deposit for KPW 867.85 was made at Kohler LLC via card ending ****1416 on account ***1040.',
    payment_method: 'CASH',
    posted_at: DateTime.iso8601('2020-06-11T03:39:37.305Z'),
    status: Models::Shared::AccountingExpenseStatus::SUBMITTED,
    tax_amount: 0.0,
    total_amount: 972.29,
    type: Models::Shared::AccountingExpenseType::COMPANY,
    updated_at: DateTime.iso8601('2020-09-03T14:10:33.152Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

## patch_accounting_expensereport

Updates the AccountingExpensereport identified by `id`. Provide the unified AccountingExpensereport fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingExpensereport" method="patch" path="/accounting/{connection_id}/expensereport/{id}" example="accounting_expensereport" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAccountingExpensereportRequest.new(
  accounting_expensereport: Models::Shared::AccountingExpensereport.new(
    approved_at: DateTime.iso8601('2021-04-24T11:41:18.205Z'),
    attachments: [],
    category_ids: [],
    created_at: DateTime.iso8601('2020-05-29T02:04:59.078Z'),
    currency: 'GBP',
    external_number: 'ER-31240',
    id: '5de37a01-03bb-468f-a1d3-e9aeafe3b186',
    lineitems: [
      Models::Shared::AccountingLineitem.new(
        id: '918534f3-a79b-41f9-82e0-5af378df9a46',
        item_name: 'Conference ticket',
        tax_amount: 0.0,
        total_amount: 39.9,
        unit_amount: 39.9,
        unit_quantity: 1.0
      ),
      Models::Shared::AccountingLineitem.new(
        id: 'a61d6468-87b0-4662-a6ed-d2d2f224e46b',
        item_name: 'Flight',
        notes: 'Aliquam soluta omnis dolor.',
        tax_amount: 0.0,
        total_amount: 193.17,
        unit_amount: 193.17,
        unit_quantity: 1.0
      ),
      Models::Shared::AccountingLineitem.new(
        id: '01362bbd-0e8c-4438-a409-65a2d9eef3a6',
        item_name: 'Client dinner',
        notes: 'Altus caveo capio.',
        tax_amount: 0.0,
        total_amount: 230.12,
        unit_amount: 230.12,
        unit_quantity: 1.0
      ),
      Models::Shared::AccountingLineitem.new(
        id: '1a24127d-a43c-4c0f-acd8-1879a36b8597',
        item_name: 'Flight',
        tax_amount: 0.0,
        total_amount: 445.27,
        unit_amount: 445.27,
        unit_quantity: 1.0
      ),
    ],
    metadata: [],
    name: 'Jamil Christiansen - October expenses',
    posted_at: DateTime.iso8601('2020-05-29T02:04:59.078Z'),
    reimbursed_amount: 908.46,
    reimbursed_at: DateTime.iso8601('2021-04-24T11:41:18.205Z'),
    status: Models::Shared::AccountingExpensereportStatus::PAID,
    tax_amount: 0.0,
    total_amount: 908.46,
    updated_at: DateTime.iso8601('2021-04-24T11:41:18.205Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.accounting.patch_accounting_expensereport(request: req)

unless res.accounting_expensereport.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [Models::Operations::PatchAccountingExpensereportRequest](../../models/operations/patchaccountingexpensereportrequest.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |

### Response

**[T.nilable(Models::Operations::PatchAccountingExpensereportResponse)](../../models/operations/patchaccountingexpensereportresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_accounting_invoice

Updates the AccountingInvoice identified by `id`. Provide the unified AccountingInvoice fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingInvoice" method="patch" path="/accounting/{connection_id}/invoice/{id}" example="accounting_invoice" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAccountingInvoiceRequest.new(
  accounting_invoice: Models::Shared::AccountingInvoice.new(
    attachments: [
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://simplistic-translation.com',
        id: '90c94972-c43d-466b-81c5-e1b293da42a7',
        mime_type: 'application/pdf',
        name: 'INV-77705.pdf'
      ),
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://squiggly-amnesty.name/',
        id: '2f7b29fe-dd39-4b86-bfa8-a20f6cc507c4',
        mime_type: 'application/pdf',
        name: 'INV-77705-1.pdf'
      ),
    ],
    balance_amount: 0.0,
    category_ids: [],
    created_at: DateTime.iso8601('2022-11-07T14:17:29.587Z'),
    currency: 'GBP',
    discount_amount: 0.0,
    due_at: DateTime.iso8601('2022-12-07T14:17:29.587Z'),
    extended_notes: [],
    id: '9dbe9ba6-99b8-46f9-b05a-aa7ccb16d06b',
    invoice_number: 'INV-77705',
    is_inclusive_of_tax: false,
    lineitems: [],
    metadata: [],
    notes: 'Auctus comburo clarus ubi deprimo comburo vulgus.',
    payment_collection_method: Models::Shared::AccountingInvoicePaymentCollectionMethod::CHARGE_AUTOMATICALLY,
    payments: [],
    posted_at: DateTime.iso8601('2022-11-07T14:17:29.587Z'),
    reference: 'PO-2331',
    salesorder_ids: [],
    send: true,
    status: Models::Shared::AccountingInvoiceStatus::OVERDUE,
    sub_total_amount: 0.0,
    tax_amount: 0.0,
    term: Models::Shared::AccountingInvoiceTerm::NET_25,
    total_amount: 0.0,
    type: Models::Shared::AccountingInvoiceType::INVOICE,
    updated_at: DateTime.iso8601('2026-05-25T00:04:53.350Z'),
    url: 'https://helpful-exterior.com/invoices/INV-77705'
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingJournal identified by `id`. Provide the unified AccountingJournal fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingJournal" method="patch" path="/accounting/{connection_id}/journal/{id}" example="accounting_journal" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAccountingJournalRequest.new(
  accounting_journal: Models::Shared::AccountingJournal.new(
    attachments: [],
    category_ids: [],
    created_at: DateTime.iso8601('2020-02-20T15:14:55.881Z'),
    currency: 'CAD',
    description: 'Constans adipisci.',
    id: 'd61d0518-1798-404f-9823-cd0bdfb15894',
    is_inclusive_of_tax: true,
    lineitems: [],
    metadata: [],
    posted_at: DateTime.iso8601('2023-11-26T10:54:49.750Z'),
    reference: 'JE-78884',
    source: 'crustulum',
    status: Models::Shared::AccountingJournalStatus::VOID,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2022-01-21T00:21:40.373Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

## ~~patch_accounting_order~~

Updates the AccountingOrder identified by `id`. Provide the unified AccountingOrder fields to change in the request body.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingOrder" method="patch" path="/accounting/{connection_id}/order/{id}" example="accounting_order" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAccountingOrderRequest.new(
  accounting_order: Models::Shared::AccountingOrder.new(
    billing_address: Models::Shared::PropertyAccountingOrderBillingAddress.new(
      address1: '125 Hayden Highway',
      city: 'Altoona',
      country_code: 'US',
      postal_code: '94706-7691',
      region: 'Louisiana',
      region_code: 'VT'
    ),
    created_at: DateTime.iso8601('2020-11-20T03:46:49.837Z'),
    currency: 'GBP',
    id: '927f3059-1a8a-4b7e-96c0-3305d8c0a168',
    lineitems: [],
    metadata: [],
    posted_at: DateTime.iso8601('2020-11-20T03:46:49.837Z'),
    shipping_address: Models::Shared::PropertyAccountingOrderShippingAddress.new(
      address1: '450 Garett Mall',
      city: 'New Kamronburgh',
      country_code: 'US',
      postal_code: '76546',
      region: 'Oregon',
      region_code: 'VA'
    ),
    status: Models::Shared::AccountingOrderStatus::AUTHORIZED,
    total_amount: 0.0,
    type: Models::Shared::AccountingOrderType::SALES,
    updated_at: DateTime.iso8601('2022-02-15T17:04:37.210Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingPaymentterm identified by `id`. Provide the unified AccountingPaymentterm fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingPaymentterm" method="patch" path="/accounting/{connection_id}/paymentterm/{id}" example="accounting_paymentterm" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAccountingPaymenttermRequest.new(
  accounting_paymentterm: Models::Shared::AccountingPaymentterm.new(
    category: Models::Shared::Category::STANDARD,
    created_at: DateTime.iso8601('2021-08-22T22:42:42.265Z'),
    day_of_month_due: 4.0,
    description: 'Cultura cena claustrum.',
    discount_day_of_month: 13.0,
    discount_days: 4.0,
    discount_percent: 5.0,
    due_days: 57.0,
    due_next_month_days: 9.0,
    id: 'd5ced635-0260-46c6-baa3-2b8926d66702',
    is_active: false,
    metadata: [],
    name: 'Net 30',
    type: Models::Shared::AccountingPaymenttermType::NET_15,
    updated_at: DateTime.iso8601('2026-02-07T23:24:22.105Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingProject identified by `id`. Provide the unified AccountingProject fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingProject" method="patch" path="/accounting/{connection_id}/project/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAccountingProjectRequest.new(
  accounting_project: Models::Shared::AccountingProject.new,
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingPurchaseorder identified by `id`. Provide the unified AccountingPurchaseorder fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingPurchaseorder" method="patch" path="/accounting/{connection_id}/purchaseorder/{id}" example="accounting_purchaseorder" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAccountingPurchaseorderRequest.new(
  accounting_purchaseorder: Models::Shared::AccountingPurchaseorder.new(
    attachments: [],
    billing_address: Models::Shared::PropertyAccountingPurchaseorderBillingAddress.new(
      address1: '37214 Golden Via',
      address2: 'Suite 713',
      city: 'North Eltontown',
      country_code: 'US',
      postal_code: '75366',
      region: 'Kentucky',
      region_code: 'MA'
    ),
    category_ids: [],
    created_at: DateTime.iso8601('2020-12-12T07:17:47.021Z'),
    currency: 'EUR',
    id: 'd3499c8a-c51e-4eab-b0dd-11f649f24708',
    lineitems: [],
    metadata: [],
    posted_at: DateTime.iso8601('2020-12-12T07:17:47.021Z'),
    shipping_address: Models::Shared::PropertyAccountingPurchaseorderShippingAddress.new(
      address1: '9455 Brad Forks',
      city: 'Washington',
      country_code: 'US',
      postal_code: '16547',
      region: 'Idaho',
      region_code: 'NY'
    ),
    status: Models::Shared::AccountingPurchaseorderStatus::SUBMITTED,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2021-08-15T07:37:28.014Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingQuote identified by `id`. Provide the unified AccountingQuote fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingQuote" method="patch" path="/accounting/{connection_id}/quote/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAccountingQuoteRequest.new(
  accounting_quote: Models::Shared::AccountingQuote.new,
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingSalesorder identified by `id`. Provide the unified AccountingSalesorder fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingSalesorder" method="patch" path="/accounting/{connection_id}/salesorder/{id}" example="accounting_salesorder" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAccountingSalesorderRequest.new(
  accounting_salesorder: Models::Shared::AccountingSalesorder.new(
    billing_address: Models::Shared::PropertyAccountingSalesorderBillingAddress.new(
      address1: '1487 Valley Road',
      address2: 'Apt. 287',
      city: 'Lake Angelina',
      country_code: 'US',
      postal_code: '85469-3199',
      region: 'Georgia',
      region_code: 'MT'
    ),
    category_ids: [],
    closed_at: DateTime.iso8601('2023-04-03T11:27:22.128Z'),
    created_at: DateTime.iso8601('2022-01-17T16:11:50.310Z'),
    currency: 'USD',
    discount_amount: 0.0,
    fees: [],
    fulfillment_type: Models::Shared::FulfillmentType::OTHER,
    id: 'aaa718ae-a1a1-4bf8-8548-30af50cd52f2',
    lineitems: [],
    metadata: [],
    order_number: '832663',
    paid_amount: 0.0,
    payments: [],
    posted_at: DateTime.iso8601('2022-01-17T16:11:50.310Z'),
    refunded_amount: 0.0,
    sales_channel: 'Wholesale',
    service_charge_amount: 0.0,
    shipping_address: Models::Shared::PropertyAccountingSalesorderShippingAddress.new(
      address1: '781 Darrell Coves',
      city: 'Annabelfield',
      country_code: 'US',
      postal_code: '92148-4116',
      region: 'Virginia',
      region_code: 'WI'
    ),
    status: Models::Shared::AccountingSalesorderStatus::PAID,
    subtotal_amount: 0.0,
    tax_amount: 0.0,
    tip_amount: 0.0,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2023-04-03T11:27:22.128Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingTaxrate identified by `id`. Provide the unified AccountingTaxrate fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingTaxrate" method="patch" path="/accounting/{connection_id}/taxrate/{id}" example="accounting_taxrate" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAccountingTaxrateRequest.new(
  accounting_taxrate: Models::Shared::AccountingTaxrate.new(
    components: [
      Models::Shared::AccountingTaxrateComponent.new(
        is_compound: false,
        name: 'Exempt',
        rate: 0.0
      ),
    ],
    country: 'US',
    created_at: DateTime.iso8601('2020-01-04T10:37:56.894Z'),
    description: 'Exempt (0%)',
    effective_rate: 0.0,
    id: 'a60e2787-20d9-41e0-9818-13c0d05560d6',
    is_active: false,
    is_compound: false,
    metadata: [],
    name: 'Exempt',
    rate: 0.0,
    region: 'FL',
    total_rate: 0.0,
    type: Models::Shared::AccountingTaxrateType::SALES,
    updated_at: DateTime.iso8601('2020-02-13T18:59:38.200Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingTransaction identified by `id`. Provide the unified AccountingTransaction fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingTransaction" method="patch" path="/accounting/{connection_id}/transaction/{id}" example="accounting_transaction" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAccountingTransactionRequest.new(
  accounting_transaction: Models::Shared::AccountingTransaction.new(
    created_at: DateTime.iso8601('2019-09-25T11:40:42.574Z'),
    id: '1e0e5d90-cc97-435f-9a73-45a61937a33c',
    lineitems: [
      Models::Shared::AccountingTransactionLineItem.new(
        category_ids: [],
        description: 'The Wilma Car is the latest in a series of beneficial products from Fritsch Group',
        id: '4379f323-f896-4482-b175-2ea9582459fa',
        name: 'Table',
        total_amount: 10_184.0,
        unit_amount: 536.0,
        unit_quantity: 19.0
      ),
    ],
    memo: 'withdrawal confirmed at Doyle, White and Conroy for FJD 391.94, card ending in ****0497 associated with account ***6676.',
    status: Models::Shared::AccountingTransactionStatus::PENDING,
    tax_amount: 0.0,
    total_amount: 10_184.0,
    transaction_at: DateTime.iso8601('2019-09-25T11:40:42.574Z'),
    updated_at: DateTime.iso8601('2019-10-14T12:24:46.426Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingVendorcredit identified by `id`. Provide the unified AccountingVendorcredit fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingVendorcredit" method="patch" path="/accounting/{connection_id}/vendorcredit/{id}" example="accounting_vendorcredit" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchAccountingVendorcreditRequest.new(
  accounting_vendorcredit: Models::Shared::AccountingVendorcredit.new(
    applications: [],
    balance_amount: 0.0,
    created_at: DateTime.iso8601('2023-04-15T21:14:08.197Z'),
    currency: 'USD',
    id: 'a5a6fb31-8c07-4aab-8d58-afb053c2fce7',
    lineitems: [],
    metadata: [],
    notes: 'Avaritia tantum campana comitatus atrox.',
    posted_at: DateTime.iso8601('2023-04-15T21:14:08.197Z'),
    status: Models::Shared::AccountingVendorcreditStatus::AUTHORIZED,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2023-10-07T20:03:55.214Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Deletes the AccountingAccount identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingAccount" method="delete" path="/accounting/{connection_id}/account/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Deletes the AccountingBankfeedaccount identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingBankfeedaccount" method="delete" path="/accounting/{connection_id}/bankfeedaccount/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Deletes the AccountingBankfeedtransaction identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingBankfeedtransaction" method="delete" path="/accounting/{connection_id}/bankfeedtransaction/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Deletes the AccountingBill identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingBill" method="delete" path="/accounting/{connection_id}/bill/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Deletes the AccountingCategory identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingCategory" method="delete" path="/accounting/{connection_id}/category/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Deletes the AccountingContact identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingContact" method="delete" path="/accounting/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Deletes the AccountingCreditmemo identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingCreditmemo" method="delete" path="/accounting/{connection_id}/creditmemo/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Deletes the AccountingExpense identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingExpense" method="delete" path="/accounting/{connection_id}/expense/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

## remove_accounting_expensereport

Deletes the AccountingExpensereport identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingExpensereport" method="delete" path="/accounting/{connection_id}/expensereport/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.accounting.remove_accounting_expensereport(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter               | Type                    | Required                | Description             |
| ----------------------- | ----------------------- | ----------------------- | ----------------------- |
| `connection_id`         | *::String*              | :heavy_check_mark:      | ID of the connection    |
| `id`                    | *::String*              | :heavy_check_mark:      | ID of the Expensereport |

### Response

**[T.nilable(Models::Operations::RemoveAccountingExpensereportResponse)](../../models/operations/removeaccountingexpensereportresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_accounting_invoice

Deletes the AccountingInvoice identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingInvoice" method="delete" path="/accounting/{connection_id}/invoice/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Deletes the AccountingJournal identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingJournal" method="delete" path="/accounting/{connection_id}/journal/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

## ~~remove_accounting_order~~

Deletes the AccountingOrder identified by `id`.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingOrder" method="delete" path="/accounting/{connection_id}/order/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Deletes the AccountingPaymentterm identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingPaymentterm" method="delete" path="/accounting/{connection_id}/paymentterm/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Deletes the AccountingProject identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingProject" method="delete" path="/accounting/{connection_id}/project/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Deletes the AccountingPurchaseorder identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingPurchaseorder" method="delete" path="/accounting/{connection_id}/purchaseorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Deletes the AccountingQuote identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingQuote" method="delete" path="/accounting/{connection_id}/quote/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Deletes the AccountingSalesorder identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingSalesorder" method="delete" path="/accounting/{connection_id}/salesorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Deletes the AccountingTaxrate identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingTaxrate" method="delete" path="/accounting/{connection_id}/taxrate/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Deletes the AccountingTransaction identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingTransaction" method="delete" path="/accounting/{connection_id}/transaction/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Deletes the AccountingVendorcredit identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingVendorcredit" method="delete" path="/accounting/{connection_id}/vendorcredit/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

Updates the AccountingAccount identified by `id`. Provide the unified AccountingAccount fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingAccount" method="put" path="/accounting/{connection_id}/account/{id}" example="accounting_account" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAccountingAccountRequest.new(
  accounting_account: Models::Shared::AccountingAccount.new(
    balance: 12_092.0,
    created_at: DateTime.iso8601('2022-07-03T17:57:07.391Z'),
    currency: 'CAD',
    customer_defined_code: '6170',
    description: 'Comedo vilitas harum cupiditate animus quo iste.',
    id: '281f303f-531a-4056-8993-821e3db2167c',
    is_payable: false,
    metadata: [],
    name: 'Savings Account',
    status: Models::Shared::Status::ARCHIVED,
    taxonomy: [
      Models::Shared::AccountingAccountTaxonomy.new(
        original_type: 'peccatus',
        type: Models::Shared::AccountingAccountTaxonomyType::SUBGROUP,
        value: 'vesper'
      ),
    ],
    type: Models::Shared::Type::ACCOUNTS_RECEIVABLE,
    updated_at: DateTime.iso8601('2023-08-16T01:01:45.450Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingBankfeedaccount identified by `id`. Provide the unified AccountingBankfeedaccount fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingBankfeedaccount" method="put" path="/accounting/{connection_id}/bankfeedaccount/{id}" example="accounting_bankfeedaccount" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAccountingBankfeedaccountRequest.new(
  accounting_bankfeedaccount: Models::Shared::AccountingBankfeedaccount.new(
    account_number: '69722811',
    account_number_last4: '2811',
    account_type: Models::Shared::AccountType::LOAN,
    balance: 49_437.0,
    bank_name: 'Wells Fargo',
    created_at: DateTime.iso8601('2022-10-31T16:42:19.277Z'),
    currency: 'AUD',
    feed_start_at: DateTime.iso8601('2022-10-31T16:42:19.277Z'),
    id: 'c22ec33e-0c5b-4f50-821c-ac57cd98e65d',
    metadata: [],
    name: 'Kirlin - Rowe Checking',
    routing_number: '104153154',
    status: Models::Shared::AccountingBankfeedaccountStatus::ACTIVE,
    updated_at: DateTime.iso8601('2024-05-07T05:18:29.728Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingBankfeedtransaction identified by `id`. Provide the unified AccountingBankfeedtransaction fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingBankfeedtransaction" method="put" path="/accounting/{connection_id}/bankfeedtransaction/{id}" example="accounting_bankfeedtransaction" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAccountingBankfeedtransactionRequest.new(
  accounting_bankfeedtransaction: Models::Shared::AccountingBankfeedtransaction.new(
    amount: 60_889.0,
    bank_category: 'Beauty',
    category_ids: [],
    created_at: DateTime.iso8601('2022-03-24T23:41:08.374Z'),
    currency: 'CAD',
    description: 'deposit processed at Renner - Quigley for SSP 824.35, using card ending ****1112. Account: ***7957.',
    id: '050d8262-db72-4403-8012-f6d95896c19a',
    is_pending: true,
    merchant_name: 'McKenzie Inc',
    metadata: [],
    posted_at: DateTime.iso8601('2025-05-08T20:41:50.470Z'),
    reference: '09339705',
    transaction_at: DateTime.iso8601('2022-08-02T01:56:04.079Z'),
    type: Models::Shared::AccountingBankfeedtransactionType::CREDIT,
    updated_at: DateTime.iso8601('2022-05-26T09:17:18.306Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingBill identified by `id`. Provide the unified AccountingBill fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingBill" method="put" path="/accounting/{connection_id}/bill/{id}" example="accounting_bill" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAccountingBillRequest.new(
  accounting_bill: Models::Shared::AccountingBill.new(
    attachments: [
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://mixed-flame.biz',
        id: '1d6bcc95-5822-4f22-b26d-9453b1879859',
        mime_type: 'application/pdf',
        name: 'BILL-2466.pdf'
      ),
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://minor-testimonial.biz',
        id: '9e3221b4-9952-455a-9152-f37c3ad9fd3f',
        mime_type: 'application/pdf',
        name: 'BILL-2466-1.pdf'
      ),
    ],
    balance_amount: 0.0,
    bill_number: 'BILL-2466',
    category_ids: [],
    created_at: DateTime.iso8601('2019-08-08T23:03:14.104Z'),
    currency: 'USD',
    discount_amount: 0.0,
    due_at: DateTime.iso8601('2019-09-07T23:03:14.104Z'),
    extended_notes: [],
    id: '1f56c28a-48c8-4e0b-9f26-a0ed47664a1d',
    lineitems: [],
    metadata: [],
    notes: 'Cilicium infit amissio ante demulceo annus defluo tumultus.',
    paid_amount: 0.0,
    paid_at: DateTime.iso8601('2019-08-15T17:24:28.313Z'),
    payment_collection_method: Models::Shared::PaymentCollectionMethod::CHARGE_AUTOMATICALLY,
    payments: [],
    posted_at: DateTime.iso8601('2019-08-08T23:03:14.104Z'),
    purchaseorder_ids: [],
    send: true,
    status: Models::Shared::AccountingBillStatus::PARTIALLY_PAID,
    sub_total_amount: 0.0,
    tax_amount: 0.0,
    term: Models::Shared::Term::NET_90,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2020-06-05T05:21:54.167Z'),
    url: 'https://utilized-partridge.info/bills/BILL-2466'
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingCategory identified by `id`. Provide the unified AccountingCategory fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingCategory" method="put" path="/accounting/{connection_id}/category/{id}" example="accounting_category" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAccountingCategoryRequest.new(
  accounting_category: Models::Shared::AccountingCategory.new(
    created_at: DateTime.iso8601('2023-05-30T12:29:04.257Z'),
    description: 'Labore basium corrumpo crinis ars subito pecto.',
    id: 'f9978de5-7b68-4a32-ab91-9daee208101f',
    is_active: false,
    metadata: [],
    name: 'Automotive',
    updated_at: DateTime.iso8601('2025-10-05T17:29:09.398Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingContact identified by `id`. Provide the unified AccountingContact fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingContact" method="put" path="/accounting/{connection_id}/contact/{id}" example="accounting_contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAccountingContactRequest.new(
  accounting_contact: Models::Shared::AccountingContact.new(
    associated_contacts: [],
    balance_amount: 55_574.0,
    billing_address: Models::Shared::PropertyAccountingContactBillingAddress.new(
      address1: '9171 Parisian Gateway',
      city: 'Lake Keltonboro',
      country_code: 'US',
      postal_code: '70131-2908',
      region: 'Illinois',
      region_code: 'CO'
    ),
    company_name: 'Rice LLC',
    created_at: DateTime.iso8601('2021-08-15T14:56:50.258Z'),
    currency: 'AUD',
    emails: [
      Models::Shared::AccountingEmail.new(
        email: 'michele.breitenberg@ricellc.com',
        type: Models::Shared::AccountingEmailType::WORK
      ),
      Models::Shared::AccountingEmail.new(
        email: 'accounts@ricellc.com',
        type: Models::Shared::AccountingEmailType::OTHER
      ),
    ],
    first_name: 'Michele',
    id: '970058af-ca27-46cc-9d01-701c343cbf1d',
    identification: '508720595',
    is_active: true,
    is_customer: true,
    last_name: 'Breitenberg',
    metadata: [],
    name: 'Rice LLC',
    notes: 'Tabella reprehenderit sono corrupti approbo crastinus sopor ultra.',
    payment_methods: [
      Models::Shared::AccountingContactPaymentMethod.new(
        default: true,
        id: '99f33ef2-4817-4e9c-a64b-b45554c6e007',
        name: 'Visa 5318',
        type: Models::Shared::AccountingContactPaymentMethodType::CARD
      ),
    ],
    portal_url: 'https://ricellc.com/billing',
    shipping_address: Models::Shared::PropertyAccountingContactShippingAddress.new(
      address1: '786 Dare Meadows',
      city: 'Phoenix',
      country_code: 'US',
      postal_code: '68675',
      region: 'Tennessee',
      region_code: 'NE'
    ),
    tax_exemption: Models::Shared::TaxExemption::FOREIGN,
    tax_number: '564107844',
    telephones: [
      Models::Shared::AccountingTelephone.new(
        telephone: '(217) 260-4409',
        type: Models::Shared::AccountingTelephoneType::FAX
      ),
    ],
    updated_at: DateTime.iso8601('2024-01-05T03:17:37.200Z'),
    website: 'https://ricellc.com'
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingCreditmemo identified by `id`. Provide the unified AccountingCreditmemo fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingCreditmemo" method="put" path="/accounting/{connection_id}/creditmemo/{id}" example="accounting_creditmemo" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAccountingCreditmemoRequest.new(
  accounting_creditmemo: Models::Shared::AccountingCreditmemo.new(
    applications: [],
    attachments: [],
    balance_amount: 0.0,
    created_at: DateTime.iso8601('2023-09-20T01:47:01.571Z'),
    creditmemo_number: 'CM-99537',
    currency: 'AUD',
    discount_amount: 0.0,
    id: '11b732d9-4f30-4320-9905-44039fae0029',
    lineitems: [],
    metadata: [],
    notes: 'Amo adfero torqueo quas victoria.',
    posted_at: DateTime.iso8601('2023-09-20T01:47:01.571Z'),
    send: true,
    status: Models::Shared::AccountingCreditmemoStatus::AUTHORIZED,
    tax_amount: 0.0,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2025-10-04T08:59:55.043Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingExpense identified by `id`. Provide the unified AccountingExpense fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingExpense" method="put" path="/accounting/{connection_id}/expense/{id}" example="accounting_expense" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAccountingExpenseRequest.new(
  accounting_expense: Models::Shared::AccountingExpense.new(
    attachments: [
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://avaricious-larva.biz',
        id: 'e16cfa70-24af-46ac-9a85-21aedc8cdbd4',
        mime_type: 'application/pdf',
        name: 'receipt-9696.pdf'
      ),
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://precious-comparison.net/',
        id: '4da16b1c-7bb2-42a0-a030-6d509e5d9ed8',
        mime_type: 'application/pdf',
        name: 'receipt-9696-1.pdf'
      ),
    ],
    category_ids: [],
    created_at: DateTime.iso8601('2020-06-11T03:39:37.305Z'),
    currency: 'GBP',
    external_number: 'EXP-38303',
    id: '8ef3047d-59e9-4359-8a3f-77226d385de3',
    lineitems: [
      Models::Shared::AccountingLineitem.new(
        id: 'a3c44466-0811-4431-9ec8-72523914dc10',
        item_name: 'Client dinner',
        tax_amount: 0.0,
        total_amount: 364.74,
        unit_amount: 364.74,
        unit_quantity: 1.0
      ),
      Models::Shared::AccountingLineitem.new(
        id: 'dc4dbc89-f09c-44a3-9c08-10fca4286afb',
        item_name: 'Client dinner',
        tax_amount: 0.0,
        total_amount: 258.35,
        unit_amount: 258.35,
        unit_quantity: 1.0
      ),
      Models::Shared::AccountingLineitem.new(
        id: 'ab268748-ce50-4e51-9d19-b05df780cbae',
        item_name: 'Conference ticket',
        notes: 'Sint spiculum carcer ago charisma.',
        tax_amount: 0.0,
        total_amount: 28.14,
        unit_amount: 28.14,
        unit_quantity: 1.0
      ),
      Models::Shared::AccountingLineitem.new(
        id: '601c3a64-67c0-4ce0-90b1-4915f0b7118b',
        item_name: 'Hotel',
        tax_amount: 0.0,
        total_amount: 157.04,
        unit_amount: 157.04,
        unit_quantity: 1.0
      ),
      Models::Shared::AccountingLineitem.new(
        id: 'f46a55a0-dc47-4ab7-a2b6-a48712db1cbc',
        item_name: 'Hotel',
        tax_amount: 0.0,
        total_amount: 164.02,
        unit_amount: 164.02,
        unit_quantity: 1.0
      ),
    ],
    metadata: [],
    name: 'A deposit for KPW 867.85 was made at Kohler LLC via card ending ****1416 on account ***1040.',
    payment_method: 'CASH',
    posted_at: DateTime.iso8601('2020-06-11T03:39:37.305Z'),
    status: Models::Shared::AccountingExpenseStatus::SUBMITTED,
    tax_amount: 0.0,
    total_amount: 972.29,
    type: Models::Shared::AccountingExpenseType::COMPANY,
    updated_at: DateTime.iso8601('2020-09-03T14:10:33.152Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

## update_accounting_expensereport

Updates the AccountingExpensereport identified by `id`. Provide the unified AccountingExpensereport fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingExpensereport" method="put" path="/accounting/{connection_id}/expensereport/{id}" example="accounting_expensereport" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAccountingExpensereportRequest.new(
  accounting_expensereport: Models::Shared::AccountingExpensereport.new(
    approved_at: DateTime.iso8601('2021-04-24T11:41:18.205Z'),
    attachments: [],
    category_ids: [],
    created_at: DateTime.iso8601('2020-05-29T02:04:59.078Z'),
    currency: 'GBP',
    external_number: 'ER-31240',
    id: '5de37a01-03bb-468f-a1d3-e9aeafe3b186',
    lineitems: [
      Models::Shared::AccountingLineitem.new(
        id: '918534f3-a79b-41f9-82e0-5af378df9a46',
        item_name: 'Conference ticket',
        tax_amount: 0.0,
        total_amount: 39.9,
        unit_amount: 39.9,
        unit_quantity: 1.0
      ),
      Models::Shared::AccountingLineitem.new(
        id: 'a61d6468-87b0-4662-a6ed-d2d2f224e46b',
        item_name: 'Flight',
        notes: 'Aliquam soluta omnis dolor.',
        tax_amount: 0.0,
        total_amount: 193.17,
        unit_amount: 193.17,
        unit_quantity: 1.0
      ),
      Models::Shared::AccountingLineitem.new(
        id: '01362bbd-0e8c-4438-a409-65a2d9eef3a6',
        item_name: 'Client dinner',
        notes: 'Altus caveo capio.',
        tax_amount: 0.0,
        total_amount: 230.12,
        unit_amount: 230.12,
        unit_quantity: 1.0
      ),
      Models::Shared::AccountingLineitem.new(
        id: '1a24127d-a43c-4c0f-acd8-1879a36b8597',
        item_name: 'Flight',
        tax_amount: 0.0,
        total_amount: 445.27,
        unit_amount: 445.27,
        unit_quantity: 1.0
      ),
    ],
    metadata: [],
    name: 'Jamil Christiansen - October expenses',
    posted_at: DateTime.iso8601('2020-05-29T02:04:59.078Z'),
    reimbursed_amount: 908.46,
    reimbursed_at: DateTime.iso8601('2021-04-24T11:41:18.205Z'),
    status: Models::Shared::AccountingExpensereportStatus::PAID,
    tax_amount: 0.0,
    total_amount: 908.46,
    updated_at: DateTime.iso8601('2021-04-24T11:41:18.205Z')
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.accounting.update_accounting_expensereport(request: req)

unless res.accounting_expensereport.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                   | [Models::Operations::UpdateAccountingExpensereportRequest](../../models/operations/updateaccountingexpensereportrequest.md) | :heavy_check_mark:                                                                                                          | The request object to use for the request.                                                                                  |

### Response

**[T.nilable(Models::Operations::UpdateAccountingExpensereportResponse)](../../models/operations/updateaccountingexpensereportresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_accounting_invoice

Updates the AccountingInvoice identified by `id`. Provide the unified AccountingInvoice fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingInvoice" method="put" path="/accounting/{connection_id}/invoice/{id}" example="accounting_invoice" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAccountingInvoiceRequest.new(
  accounting_invoice: Models::Shared::AccountingInvoice.new(
    attachments: [
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://simplistic-translation.com',
        id: '90c94972-c43d-466b-81c5-e1b293da42a7',
        mime_type: 'application/pdf',
        name: 'INV-77705.pdf'
      ),
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://squiggly-amnesty.name/',
        id: '2f7b29fe-dd39-4b86-bfa8-a20f6cc507c4',
        mime_type: 'application/pdf',
        name: 'INV-77705-1.pdf'
      ),
    ],
    balance_amount: 0.0,
    category_ids: [],
    created_at: DateTime.iso8601('2022-11-07T14:17:29.587Z'),
    currency: 'GBP',
    discount_amount: 0.0,
    due_at: DateTime.iso8601('2022-12-07T14:17:29.587Z'),
    extended_notes: [],
    id: '9dbe9ba6-99b8-46f9-b05a-aa7ccb16d06b',
    invoice_number: 'INV-77705',
    is_inclusive_of_tax: false,
    lineitems: [],
    metadata: [],
    notes: 'Auctus comburo clarus ubi deprimo comburo vulgus.',
    payment_collection_method: Models::Shared::AccountingInvoicePaymentCollectionMethod::CHARGE_AUTOMATICALLY,
    payments: [],
    posted_at: DateTime.iso8601('2022-11-07T14:17:29.587Z'),
    reference: 'PO-2331',
    salesorder_ids: [],
    send: true,
    status: Models::Shared::AccountingInvoiceStatus::OVERDUE,
    sub_total_amount: 0.0,
    tax_amount: 0.0,
    term: Models::Shared::AccountingInvoiceTerm::NET_25,
    total_amount: 0.0,
    type: Models::Shared::AccountingInvoiceType::INVOICE,
    updated_at: DateTime.iso8601('2026-05-25T00:04:53.350Z'),
    url: 'https://helpful-exterior.com/invoices/INV-77705'
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingJournal identified by `id`. Provide the unified AccountingJournal fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingJournal" method="put" path="/accounting/{connection_id}/journal/{id}" example="accounting_journal" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAccountingJournalRequest.new(
  accounting_journal: Models::Shared::AccountingJournal.new(
    attachments: [],
    category_ids: [],
    created_at: DateTime.iso8601('2020-02-20T15:14:55.881Z'),
    currency: 'CAD',
    description: 'Constans adipisci.',
    id: 'd61d0518-1798-404f-9823-cd0bdfb15894',
    is_inclusive_of_tax: true,
    lineitems: [],
    metadata: [],
    posted_at: DateTime.iso8601('2023-11-26T10:54:49.750Z'),
    reference: 'JE-78884',
    source: 'crustulum',
    status: Models::Shared::AccountingJournalStatus::VOID,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2022-01-21T00:21:40.373Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

## ~~update_accounting_order~~

Updates the AccountingOrder identified by `id`. Provide the unified AccountingOrder fields to change in the request body.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingOrder" method="put" path="/accounting/{connection_id}/order/{id}" example="accounting_order" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAccountingOrderRequest.new(
  accounting_order: Models::Shared::AccountingOrder.new(
    billing_address: Models::Shared::PropertyAccountingOrderBillingAddress.new(
      address1: '125 Hayden Highway',
      city: 'Altoona',
      country_code: 'US',
      postal_code: '94706-7691',
      region: 'Louisiana',
      region_code: 'VT'
    ),
    created_at: DateTime.iso8601('2020-11-20T03:46:49.837Z'),
    currency: 'GBP',
    id: '927f3059-1a8a-4b7e-96c0-3305d8c0a168',
    lineitems: [],
    metadata: [],
    posted_at: DateTime.iso8601('2020-11-20T03:46:49.837Z'),
    shipping_address: Models::Shared::PropertyAccountingOrderShippingAddress.new(
      address1: '450 Garett Mall',
      city: 'New Kamronburgh',
      country_code: 'US',
      postal_code: '76546',
      region: 'Oregon',
      region_code: 'VA'
    ),
    status: Models::Shared::AccountingOrderStatus::AUTHORIZED,
    total_amount: 0.0,
    type: Models::Shared::AccountingOrderType::SALES,
    updated_at: DateTime.iso8601('2022-02-15T17:04:37.210Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingPaymentterm identified by `id`. Provide the unified AccountingPaymentterm fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingPaymentterm" method="put" path="/accounting/{connection_id}/paymentterm/{id}" example="accounting_paymentterm" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAccountingPaymenttermRequest.new(
  accounting_paymentterm: Models::Shared::AccountingPaymentterm.new(
    category: Models::Shared::Category::STANDARD,
    created_at: DateTime.iso8601('2021-08-22T22:42:42.265Z'),
    day_of_month_due: 4.0,
    description: 'Cultura cena claustrum.',
    discount_day_of_month: 13.0,
    discount_days: 4.0,
    discount_percent: 5.0,
    due_days: 57.0,
    due_next_month_days: 9.0,
    id: 'd5ced635-0260-46c6-baa3-2b8926d66702',
    is_active: false,
    metadata: [],
    name: 'Net 30',
    type: Models::Shared::AccountingPaymenttermType::NET_15,
    updated_at: DateTime.iso8601('2026-02-07T23:24:22.105Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingProject identified by `id`. Provide the unified AccountingProject fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingProject" method="put" path="/accounting/{connection_id}/project/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAccountingProjectRequest.new(
  accounting_project: Models::Shared::AccountingProject.new,
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingPurchaseorder identified by `id`. Provide the unified AccountingPurchaseorder fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingPurchaseorder" method="put" path="/accounting/{connection_id}/purchaseorder/{id}" example="accounting_purchaseorder" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAccountingPurchaseorderRequest.new(
  accounting_purchaseorder: Models::Shared::AccountingPurchaseorder.new(
    attachments: [],
    billing_address: Models::Shared::PropertyAccountingPurchaseorderBillingAddress.new(
      address1: '37214 Golden Via',
      address2: 'Suite 713',
      city: 'North Eltontown',
      country_code: 'US',
      postal_code: '75366',
      region: 'Kentucky',
      region_code: 'MA'
    ),
    category_ids: [],
    created_at: DateTime.iso8601('2020-12-12T07:17:47.021Z'),
    currency: 'EUR',
    id: 'd3499c8a-c51e-4eab-b0dd-11f649f24708',
    lineitems: [],
    metadata: [],
    posted_at: DateTime.iso8601('2020-12-12T07:17:47.021Z'),
    shipping_address: Models::Shared::PropertyAccountingPurchaseorderShippingAddress.new(
      address1: '9455 Brad Forks',
      city: 'Washington',
      country_code: 'US',
      postal_code: '16547',
      region: 'Idaho',
      region_code: 'NY'
    ),
    status: Models::Shared::AccountingPurchaseorderStatus::SUBMITTED,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2021-08-15T07:37:28.014Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingQuote identified by `id`. Provide the unified AccountingQuote fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingQuote" method="put" path="/accounting/{connection_id}/quote/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAccountingQuoteRequest.new(
  accounting_quote: Models::Shared::AccountingQuote.new,
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingSalesorder identified by `id`. Provide the unified AccountingSalesorder fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingSalesorder" method="put" path="/accounting/{connection_id}/salesorder/{id}" example="accounting_salesorder" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAccountingSalesorderRequest.new(
  accounting_salesorder: Models::Shared::AccountingSalesorder.new(
    billing_address: Models::Shared::PropertyAccountingSalesorderBillingAddress.new(
      address1: '1487 Valley Road',
      address2: 'Apt. 287',
      city: 'Lake Angelina',
      country_code: 'US',
      postal_code: '85469-3199',
      region: 'Georgia',
      region_code: 'MT'
    ),
    category_ids: [],
    closed_at: DateTime.iso8601('2023-04-03T11:27:22.128Z'),
    created_at: DateTime.iso8601('2022-01-17T16:11:50.310Z'),
    currency: 'USD',
    discount_amount: 0.0,
    fees: [],
    fulfillment_type: Models::Shared::FulfillmentType::OTHER,
    id: 'aaa718ae-a1a1-4bf8-8548-30af50cd52f2',
    lineitems: [],
    metadata: [],
    order_number: '832663',
    paid_amount: 0.0,
    payments: [],
    posted_at: DateTime.iso8601('2022-01-17T16:11:50.310Z'),
    refunded_amount: 0.0,
    sales_channel: 'Wholesale',
    service_charge_amount: 0.0,
    shipping_address: Models::Shared::PropertyAccountingSalesorderShippingAddress.new(
      address1: '781 Darrell Coves',
      city: 'Annabelfield',
      country_code: 'US',
      postal_code: '92148-4116',
      region: 'Virginia',
      region_code: 'WI'
    ),
    status: Models::Shared::AccountingSalesorderStatus::PAID,
    subtotal_amount: 0.0,
    tax_amount: 0.0,
    tip_amount: 0.0,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2023-04-03T11:27:22.128Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingTaxrate identified by `id`. Provide the unified AccountingTaxrate fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingTaxrate" method="put" path="/accounting/{connection_id}/taxrate/{id}" example="accounting_taxrate" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAccountingTaxrateRequest.new(
  accounting_taxrate: Models::Shared::AccountingTaxrate.new(
    components: [
      Models::Shared::AccountingTaxrateComponent.new(
        is_compound: false,
        name: 'Exempt',
        rate: 0.0
      ),
    ],
    country: 'US',
    created_at: DateTime.iso8601('2020-01-04T10:37:56.894Z'),
    description: 'Exempt (0%)',
    effective_rate: 0.0,
    id: 'a60e2787-20d9-41e0-9818-13c0d05560d6',
    is_active: false,
    is_compound: false,
    metadata: [],
    name: 'Exempt',
    rate: 0.0,
    region: 'FL',
    total_rate: 0.0,
    type: Models::Shared::AccountingTaxrateType::SALES,
    updated_at: DateTime.iso8601('2020-02-13T18:59:38.200Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingTransaction identified by `id`. Provide the unified AccountingTransaction fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingTransaction" method="put" path="/accounting/{connection_id}/transaction/{id}" example="accounting_transaction" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAccountingTransactionRequest.new(
  accounting_transaction: Models::Shared::AccountingTransaction.new(
    created_at: DateTime.iso8601('2019-09-25T11:40:42.574Z'),
    id: '1e0e5d90-cc97-435f-9a73-45a61937a33c',
    lineitems: [
      Models::Shared::AccountingTransactionLineItem.new(
        category_ids: [],
        description: 'The Wilma Car is the latest in a series of beneficial products from Fritsch Group',
        id: '4379f323-f896-4482-b175-2ea9582459fa',
        name: 'Table',
        total_amount: 10_184.0,
        unit_amount: 536.0,
        unit_quantity: 19.0
      ),
    ],
    memo: 'withdrawal confirmed at Doyle, White and Conroy for FJD 391.94, card ending in ****0497 associated with account ***6676.',
    status: Models::Shared::AccountingTransactionStatus::PENDING,
    tax_amount: 0.0,
    total_amount: 10_184.0,
    transaction_at: DateTime.iso8601('2019-09-25T11:40:42.574Z'),
    updated_at: DateTime.iso8601('2019-10-14T12:24:46.426Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

Updates the AccountingVendorcredit identified by `id`. Provide the unified AccountingVendorcredit fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingVendorcredit" method="put" path="/accounting/{connection_id}/vendorcredit/{id}" example="accounting_vendorcredit" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateAccountingVendorcreditRequest.new(
  accounting_vendorcredit: Models::Shared::AccountingVendorcredit.new(
    applications: [],
    balance_amount: 0.0,
    created_at: DateTime.iso8601('2023-04-15T21:14:08.197Z'),
    currency: 'USD',
    id: 'a5a6fb31-8c07-4aab-8d58-afb053c2fce7',
    lineitems: [],
    metadata: [],
    notes: 'Avaritia tantum campana comitatus atrox.',
    posted_at: DateTime.iso8601('2023-04-15T21:14:08.197Z'),
    status: Models::Shared::AccountingVendorcreditStatus::AUTHORIZED,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2023-10-07T20:03:55.214Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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