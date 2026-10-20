# Bankfeedtransaction
(*bankfeedtransaction*)

## Overview

### Available Operations

* [create_accounting_bankfeedtransaction](#create_accounting_bankfeedtransaction) - Create a bankfeedtransaction
* [get_accounting_bankfeedtransaction](#get_accounting_bankfeedtransaction) - Retrieve a bankfeedtransaction
* [list_accounting_bankfeedtransactions](#list_accounting_bankfeedtransactions) - List all bankfeedtransactions
* [patch_accounting_bankfeedtransaction](#patch_accounting_bankfeedtransaction) - Update a bankfeedtransaction
* [remove_accounting_bankfeedtransaction](#remove_accounting_bankfeedtransaction) - Remove a bankfeedtransaction
* [update_accounting_bankfeedtransaction](#update_accounting_bankfeedtransaction) - Update a bankfeedtransaction

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

res = s.bankfeedtransaction.create_accounting_bankfeedtransaction(accounting_bankfeedtransaction: Models::Shared::AccountingBankfeedtransaction.new(
  amount: 60_889.0,
  bank_category: 'Clothing',
  category_ids: [],
  created_at: DateTime.iso8601('2022-03-24T23:41:08.374Z'),
  currency: 'CAD',
  description: 'Payment of SRD 92.72 for withdrawal at Halvorson - Ziemann, processed with card ending ****3731 linked to account ***7781.',
  id: 'bcd962ec-941c-41ae-888a-a6796b8891be',
  is_pending: true,
  merchant_name: 'Buckridge - Feest',
  metadata: [],
  posted_at: DateTime.iso8601('2025-04-14T04:24:56.607Z'),
  reference: '79574105',
  transaction_at: DateTime.iso8601('2022-07-30T06:23:48.352Z'),
  type: Models::Shared::AccountingBankfeedtransactionType::CREDIT,
  updated_at: DateTime.iso8601('2022-05-25T00:53:36.999Z'),
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

res = s.bankfeedtransaction.get_accounting_bankfeedtransaction(connection_id: '<id>', id: '<id>')

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

res = s.bankfeedtransaction.list_accounting_bankfeedtransactions(request: req)

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
    amount: 60_889.0,
    bank_category: 'Clothing',
    category_ids: [],
    created_at: DateTime.iso8601('2022-03-24T23:41:08.374Z'),
    currency: 'CAD',
    description: 'Payment of SRD 92.72 for withdrawal at Halvorson - Ziemann, processed with card ending ****3731 linked to account ***7781.',
    id: '72b870d8-1e8c-4e88-a717-c8d37c6d5a98',
    is_pending: true,
    merchant_name: 'Buckridge - Feest',
    metadata: [],
    posted_at: DateTime.iso8601('2025-04-14T04:24:56.619Z'),
    reference: '79574105',
    transaction_at: DateTime.iso8601('2022-07-30T06:23:48.353Z'),
    type: Models::Shared::AccountingBankfeedtransactionType::CREDIT,
    updated_at: DateTime.iso8601('2022-05-25T00:53:37.000Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.bankfeedtransaction.patch_accounting_bankfeedtransaction(request: req)

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

res = s.bankfeedtransaction.remove_accounting_bankfeedtransaction(connection_id: '<id>', id: '<id>')

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
    amount: 60_889.0,
    bank_category: 'Clothing',
    category_ids: [],
    created_at: DateTime.iso8601('2022-03-24T23:41:08.374Z'),
    currency: 'CAD',
    description: 'Payment of SRD 92.72 for withdrawal at Halvorson - Ziemann, processed with card ending ****3731 linked to account ***7781.',
    id: '72b870d8-1e8c-4e88-a717-c8d37c6d5a98',
    is_pending: true,
    merchant_name: 'Buckridge - Feest',
    metadata: [],
    posted_at: DateTime.iso8601('2025-04-14T04:24:56.619Z'),
    reference: '79574105',
    transaction_at: DateTime.iso8601('2022-07-30T06:23:48.353Z'),
    type: Models::Shared::AccountingBankfeedtransactionType::CREDIT,
    updated_at: DateTime.iso8601('2022-05-25T00:53:37.000Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.bankfeedtransaction.update_accounting_bankfeedtransaction(request: req)

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