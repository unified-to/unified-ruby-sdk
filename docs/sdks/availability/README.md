# Availability
(*availability*)

## Overview

### Available Operations

* [list_commerce_availabilities2](#list_commerce_availabilities2) - List all availabilities

## list_commerce_availabilities2

List all availabilities

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCommerceAvailabilities2" method="get" path="/commerce/{connection_id}/availability" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCommerceAvailabilities2Request.new(
  connection_id: '<id>',
)

res = s.availability.list_commerce_availabilities2(request: req)

unless res.commerce_availabilities.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::ListCommerceAvailabilities2Request](../../models/operations/listcommerceavailabilities2request.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::ListCommerceAvailabilities2Response)](../../models/operations/listcommerceavailabilities2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |