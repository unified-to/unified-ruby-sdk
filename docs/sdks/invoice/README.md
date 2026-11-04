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

Creates a AccountingInvoice. Provide the unified AccountingInvoice fields in the request body; they are mapped to the provider's API. Returns the created AccountingInvoice.

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
      id: '3af89e62-83f8-4068-b9e2-69f3fc81b6b3',
      mime_type: 'application/pdf',
      name: 'INV-77705.pdf',
    ),
    Models::Shared::AccountingAttachment.new(
      download_url: 'https://earnest-giggle.net',
      id: '26a6ea79-1ae8-44e8-a42a-4e42f303bc36',
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
  id: '63880f37-934f-4159-8a7a-5d01ce88eb7e',
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
  updated_at: DateTime.iso8601('2026-05-05T17:19:41.446Z'),
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

Retrieves a single AccountingInvoice by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

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

Returns a list of AccountingInvoices. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

Updates the AccountingInvoice identified by `id`. Provide the unified AccountingInvoice fields to change in the request body.

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
        id: '48ae43d1-e01d-4a6f-8de4-a575e9f90641',
        mime_type: 'application/pdf',
        name: 'INV-77705.pdf',
      ),
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://earnest-giggle.net',
        id: '8b14c73b-f8dd-4b55-a55a-0ebc065fd756',
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
    id: '2393d0d7-0d2b-4052-96dd-e0982642725b',
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
    updated_at: DateTime.iso8601('2026-05-05T17:19:41.494Z'),
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

Deletes the AccountingInvoice identified by `id`.

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

Updates the AccountingInvoice identified by `id`. Provide the unified AccountingInvoice fields to change in the request body.

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
        id: '48ae43d1-e01d-4a6f-8de4-a575e9f90641',
        mime_type: 'application/pdf',
        name: 'INV-77705.pdf',
      ),
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://earnest-giggle.net',
        id: '8b14c73b-f8dd-4b55-a55a-0ebc065fd756',
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
    id: '2393d0d7-0d2b-4052-96dd-e0982642725b',
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
    updated_at: DateTime.iso8601('2026-05-05T17:19:41.494Z'),
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