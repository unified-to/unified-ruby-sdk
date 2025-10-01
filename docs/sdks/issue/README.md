# Issue
(*issue*)

## Overview

### Available Operations

* [get_unified_issue](#get_unified_issue) - Retrieve support issue
* [list_unified_issues](#list_unified_issues) - List support issues

## get_unified_issue

Retrieve support issue

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getUnifiedIssue" method="get" path="/unified/issue/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.issue.get_unified_issue(id: '<id>')

unless res.issue.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | ID of the Issue    |

### Response

**[T.nilable(Models::Operations::GetUnifiedIssueResponse)](../../models/operations/getunifiedissueresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_unified_issues

List support issues

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUnifiedIssues" method="get" path="/unified/issue" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListUnifiedIssuesRequest.new()

res = s.issue.list_unified_issues(request: req)

unless res.issues.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListUnifiedIssuesRequest](../../models/operations/listunifiedissuesrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListUnifiedIssuesResponse)](../../models/operations/listunifiedissuesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |