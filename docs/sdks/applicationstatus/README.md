# Applicationstatus
(*applicationstatus*)

## Overview

### Available Operations

* [list_ats_applicationstatuses2](#list_ats_applicationstatuses2) - List all applicationstatuses

## list_ats_applicationstatuses2

List all applicationstatuses

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAtsApplicationstatuses2" method="get" path="/ats/{connection_id}/applicationstatus" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAtsApplicationstatuses2Request.new(
  connection_id: '<id>',
)

res = s.applicationstatus.list_ats_applicationstatuses2(request: req)

unless res.ats_statuses.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::ListAtsApplicationstatuses2Request](../../models/operations/listatsapplicationstatuses2request.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::ListAtsApplicationstatuses2Response)](../../models/operations/listatsapplicationstatuses2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |