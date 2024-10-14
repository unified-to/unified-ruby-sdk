# Issue

## Overview

### Available Operations

* [list_unified_issues](#list_unified_issues) - List support issues

## list_unified_issues

List support issues

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListUnifiedIssuesRequest.new()
    
res = s.issue.list_unified_issues(req)

if ! res.issues.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [::UnifiedRubySDK::Operations::ListUnifiedIssuesRequest](../../models/operations/listunifiedissuesrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListUnifiedIssuesResponse)](../../models/operations/listunifiedissuesresponse.md)**

