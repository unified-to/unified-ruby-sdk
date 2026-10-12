# Gputype
(*gputype*)

## Overview

### Available Operations

* [get_compute_gputype](#get_compute_gputype) - Retrieve a gputype
* [list_compute_gputypes](#list_compute_gputypes) - List all gputypes

## get_compute_gputype

Retrieve a gputype

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getComputeGputype" method="get" path="/compute/{connection_id}/gputype/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.gputype.get_compute_gputype(connection_id: '<id>', id: '<id>')

unless res.compute_gputype.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Gputype                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetComputeGputypeQueryParamFields](../../models/operations/getcomputegputypequeryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetComputeGputypeResponse)](../../models/operations/getcomputegputyperesponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_compute_gputypes

List all gputypes

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listComputeGputypes" method="get" path="/compute/{connection_id}/gputype" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListComputeGputypesRequest.new(
  connection_id: '<id>',
)

res = s.gputype.list_compute_gputypes(request: req)

unless res.compute_gputypes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListComputeGputypesRequest](../../models/operations/listcomputegputypesrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListComputeGputypesResponse)](../../models/operations/listcomputegputypesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |