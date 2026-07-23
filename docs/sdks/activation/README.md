# Activation
(*activation*)

## Overview

### Available Operations

* [create_cdp_activation](#create_cdp_activation) - Create an activation
* [get_cdp_activation](#get_cdp_activation) - Retrieve an activation
* [list_cdp_activations](#list_cdp_activations) - List all activations
* [patch_cdp_activation](#patch_cdp_activation) - Update an activation
* [remove_cdp_activation](#remove_cdp_activation) - Remove an activation
* [update_cdp_activation](#update_cdp_activation) - Update an activation

## create_cdp_activation

Create an activation

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCdpActivation" method="post" path="/cdp/{connection_id}/activation" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.activation.create_cdp_activation(cdp_activation: Models::Shared::CdpActivation.new(), connection_id: '<id>')

unless res.cdp_activation.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `cdp_activation`                                                                                                                                 | [Models::Shared::CdpActivation](../../models/shared/cdpactivation.md)                                                                            | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCdpActivationQueryParamFields](../../models/operations/createcdpactivationqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCdpActivationResponse)](../../models/operations/createcdpactivationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_cdp_activation

Retrieve an activation

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCdpActivation" method="get" path="/cdp/{connection_id}/activation/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.activation.get_cdp_activation(connection_id: '<id>', id: '<id>')

unless res.cdp_activation.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Activation                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCdpActivationQueryParamFields](../../models/operations/getcdpactivationqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCdpActivationResponse)](../../models/operations/getcdpactivationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_cdp_activations

List all activations

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCdpActivations" method="get" path="/cdp/{connection_id}/activation" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCdpActivationsRequest.new(
  connection_id: '<id>',
)

res = s.activation.list_cdp_activations(request: req)

unless res.cdp_activations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListCdpActivationsRequest](../../models/operations/listcdpactivationsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListCdpActivationsResponse)](../../models/operations/listcdpactivationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_cdp_activation

Update an activation

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCdpActivation" method="patch" path="/cdp/{connection_id}/activation/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCdpActivationRequest.new(
  cdp_activation: Models::Shared::CdpActivation.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.activation.patch_cdp_activation(request: req)

unless res.cdp_activation.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::PatchCdpActivationRequest](../../models/operations/patchcdpactivationrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::PatchCdpActivationResponse)](../../models/operations/patchcdpactivationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_cdp_activation

Remove an activation

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCdpActivation" method="delete" path="/cdp/{connection_id}/activation/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.activation.remove_cdp_activation(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Activation |

### Response

**[T.nilable(Models::Operations::RemoveCdpActivationResponse)](../../models/operations/removecdpactivationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_cdp_activation

Update an activation

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCdpActivation" method="put" path="/cdp/{connection_id}/activation/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCdpActivationRequest.new(
  cdp_activation: Models::Shared::CdpActivation.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.activation.update_cdp_activation(request: req)

unless res.cdp_activation.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::UpdateCdpActivationRequest](../../models/operations/updatecdpactivationrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::UpdateCdpActivationResponse)](../../models/operations/updatecdpactivationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |