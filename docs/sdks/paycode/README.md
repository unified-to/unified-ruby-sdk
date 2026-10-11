# Paycode
(*paycode*)

## Overview

### Available Operations

* [get_hris_paycode](#get_hris_paycode) - Retrieve a paycode
* [list_hris_paycodes](#list_hris_paycodes) - List all paycodes

## get_hris_paycode

Retrieve a paycode

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisPaycode" method="get" path="/hris/{connection_id}/paycode/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.paycode.get_hris_paycode(connection_id: '<id>', id: '<id>')

unless res.hris_paycode.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Paycode                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisPaycodeQueryParamFields](../../models/operations/gethrispaycodequeryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisPaycodeResponse)](../../models/operations/gethrispaycoderesponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_paycodes

List all paycodes

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisPaycodes" method="get" path="/hris/{connection_id}/paycode" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisPaycodesRequest.new(
  connection_id: '<id>',
)

res = s.paycode.list_hris_paycodes(request: req)

unless res.hris_paycodes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListHrisPaycodesRequest](../../models/operations/listhrispaycodesrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListHrisPaycodesResponse)](../../models/operations/listhrispaycodesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |