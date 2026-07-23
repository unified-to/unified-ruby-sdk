# Destination
(*destination*)

## Overview

### Available Operations

* [create_cdp_destination](#create_cdp_destination) - Create a destination
* [get_cdp_destination](#get_cdp_destination) - Retrieve a destination
* [list_cdp_destinations](#list_cdp_destinations) - List all destinations
* [patch_cdp_destination](#patch_cdp_destination) - Update a destination
* [remove_cdp_destination](#remove_cdp_destination) - Remove a destination
* [update_cdp_destination](#update_cdp_destination) - Update a destination

## create_cdp_destination

Create a destination

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCdpDestination" method="post" path="/cdp/{connection_id}/destination" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.destination.create_cdp_destination(cdp_destination: Models::Shared::CdpDestination.new(), connection_id: '<id>')

unless res.cdp_destination.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `cdp_destination`                                                                                                                                | [Models::Shared::CdpDestination](../../models/shared/cdpdestination.md)                                                                          | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCdpDestinationQueryParamFields](../../models/operations/createcdpdestinationqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCdpDestinationResponse)](../../models/operations/createcdpdestinationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_cdp_destination

Retrieve a destination

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCdpDestination" method="get" path="/cdp/{connection_id}/destination/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.destination.get_cdp_destination(connection_id: '<id>', id: '<id>')

unless res.cdp_destination.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Destination                                                                                                                            |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCdpDestinationQueryParamFields](../../models/operations/getcdpdestinationqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCdpDestinationResponse)](../../models/operations/getcdpdestinationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_cdp_destinations

List all destinations

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCdpDestinations" method="get" path="/cdp/{connection_id}/destination" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCdpDestinationsRequest.new(
  connection_id: '<id>',
)

res = s.destination.list_cdp_destinations(request: req)

unless res.cdp_destinations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListCdpDestinationsRequest](../../models/operations/listcdpdestinationsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListCdpDestinationsResponse)](../../models/operations/listcdpdestinationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_cdp_destination

Update a destination

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCdpDestination" method="patch" path="/cdp/{connection_id}/destination/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCdpDestinationRequest.new(
  cdp_destination: Models::Shared::CdpDestination.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.destination.patch_cdp_destination(request: req)

unless res.cdp_destination.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::PatchCdpDestinationRequest](../../models/operations/patchcdpdestinationrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::PatchCdpDestinationResponse)](../../models/operations/patchcdpdestinationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_cdp_destination

Remove a destination

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCdpDestination" method="delete" path="/cdp/{connection_id}/destination/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.destination.remove_cdp_destination(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter             | Type                  | Required              | Description           |
| --------------------- | --------------------- | --------------------- | --------------------- |
| `connection_id`       | *::String*            | :heavy_check_mark:    | ID of the connection  |
| `id`                  | *::String*            | :heavy_check_mark:    | ID of the Destination |

### Response

**[T.nilable(Models::Operations::RemoveCdpDestinationResponse)](../../models/operations/removecdpdestinationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_cdp_destination

Update a destination

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCdpDestination" method="put" path="/cdp/{connection_id}/destination/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCdpDestinationRequest.new(
  cdp_destination: Models::Shared::CdpDestination.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.destination.update_cdp_destination(request: req)

unless res.cdp_destination.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::UpdateCdpDestinationRequest](../../models/operations/updatecdpdestinationrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::UpdateCdpDestinationResponse)](../../models/operations/updatecdpdestinationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |