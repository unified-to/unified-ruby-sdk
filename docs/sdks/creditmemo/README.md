# Creditmemo
(*creditmemo*)

## Overview

### Available Operations

* [create_accounting_creditmemo](#create_accounting_creditmemo) - Create a creditmemo
* [get_accounting_creditmemo](#get_accounting_creditmemo) - Retrieve a creditmemo
* [list_accounting_creditmemoes](#list_accounting_creditmemoes) - List all creditmemoes
* [patch_accounting_creditmemo](#patch_accounting_creditmemo) - Update a creditmemo
* [remove_accounting_creditmemo](#remove_accounting_creditmemo) - Remove a creditmemo
* [update_accounting_creditmemo](#update_accounting_creditmemo) - Update a creditmemo

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

res = s.creditmemo.create_accounting_creditmemo(accounting_creditmemo: Models::Shared::AccountingCreditmemo.new(
  applications: [],
  attachments: [
    Models::Shared::AccountingAttachment.new(
      download_url: 'https://enlightened-chairperson.com/',
      id: 'c46748f6-fef0-4b99-b609-9f0d64fae610',
      mime_type: 'complectus',
      name: 'thesis',
    ),
  ],
  created_at: DateTime.iso8601('2023-09-20T01:47:01.571Z'),
  creditmemo_number: 'ulterius',
  currency: 'MKD',
  discount_amount: 0.0,
  due_at: DateTime.iso8601('2023-10-18T04:35:00.543Z'),
  id: '8d85ddd1-6cf5-4857-b796-a45dbc2cf874',
  lineitems: [],
  metadata: [],
  notes: 'Dedecor amo adfero torqueo quas.',
  payment_collection_method: Models::Shared::AccountingCreditmemoPaymentCollectionMethod::CHARGE_AUTOMATICALLY,
  posted_at: DateTime.iso8601('2025-11-16T21:22:38.944Z'),
  refund_amount: 0.0,
  refund_reason: 'Virgo inflammatio quibusdam aestivus magnam.',
  refunded_at: DateTime.iso8601('2023-10-23T00:35:36.814Z'),
  send: false,
  status: Models::Shared::AccountingCreditmemoStatus::PAID,
  tax_amount: 0.0,
  total_amount: 0.0,
  updated_at: DateTime.iso8601('2024-11-16T07:57:50.769Z'),
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

res = s.creditmemo.get_accounting_creditmemo(connection_id: '<id>', id: '<id>')

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

res = s.creditmemo.list_accounting_creditmemoes(request: req)

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
        id: 'cc7e4406-43ae-4197-9a78-b72a243a5999',
        mime_type: 'complectus',
        name: 'thesis',
      ),
    ],
    created_at: DateTime.iso8601('2023-09-20T01:47:01.571Z'),
    creditmemo_number: 'ulterius',
    currency: 'MKD',
    discount_amount: 0.0,
    due_at: DateTime.iso8601('2023-10-18T04:35:00.543Z'),
    id: '91169fd7-bb60-4ea9-8318-4af0ea38b7b9',
    lineitems: [],
    metadata: [],
    notes: 'Dedecor amo adfero torqueo quas.',
    payment_collection_method: Models::Shared::AccountingCreditmemoPaymentCollectionMethod::CHARGE_AUTOMATICALLY,
    posted_at: DateTime.iso8601('2025-11-16T21:22:38.970Z'),
    refund_amount: 0.0,
    refund_reason: 'Virgo inflammatio quibusdam aestivus magnam.',
    refunded_at: DateTime.iso8601('2023-10-23T00:35:36.814Z'),
    send: false,
    status: Models::Shared::AccountingCreditmemoStatus::PAID,
    tax_amount: 0.0,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2024-11-16T07:57:50.783Z'),
    url: 'https://lighthearted-bandwidth.net/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.creditmemo.patch_accounting_creditmemo(request: req)

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

res = s.creditmemo.remove_accounting_creditmemo(connection_id: '<id>', id: '<id>')

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
        id: 'cc7e4406-43ae-4197-9a78-b72a243a5999',
        mime_type: 'complectus',
        name: 'thesis',
      ),
    ],
    created_at: DateTime.iso8601('2023-09-20T01:47:01.571Z'),
    creditmemo_number: 'ulterius',
    currency: 'MKD',
    discount_amount: 0.0,
    due_at: DateTime.iso8601('2023-10-18T04:35:00.543Z'),
    id: '91169fd7-bb60-4ea9-8318-4af0ea38b7b9',
    lineitems: [],
    metadata: [],
    notes: 'Dedecor amo adfero torqueo quas.',
    payment_collection_method: Models::Shared::AccountingCreditmemoPaymentCollectionMethod::CHARGE_AUTOMATICALLY,
    posted_at: DateTime.iso8601('2025-11-16T21:22:38.970Z'),
    refund_amount: 0.0,
    refund_reason: 'Virgo inflammatio quibusdam aestivus magnam.',
    refunded_at: DateTime.iso8601('2023-10-23T00:35:36.814Z'),
    send: false,
    status: Models::Shared::AccountingCreditmemoStatus::PAID,
    tax_amount: 0.0,
    total_amount: 0.0,
    updated_at: DateTime.iso8601('2024-11-16T07:57:50.783Z'),
    url: 'https://lighthearted-bandwidth.net/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.creditmemo.update_accounting_creditmemo(request: req)

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