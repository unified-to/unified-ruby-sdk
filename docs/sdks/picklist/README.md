# Picklist
(*picklist*)

## Overview

### Available Operations

* [list_crm_picklists2](#list_crm_picklists2) - List all picklists

## list_crm_picklists2

List all picklists

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCrmPicklists2" method="get" path="/crm/{connection_id}/picklist" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCrmPicklists2Request.new(
  connection_id: '<id>',
)

res = s.picklist.list_crm_picklists2(request: req)

unless res.crm_picklists.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListCrmPicklists2Request](../../models/operations/listcrmpicklists2request.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListCrmPicklists2Response)](../../models/operations/listcrmpicklists2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |