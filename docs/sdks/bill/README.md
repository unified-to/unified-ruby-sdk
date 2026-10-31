# Bill
(*bill*)

## Overview

### Available Operations

* [create_accounting_bill](#create_accounting_bill) - Create a bill
* [get_accounting_bill](#get_accounting_bill) - Retrieve a bill
* [list_accounting_bills](#list_accounting_bills) - List all bills
* [patch_accounting_bill](#patch_accounting_bill) - Update a bill
* [remove_accounting_bill](#remove_accounting_bill) - Remove a bill
* [update_accounting_bill](#update_accounting_bill) - Update a bill

## create_accounting_bill

Creates a AccountingBill. Provide the unified AccountingBill fields in the request body; they are mapped to the provider's API. Returns the created AccountingBill.

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

res = s.bill.create_accounting_bill(accounting_bill: Models::Shared::AccountingBill.new(
  attachments: [
    Models::Shared::AccountingAttachment.new(
      download_url: 'https://puny-foodstuffs.name',
      id: '02383980-b5ac-4e34-a8a0-4c34b033c262',
      mime_type: 'application/pdf',
      name: 'BILL-2466.pdf',
    ),
    Models::Shared::AccountingAttachment.new(
      download_url: 'https://grimy-characterization.net',
      id: '63a6755c-7eaa-410d-a580-a1d5c98d3e23',
      mime_type: 'application/pdf',
      name: 'BILL-2466-1.pdf',
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
  id: '23301955-39b3-4c4f-b9e0-42c562b3db4a',
  lineitems: [],
  metadata: [],
  notes: 'Admiratio deporto tutamen cilicium infit amissio ante demulceo.',
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
  updated_at: DateTime.iso8601('2020-06-02T08:06:11.622Z'),
  url: 'https://cluttered-importance.org/bills/BILL-2466',
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

## get_accounting_bill

Retrieves a single AccountingBill by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

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

res = s.bill.get_accounting_bill(connection_id: '<id>', id: '<id>')

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

## list_accounting_bills

Returns a list of AccountingBills. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

res = s.bill.list_accounting_bills(request: req)

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

## patch_accounting_bill

Updates the AccountingBill identified by `id`. Provide the unified AccountingBill fields to change in the request body.

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
    attachments: [
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://puny-foodstuffs.name',
        id: '1aae1086-2482-48e6-af08-d601c1a13fd2',
        mime_type: 'application/pdf',
        name: 'BILL-2466.pdf',
      ),
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://grimy-characterization.net',
        id: '1c84eefa-e7a1-4a92-9812-9dd18b3fc38a',
        mime_type: 'application/pdf',
        name: 'BILL-2466-1.pdf',
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
    id: '56e0087a-12af-49be-9079-e419384f8777',
    lineitems: [],
    metadata: [],
    notes: 'Admiratio deporto tutamen cilicium infit amissio ante demulceo.',
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
    updated_at: DateTime.iso8601('2020-06-02T08:06:11.629Z'),
    url: 'https://cluttered-importance.org/bills/BILL-2466',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.bill.patch_accounting_bill(request: req)

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

## remove_accounting_bill

Deletes the AccountingBill identified by `id`.

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

res = s.bill.remove_accounting_bill(connection_id: '<id>', id: '<id>')

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

## update_accounting_bill

Updates the AccountingBill identified by `id`. Provide the unified AccountingBill fields to change in the request body.

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
    attachments: [
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://puny-foodstuffs.name',
        id: '1aae1086-2482-48e6-af08-d601c1a13fd2',
        mime_type: 'application/pdf',
        name: 'BILL-2466.pdf',
      ),
      Models::Shared::AccountingAttachment.new(
        download_url: 'https://grimy-characterization.net',
        id: '1c84eefa-e7a1-4a92-9812-9dd18b3fc38a',
        mime_type: 'application/pdf',
        name: 'BILL-2466-1.pdf',
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
    id: '56e0087a-12af-49be-9079-e419384f8777',
    lineitems: [],
    metadata: [],
    notes: 'Admiratio deporto tutamen cilicium infit amissio ante demulceo.',
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
    updated_at: DateTime.iso8601('2020-06-02T08:06:11.629Z'),
    url: 'https://cluttered-importance.org/bills/BILL-2466',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.bill.update_accounting_bill(request: req)

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