# Property
(*property*)

## Overview

### Available Operations

* [create_analytics_property](#create_analytics_property) - Create a property
* [get_analytics_property](#get_analytics_property) - Retrieve a property
* [list_analytics_properties](#list_analytics_properties) - List all properties
* [patch_analytics_property](#patch_analytics_property) - Update a property
* [remove_analytics_property](#remove_analytics_property) - Remove a property
* [update_analytics_property](#update_analytics_property) - Update a property

## create_analytics_property

Create a property

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAnalyticsProperty" method="post" path="/analytics/{connection_id}/property" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.property.create_analytics_property(analytics_property: Models::Shared::AnalyticsProperty.new(), connection_id: '<id>')

unless res.analytics_property.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `analytics_property`                                                                                                                             | [Models::Shared::AnalyticsProperty](../../models/shared/analyticsproperty.md)                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAnalyticsPropertyQueryParamFields](../../models/operations/createanalyticspropertyqueryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAnalyticsPropertyResponse)](../../models/operations/createanalyticspropertyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_analytics_property

Retrieve a property

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAnalyticsProperty" method="get" path="/analytics/{connection_id}/property/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.property.get_analytics_property(connection_id: '<id>', id: '<id>')

unless res.analytics_property.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Property                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAnalyticsPropertyQueryParamFields](../../models/operations/getanalyticspropertyqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAnalyticsPropertyResponse)](../../models/operations/getanalyticspropertyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_analytics_properties

List all properties

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAnalyticsProperties" method="get" path="/analytics/{connection_id}/property" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAnalyticsPropertiesRequest.new(
  connection_id: '<id>',
)

res = s.property.list_analytics_properties(request: req)

unless res.analytics_properties.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::ListAnalyticsPropertiesRequest](../../models/operations/listanalyticspropertiesrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::ListAnalyticsPropertiesResponse)](../../models/operations/listanalyticspropertiesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_analytics_property

Update a property

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAnalyticsProperty" method="patch" path="/analytics/{connection_id}/property/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAnalyticsPropertyRequest.new(
  analytics_property: Models::Shared::AnalyticsProperty.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.property.patch_analytics_property(request: req)

unless res.analytics_property.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::PatchAnalyticsPropertyRequest](../../models/operations/patchanalyticspropertyrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::PatchAnalyticsPropertyResponse)](../../models/operations/patchanalyticspropertyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_analytics_property

Remove a property

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAnalyticsProperty" method="delete" path="/analytics/{connection_id}/property/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.property.remove_analytics_property(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Property   |

### Response

**[T.nilable(Models::Operations::RemoveAnalyticsPropertyResponse)](../../models/operations/removeanalyticspropertyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_analytics_property

Update a property

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAnalyticsProperty" method="put" path="/analytics/{connection_id}/property/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAnalyticsPropertyRequest.new(
  analytics_property: Models::Shared::AnalyticsProperty.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.property.update_analytics_property(request: req)

unless res.analytics_property.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::UpdateAnalyticsPropertyRequest](../../models/operations/updateanalyticspropertyrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::UpdateAnalyticsPropertyResponse)](../../models/operations/updateanalyticspropertyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |