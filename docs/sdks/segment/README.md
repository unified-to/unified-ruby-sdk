# Segment
(*segment*)

## Overview

### Available Operations

* [create_cdp_segment](#create_cdp_segment) - Create a segment
* [get_cdp_segment](#get_cdp_segment) - Retrieve a segment
* [list_cdp_segments](#list_cdp_segments) - List all segments
* [patch_cdp_segment](#patch_cdp_segment) - Update a segment
* [remove_cdp_segment](#remove_cdp_segment) - Remove a segment
* [update_cdp_segment](#update_cdp_segment) - Update a segment

## create_cdp_segment

Create a segment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCdpSegment" method="post" path="/cdp/{connection_id}/segment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.segment.create_cdp_segment(cdp_segment: Models::Shared::CdpSegment.new(), connection_id: '<id>')

unless res.cdp_segment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `cdp_segment`                                                                                                                                    | [Models::Shared::CdpSegment](../../models/shared/cdpsegment.md)                                                                                  | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCdpSegmentQueryParamFields](../../models/operations/createcdpsegmentqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCdpSegmentResponse)](../../models/operations/createcdpsegmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_cdp_segment

Retrieve a segment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCdpSegment" method="get" path="/cdp/{connection_id}/segment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.segment.get_cdp_segment(connection_id: '<id>', id: '<id>')

unless res.cdp_segment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Segment                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCdpSegmentQueryParamFields](../../models/operations/getcdpsegmentqueryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCdpSegmentResponse)](../../models/operations/getcdpsegmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_cdp_segments

List all segments

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCdpSegments" method="get" path="/cdp/{connection_id}/segment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCdpSegmentsRequest.new(
  connection_id: '<id>',
)

res = s.segment.list_cdp_segments(request: req)

unless res.cdp_segments.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::ListCdpSegmentsRequest](../../models/operations/listcdpsegmentsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::ListCdpSegmentsResponse)](../../models/operations/listcdpsegmentsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_cdp_segment

Update a segment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCdpSegment" method="patch" path="/cdp/{connection_id}/segment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCdpSegmentRequest.new(
  cdp_segment: Models::Shared::CdpSegment.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.segment.patch_cdp_segment(request: req)

unless res.cdp_segment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::PatchCdpSegmentRequest](../../models/operations/patchcdpsegmentrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::PatchCdpSegmentResponse)](../../models/operations/patchcdpsegmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_cdp_segment

Remove a segment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCdpSegment" method="delete" path="/cdp/{connection_id}/segment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.segment.remove_cdp_segment(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Segment    |

### Response

**[T.nilable(Models::Operations::RemoveCdpSegmentResponse)](../../models/operations/removecdpsegmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_cdp_segment

Update a segment

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCdpSegment" method="put" path="/cdp/{connection_id}/segment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCdpSegmentRequest.new(
  cdp_segment: Models::Shared::CdpSegment.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.segment.update_cdp_segment(request: req)

unless res.cdp_segment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::UpdateCdpSegmentRequest](../../models/operations/updatecdpsegmentrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::UpdateCdpSegmentResponse)](../../models/operations/updatecdpsegmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |