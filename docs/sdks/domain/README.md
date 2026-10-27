# Domain
(*domain*)

## Overview

### Available Operations

* [create_compute_domain](#create_compute_domain) - Create a domain
* [get_compute_domain](#get_compute_domain) - Retrieve a domain
* [list_compute_domains](#list_compute_domains) - List all domains
* [patch_compute_domain](#patch_compute_domain) - Update a domain
* [remove_compute_domain](#remove_compute_domain) - Remove a domain
* [update_compute_domain](#update_compute_domain) - Update a domain

## create_compute_domain

Creates a ComputeDomain. Provide the unified ComputeDomain fields in the request body; they are mapped to the provider's API. Returns the created ComputeDomain.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createComputeDomain" method="post" path="/compute/{connection_id}/domain" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.domain.create_compute_domain(compute_domain: Models::Shared::ComputeDomain.new(
  created_at: DateTime.iso8601('2019-11-22T16:38:26.009Z'),
  id: '74679ac9-5001-4c9f-b24f-cd830a466e8c',
  is_primary: false,
  metadata: [],
  name: 'mysterious-republican.usable-section.info',
  status: Models::Shared::ComputeDomainStatus::PENDING,
  updated_at: DateTime.iso8601('2023-11-07T00:22:10.263Z'),
), connection_id: '<id>')

unless res.compute_domain.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `compute_domain`                                                                                                                                 | [Models::Shared::ComputeDomain](../../models/shared/computedomain.md)                                                                            | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateComputeDomainQueryParamFields](../../models/operations/createcomputedomainqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateComputeDomainResponse)](../../models/operations/createcomputedomainresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_compute_domain

Retrieves a single ComputeDomain by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getComputeDomain" method="get" path="/compute/{connection_id}/domain/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.domain.get_compute_domain(connection_id: '<id>', id: '<id>')

unless res.compute_domain.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Domain                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetComputeDomainQueryParamFields](../../models/operations/getcomputedomainqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetComputeDomainResponse)](../../models/operations/getcomputedomainresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_compute_domains

Returns a list of ComputeDomains. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listComputeDomains" method="get" path="/compute/{connection_id}/domain" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListComputeDomainsRequest.new(
  connection_id: '<id>',
)

res = s.domain.list_compute_domains(request: req)

unless res.compute_domains.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListComputeDomainsRequest](../../models/operations/listcomputedomainsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListComputeDomainsResponse)](../../models/operations/listcomputedomainsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_compute_domain

Updates the ComputeDomain identified by `id`. Provide the unified ComputeDomain fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchComputeDomain" method="patch" path="/compute/{connection_id}/domain/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchComputeDomainRequest.new(
  compute_domain: Models::Shared::ComputeDomain.new(
    created_at: DateTime.iso8601('2019-11-22T16:38:26.009Z'),
    id: '9cbee1c1-f343-4e1a-9877-26b4aec55f2c',
    is_primary: false,
    metadata: [],
    name: 'mysterious-republican.usable-section.info',
    status: Models::Shared::ComputeDomainStatus::PENDING,
    updated_at: DateTime.iso8601('2023-11-07T00:22:10.269Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.domain.patch_compute_domain(request: req)

unless res.compute_domain.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::PatchComputeDomainRequest](../../models/operations/patchcomputedomainrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::PatchComputeDomainResponse)](../../models/operations/patchcomputedomainresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_compute_domain

Deletes the ComputeDomain identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeComputeDomain" method="delete" path="/compute/{connection_id}/domain/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.domain.remove_compute_domain(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Domain     |

### Response

**[T.nilable(Models::Operations::RemoveComputeDomainResponse)](../../models/operations/removecomputedomainresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_compute_domain

Updates the ComputeDomain identified by `id`. Provide the unified ComputeDomain fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateComputeDomain" method="put" path="/compute/{connection_id}/domain/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateComputeDomainRequest.new(
  compute_domain: Models::Shared::ComputeDomain.new(
    created_at: DateTime.iso8601('2019-11-22T16:38:26.009Z'),
    id: '9cbee1c1-f343-4e1a-9877-26b4aec55f2c',
    is_primary: false,
    metadata: [],
    name: 'mysterious-republican.usable-section.info',
    status: Models::Shared::ComputeDomainStatus::PENDING,
    updated_at: DateTime.iso8601('2023-11-07T00:22:10.269Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.domain.update_compute_domain(request: req)

unless res.compute_domain.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::UpdateComputeDomainRequest](../../models/operations/updatecomputedomainrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::UpdateComputeDomainResponse)](../../models/operations/updatecomputedomainresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |