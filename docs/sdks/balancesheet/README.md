# Balancesheet
(*balancesheet*)

## Overview

### Available Operations

* [get_accounting_balancesheet2](#get_accounting_balancesheet2) - Retrieve a balancesheet
* [list_accounting_balancesheets2](#list_accounting_balancesheets2) - List all balancesheets

## get_accounting_balancesheet2

Retrieve a balancesheet

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingBalancesheet2" method="get" path="/accounting/{connection_id}/balancesheet/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.balancesheet.get_accounting_balancesheet2(connection_id: '<id>', id: '<id>')

unless res.accounting_balancesheet.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                         | Type                                                                                                                                              | Required                                                                                                                                          | Description                                                                                                                                       |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                                                                   | *::String*                                                                                                                                        | :heavy_check_mark:                                                                                                                                | ID of the connection                                                                                                                              |
| `id`                                                                                                                                              | *::String*                                                                                                                                        | :heavy_check_mark:                                                                                                                                | ID of the Balancesheet                                                                                                                            |
| `fields_`                                                                                                                                         | T::Array<[Models::Operations::GetAccountingBalancesheet2QueryParamFields](../../models/operations/getaccountingbalancesheet2queryparamfields.md)> | :heavy_minus_sign:                                                                                                                                | Fields to return                                                                                                                                  |
| `raw`                                                                                                                                             | *T.nilable(::String)*                                                                                                                             | :heavy_minus_sign:                                                                                                                                | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar  |

### Response

**[T.nilable(Models::Operations::GetAccountingBalancesheet2Response)](../../models/operations/getaccountingbalancesheet2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_balancesheets2

List all balancesheets

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingBalancesheets2" method="get" path="/accounting/{connection_id}/balancesheet" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingBalancesheets2Request.new(
  connection_id: '<id>',
)

res = s.balancesheet.list_accounting_balancesheets2(request: req)

unless res.accounting_balancesheets.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [Models::Operations::ListAccountingBalancesheets2Request](../../models/operations/listaccountingbalancesheets2request.md) | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |

### Response

**[T.nilable(Models::Operations::ListAccountingBalancesheets2Response)](../../models/operations/listaccountingbalancesheets2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |