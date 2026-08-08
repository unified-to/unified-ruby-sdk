# Agedreceivable
(*agedreceivable*)

## Overview

### Available Operations

* [get_accounting_agedreceivable](#get_accounting_agedreceivable) - Retrieve an agedreceivable
* [list_accounting_agedreceivables](#list_accounting_agedreceivables) - List all agedreceivables

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

res = s.agedreceivable.get_accounting_agedreceivable(connection_id: '<id>', id: '<id>')

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

res = s.agedreceivable.list_accounting_agedreceivables(request: req)

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