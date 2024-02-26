# Issue


### Available Operations

* [list_unified_issues](#list_unified_issues) - List support issues

## list_unified_issues

List support issues

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListUnifiedIssuesRequest.new()
    
res = s.issue.list_unified_issues(req, ::UnifiedRubySDK::Operations::ListUnifiedIssuesSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.issues.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [::UnifiedRubySDK::Operations::ListUnifiedIssuesRequest](../../models/operations/listunifiedissuesrequest.md)   | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |
| `security`                                                                                                      | [::UnifiedRubySDK::Operations::ListUnifiedIssuesSecurity](../../models/operations/listunifiedissuessecurity.md) | :heavy_check_mark:                                                                                              | The security requirements to use for the request.                                                               |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListUnifiedIssuesResponse)](../../models/operations/listunifiedissuesresponse.md)**

