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
      id: '0b2b5623-c86c-48b6-9b52-3032f50b615c',
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
  id: 'b9e6d33c-057c-4adf-b443-a7e1a62487fa',
  invoice_number: 'vinco',
  is_inclusive_of_tax: true,
  lineitems: [],
  metadata: [],
  notes: 'Auctus comburo clarus ubi.',
  paid_amount: 0.0,
  paid_at: DateTime.iso8601('2022-11-25T15:00:28.871Z'),
  payment_collection_method: Models::Shared::AccountingInvoicePaymentCollectionMethod::SEND_INVOICE,
  payments: [],
  posted_at: DateTime.iso8601('2026-04-16T20:56:16.977Z'),
  reference: 'adinventitias',
  salesorder_ids: [],
  send: true,
  status: Models::Shared::AccountingInvoiceStatus::DELETED,
  sub_total_amount: 0.0,
  tax_amount: 0.0,
  term: Models::Shared::AccountingInvoiceTerm::NET_45,
  total_amount: 0.0,
  type: Models::Shared::AccountingInvoiceType::CREDITMEMO,
  updated_at: DateTime.iso8601('2023-02-07T19:40:35.053Z'),
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
        id: '27b32839-b10b-4e14-ba69-3a6390e5e1e9',
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
    id: '78a173f7-dafa-4b6d-9a2b-e84bc65a5176',
    invoice_number: 'vinco',
    is_inclusive_of_tax: true,
    lineitems: [],
    metadata: [],
    notes: 'Auctus comburo clarus ubi.',
    paid_amount: 0.0,
    paid_at: DateTime.iso8601('2022-11-25T15:00:28.871Z'),
    payment_collection_method: Models::Shared::AccountingInvoicePaymentCollectionMethod::SEND_INVOICE,
    payments: [],
    posted_at: DateTime.iso8601('2026-04-16T20:56:17.032Z'),
    reference: 'adinventitias',
    salesorder_ids: [],
    send: true,
    status: Models::Shared::AccountingInvoiceStatus::DELETED,
    sub_total_amount: 0.0,
    tax_amount: 0.0,
    term: Models::Shared::AccountingInvoiceTerm::NET_45,
    total_amount: 0.0,
    type: Models::Shared::AccountingInvoiceType::CREDITMEMO,
    updated_at: DateTime.iso8601('2023-02-07T19:40:35.057Z'),
    url: 'https://gifted-yarmulke.info/',
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
        id: '27b32839-b10b-4e14-ba69-3a6390e5e1e9',
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
    id: '78a173f7-dafa-4b6d-9a2b-e84bc65a5176',
    invoice_number: 'vinco',
    is_inclusive_of_tax: true,
    lineitems: [],
    metadata: [],
    notes: 'Auctus comburo clarus ubi.',
    paid_amount: 0.0,
    paid_at: DateTime.iso8601('2022-11-25T15:00:28.871Z'),
    payment_collection_method: Models::Shared::AccountingInvoicePaymentCollectionMethod::SEND_INVOICE,
    payments: [],
    posted_at: DateTime.iso8601('2026-04-16T20:56:17.032Z'),
    reference: 'adinventitias',
    salesorder_ids: [],
    send: true,
    status: Models::Shared::AccountingInvoiceStatus::DELETED,
    sub_total_amount: 0.0,
    tax_amount: 0.0,
    term: Models::Shared::AccountingInvoiceTerm::NET_45,
    total_amount: 0.0,
    type: Models::Shared::AccountingInvoiceType::CREDITMEMO,
    updated_at: DateTime.iso8601('2023-02-07T19:40:35.057Z'),
    url: 'https://gifted-yarmulke.info/',
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