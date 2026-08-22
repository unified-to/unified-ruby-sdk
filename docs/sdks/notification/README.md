# Notification
(*notification*)

## Overview

### Available Operations

* [list_unified_notifications](#list_unified_notifications) - List event notifications

## list_unified_notifications

List event notifications

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUnifiedNotifications" method="get" path="/unified/notification" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListUnifiedNotificationsRequest.new()

res = s.notification.list_unified_notifications(request: req)

unless res.notifications.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::ListUnifiedNotificationsRequest](../../models/operations/listunifiednotificationsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::ListUnifiedNotificationsResponse)](../../models/operations/listunifiednotificationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |