# Invoice
(*invoice*)

## Overview

### Available Operations

* [create_accounting_invoice](#create_accounting_invoice) - Create an invoice
* [get_accounting_invoice](#get_accounting_invoice) - Retrieve an invoice
* [list_accounting_invoices](#list_accounting_invoices) - List all invoices
* [patch_accounting_invoice](#patch_accounting_invoice) - Update an invoice
* [remove_accounting_invoice](#remove_accounting_invoice) - Remove an invoice
* [update_accounting_invoice](#update_accounting_invoice) - Update an invoice

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

res = s.invoice.create_accounting_invoice(accounting_invoice: Models::Shared::AccountingInvoice.new(
  attachments: [
    Models::Shared::AccountingAttachment.new(
      download_url: 'https://glossy-markup.net/',
      id: '71283036-dfe2-4f7f-976a-4102a840e3ad',
      mime_type: 'application/pdf',
      name: 'INV-77705.pdf',
    ),
    Models::Shared::AccountingAttachment.new(
      download_url: 'https://earnest-giggle.net',
      id: '6b5f8ce5-4eab-4633-9eec-5d751eaff285',
      mime_type: 'application/pdf',
      name: 'INV-77705-1.pdf',
    ),
  ],
  balance_amount: 0.0,
  category_ids: [],
  created_at: DateTime.iso8601('2022-11-07T14:17:29.587Z'),
  currency: 'GBP',
  discount_amount: 0.0,
  due_at: DateTime.iso8601('2022-12-07T14:17:29.587Z'),
  extended_notes: [],
  id: '6d1c5cf5-a11e-40f5-bec3-913b4e22a82e',
  invoice_number: 'INV-77705',
  is_inclusive_of_tax: false,
  lineitems: [],
  metadata: [],
  notes: 'Adinventitias sursum temptatio auctus comburo clarus ubi deprimo.',
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
  updated_at: DateTime.iso8601('2026-04-22T16:42:12.859Z'),
  url: 'https://gifted-yarmulke.info/invoices/INV-77705',
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

res = s.invoice.get_accounting_invoice(connection_id: '<id>', id: '<id>')

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

res = s.invoice.list_accounting_invoices(request: req)

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
        id: 'ec6dc6c0-10e1-484f-a96c-52e85d07e0b8',
        mime_type: 'application/pdf',
        name: 'INV-77705.pdf',
      ),
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://earnest-giggle.net',
        id: 'b94ae840-ba3d-4ae0-bed7-580c9878ff94',
        mime_type: 'application/pdf',
        name: 'INV-77705-1.pdf',
      ),
    ],
    balance_amount: 0.0,
    category_ids: [],
    created_at: DateTime.iso8601('2022-11-07T14:17:29.587Z'),
    currency: 'GBP',
    discount_amount: 0.0,
    due_at: DateTime.iso8601('2022-12-07T14:17:29.587Z'),
    extended_notes: [],
    id: 'f9f05538-4577-435e-b422-343be8944d83',
    invoice_number: 'INV-77705',
    is_inclusive_of_tax: false,
    lineitems: [],
    metadata: [],
    notes: 'Adinventitias sursum temptatio auctus comburo clarus ubi deprimo.',
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
    updated_at: DateTime.iso8601('2026-04-22T16:42:12.902Z'),
    url: 'https://gifted-yarmulke.info/invoices/INV-77705',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.invoice.patch_accounting_invoice(request: req)

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

res = s.invoice.remove_accounting_invoice(connection_id: '<id>', id: '<id>')

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
        id: 'ec6dc6c0-10e1-484f-a96c-52e85d07e0b8',
        mime_type: 'application/pdf',
        name: 'INV-77705.pdf',
      ),
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://earnest-giggle.net',
        id: 'b94ae840-ba3d-4ae0-bed7-580c9878ff94',
        mime_type: 'application/pdf',
        name: 'INV-77705-1.pdf',
      ),
    ],
    balance_amount: 0.0,
    category_ids: [],
    created_at: DateTime.iso8601('2022-11-07T14:17:29.587Z'),
    currency: 'GBP',
    discount_amount: 0.0,
    due_at: DateTime.iso8601('2022-12-07T14:17:29.587Z'),
    extended_notes: [],
    id: 'f9f05538-4577-435e-b422-343be8944d83',
    invoice_number: 'INV-77705',
    is_inclusive_of_tax: false,
    lineitems: [],
    metadata: [],
    notes: 'Adinventitias sursum temptatio auctus comburo clarus ubi deprimo.',
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
    updated_at: DateTime.iso8601('2026-04-22T16:42:12.902Z'),
    url: 'https://gifted-yarmulke.info/invoices/INV-77705',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.invoice.update_accounting_invoice(request: req)

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