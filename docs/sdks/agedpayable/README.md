# Agedpayable
(*agedpayable*)

## Overview

### Available Operations

* [get_accounting_agedpayable](#get_accounting_agedpayable) - Retrieve an agedpayable
* [list_accounting_agedpayables](#list_accounting_agedpayables) - List all agedpayables

## get_accounting_agedpayable

Retrieve an agedpayable

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingAgedpayable" method="get" path="/accounting/{connection_id}/agedpayable/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.agedpayable.get_accounting_agedpayable(connection_id: '<id>', id: '<id>')

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

## list_accounting_agedpayables

List all agedpayables

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingAgedpayables" method="get" path="/accounting/{connection_id}/agedpayable" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingAgedpayablesRequest.new(
  connection_id: '<id>',
)

res = s.agedpayable.list_accounting_agedpayables(request: req)

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