# Signatory
(*signatory*)

## Overview

### Available Operations

* [create_signing_signatory](#create_signing_signatory) - Create a signatory
* [get_signing_signatory](#get_signing_signatory) - Retrieve a signatory
* [list_signing_signatories](#list_signing_signatories) - List all signatories
* [patch_signing_signatory](#patch_signing_signatory) - Update a signatory
* [remove_signing_signatory](#remove_signing_signatory) - Remove a signatory
* [update_signing_signatory](#update_signing_signatory) - Update a signatory

## create_signing_signatory

Creates a SigningSignatory. Provide the unified SigningSignatory fields in the request body; they are mapped to the provider's API. Returns the created SigningSignatory.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createSigningSignatory" method="post" path="/signing/{connection_id}/signatory" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.signatory.create_signing_signatory(signing_signatory: Models::Shared::SigningSignatory.new(
  created_at: DateTime.iso8601('2022-04-16T19:25:01.966Z'),
  email: 'anais.lakin@icloud.com',
  id: 'cf4ea39e-fe8e-459b-a266-c521a915df10',
  metadata: [],
  name: 'Anais Lakin',
  role: Models::Shared::SigningSignatoryRole::SIGNER,
  status: Models::Shared::SigningSignatoryStatus::ERROR,
  updated_at: DateTime.iso8601('2024-05-20T01:28:15.911Z'),
), connection_id: '<id>')

unless res.signing_signatory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `signing_signatory`                                                                                                                              | [Models::Shared::SigningSignatory](../../models/shared/signingsignatory.md)                                                                      | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateSigningSignatoryQueryParamFields](../../models/operations/createsigningsignatoryqueryparamfields.md)>        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateSigningSignatoryResponse)](../../models/operations/createsigningsignatoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_signing_signatory

Retrieves a single SigningSignatory by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getSigningSignatory" method="get" path="/signing/{connection_id}/signatory/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.signatory.get_signing_signatory(connection_id: '<id>', id: '<id>')

unless res.signing_signatory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Signatory                                                                                                                              |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetSigningSignatoryQueryParamFields](../../models/operations/getsigningsignatoryqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetSigningSignatoryResponse)](../../models/operations/getsigningsignatoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_signing_signatories

Returns a list of SigningSignatories. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listSigningSignatories" method="get" path="/signing/{connection_id}/signatory" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListSigningSignatoriesRequest.new(
  connection_id: '<id>',
)

res = s.signatory.list_signing_signatories(request: req)

unless res.signing_signatories.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListSigningSignatoriesRequest](../../models/operations/listsigningsignatoriesrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListSigningSignatoriesResponse)](../../models/operations/listsigningsignatoriesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_signing_signatory

Updates the SigningSignatory identified by `id`. Provide the unified SigningSignatory fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchSigningSignatory" method="patch" path="/signing/{connection_id}/signatory/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchSigningSignatoryRequest.new(
  signing_signatory: Models::Shared::SigningSignatory.new(
    created_at: DateTime.iso8601('2022-04-16T19:25:01.966Z'),
    email: 'anais.lakin@icloud.com',
    id: '6d81b08f-de01-4448-9da3-e22f4cf4ae75',
    metadata: [],
    name: 'Anais Lakin',
    role: Models::Shared::SigningSignatoryRole::SIGNER,
    status: Models::Shared::SigningSignatoryStatus::ERROR,
    updated_at: DateTime.iso8601('2024-05-20T01:28:15.916Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.signatory.patch_signing_signatory(request: req)

unless res.signing_signatory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::PatchSigningSignatoryRequest](../../models/operations/patchsigningsignatoryrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::PatchSigningSignatoryResponse)](../../models/operations/patchsigningsignatoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_signing_signatory

Deletes the SigningSignatory identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeSigningSignatory" method="delete" path="/signing/{connection_id}/signatory/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.signatory.remove_signing_signatory(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Signatory  |

### Response

**[T.nilable(Models::Operations::RemoveSigningSignatoryResponse)](../../models/operations/removesigningsignatoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_signing_signatory

Updates the SigningSignatory identified by `id`. Provide the unified SigningSignatory fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateSigningSignatory" method="put" path="/signing/{connection_id}/signatory/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateSigningSignatoryRequest.new(
  signing_signatory: Models::Shared::SigningSignatory.new(
    created_at: DateTime.iso8601('2022-04-16T19:25:01.966Z'),
    email: 'anais.lakin@icloud.com',
    id: '6d81b08f-de01-4448-9da3-e22f4cf4ae75',
    metadata: [],
    name: 'Anais Lakin',
    role: Models::Shared::SigningSignatoryRole::SIGNER,
    status: Models::Shared::SigningSignatoryStatus::ERROR,
    updated_at: DateTime.iso8601('2024-05-20T01:28:15.916Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.signatory.update_signing_signatory(request: req)

unless res.signing_signatory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::UpdateSigningSignatoryRequest](../../models/operations/updatesigningsignatoryrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::UpdateSigningSignatoryResponse)](../../models/operations/updatesigningsignatoryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |