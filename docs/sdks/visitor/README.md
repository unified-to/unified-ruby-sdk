# Visitor
(*visitor*)

## Overview

### Available Operations

* [create_analytics_visitor](#create_analytics_visitor) - Create a visitor
* [get_analytics_visitor](#get_analytics_visitor) - Retrieve a visitor
* [list_analytics_visitors](#list_analytics_visitors) - List all visitors
* [patch_analytics_visitor](#patch_analytics_visitor) - Update a visitor
* [remove_analytics_visitor](#remove_analytics_visitor) - Remove a visitor
* [update_analytics_visitor](#update_analytics_visitor) - Update a visitor

## create_analytics_visitor

Create a visitor

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAnalyticsVisitor" method="post" path="/analytics/{connection_id}/visitor" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.visitor.create_analytics_visitor(analytics_visitor: Models::Shared::AnalyticsVisitor.new(), connection_id: '<id>')

unless res.analytics_visitor.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `analytics_visitor`                                                                                                                              | [Models::Shared::AnalyticsVisitor](../../models/shared/analyticsvisitor.md)                                                                      | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAnalyticsVisitorQueryParamFields](../../models/operations/createanalyticsvisitorqueryparamfields.md)>        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAnalyticsVisitorResponse)](../../models/operations/createanalyticsvisitorresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_analytics_visitor

Retrieve a visitor

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAnalyticsVisitor" method="get" path="/analytics/{connection_id}/visitor/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.visitor.get_analytics_visitor(connection_id: '<id>', id: '<id>')

unless res.analytics_visitor.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Visitor                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAnalyticsVisitorQueryParamFields](../../models/operations/getanalyticsvisitorqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAnalyticsVisitorResponse)](../../models/operations/getanalyticsvisitorresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_analytics_visitors

List all visitors

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAnalyticsVisitors" method="get" path="/analytics/{connection_id}/visitor" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAnalyticsVisitorsRequest.new(
  connection_id: '<id>',
)

res = s.visitor.list_analytics_visitors(request: req)

unless res.analytics_visitors.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::ListAnalyticsVisitorsRequest](../../models/operations/listanalyticsvisitorsrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::ListAnalyticsVisitorsResponse)](../../models/operations/listanalyticsvisitorsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_analytics_visitor

Update a visitor

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAnalyticsVisitor" method="patch" path="/analytics/{connection_id}/visitor/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAnalyticsVisitorRequest.new(
  analytics_visitor: Models::Shared::AnalyticsVisitor.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.visitor.patch_analytics_visitor(request: req)

unless res.analytics_visitor.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::PatchAnalyticsVisitorRequest](../../models/operations/patchanalyticsvisitorrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::PatchAnalyticsVisitorResponse)](../../models/operations/patchanalyticsvisitorresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_analytics_visitor

Remove a visitor

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAnalyticsVisitor" method="delete" path="/analytics/{connection_id}/visitor/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.visitor.remove_analytics_visitor(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Visitor    |

### Response

**[T.nilable(Models::Operations::RemoveAnalyticsVisitorResponse)](../../models/operations/removeanalyticsvisitorresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_analytics_visitor

Update a visitor

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAnalyticsVisitor" method="put" path="/analytics/{connection_id}/visitor/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAnalyticsVisitorRequest.new(
  analytics_visitor: Models::Shared::AnalyticsVisitor.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.visitor.update_analytics_visitor(request: req)

unless res.analytics_visitor.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::UpdateAnalyticsVisitorRequest](../../models/operations/updateanalyticsvisitorrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::UpdateAnalyticsVisitorResponse)](../../models/operations/updateanalyticsvisitorresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |