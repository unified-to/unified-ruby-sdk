# Trialbalance
(*trialbalance*)

## Overview

### Available Operations

* [get_accounting_trialbalance2](#get_accounting_trialbalance2) - Retrieve a trialbalance
* [list_accounting_trialbalances2](#list_accounting_trialbalances2) - List all trialbalances

## get_accounting_trialbalance2

Retrieve a trialbalance

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingTrialbalance2" method="get" path="/accounting/{connection_id}/trialbalance/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.trialbalance.get_accounting_trialbalance2(connection_id: '<id>', id: '<id>')

unless res.accounting_trialbalance.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                         | Type                                                                                                                                              | Required                                                                                                                                          | Description                                                                                                                                       |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                                                                   | *::String*                                                                                                                                        | :heavy_check_mark:                                                                                                                                | ID of the connection                                                                                                                              |
| `id`                                                                                                                                              | *::String*                                                                                                                                        | :heavy_check_mark:                                                                                                                                | ID of the Trialbalance                                                                                                                            |
| `fields_`                                                                                                                                         | T::Array<[Models::Operations::GetAccountingTrialbalance2QueryParamFields](../../models/operations/getaccountingtrialbalance2queryparamfields.md)> | :heavy_minus_sign:                                                                                                                                | Fields to return                                                                                                                                  |
| `raw`                                                                                                                                             | *T.nilable(::String)*                                                                                                                             | :heavy_minus_sign:                                                                                                                                | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar  |

### Response

**[T.nilable(Models::Operations::GetAccountingTrialbalance2Response)](../../models/operations/getaccountingtrialbalance2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_trialbalances2

List all trialbalances

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingTrialbalances2" method="get" path="/accounting/{connection_id}/trialbalance" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingTrialbalances2Request.new(
  connection_id: '<id>',
)

res = s.trialbalance.list_accounting_trialbalances2(request: req)

unless res.accounting_trialbalances.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [Models::Operations::ListAccountingTrialbalances2Request](../../models/operations/listaccountingtrialbalances2request.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |

### Response

**[T.nilable(Models::Operations::ListAccountingTrialbalances2Response)](../../models/operations/listaccountingtrialbalances2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |