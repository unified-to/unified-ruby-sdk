# Promoted
(*promoted*)

## Overview

### Available Operations

* [list_ads_promotedes](#list_ads_promotedes) - List all promotedes

## list_ads_promotedes

List all promotedes

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAdsPromotedes" method="get" path="/ads/{connection_id}/promoted" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAdsPromotedesRequest.new(
  connection_id: '<id>',
)

res = s.promoted.list_ads_promotedes(request: req)

unless res.ads_promotedes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListAdsPromotedesRequest](../../models/operations/listadspromotedesrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListAdsPromotedesResponse)](../../models/operations/listadspromotedesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |