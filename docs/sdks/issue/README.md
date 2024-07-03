# Issue


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

    
res = s.issue.list_unified_issues(limit=7069.08, offset=7461.37, updated_gte=DateTime.iso8601('2022-01-21T01:55:24.746Z'))

if ! res.issues.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                | Type                                                                     | Required                                                                 | Description                                                              |
| ------------------------------------------------------------------------ | ------------------------------------------------------------------------ | ------------------------------------------------------------------------ | ------------------------------------------------------------------------ |
| `limit`                                                                  | *::Float*                                                                | :heavy_minus_sign:                                                       | N/A                                                                      |
| `offset`                                                                 | *::Float*                                                                | :heavy_minus_sign:                                                       | N/A                                                                      |
| `updated_gte`                                                            | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)     | :heavy_minus_sign:                                                       | Return only results whose updated date is equal or greater to this value |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListUnifiedIssuesResponse)](../../models/operations/listunifiedissuesresponse.md)**

