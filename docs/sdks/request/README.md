# Request
(*request*)

## Overview

### Available Operations

* [create_verification_request](#create_verification_request) - Create a request
* [get_verification_request](#get_verification_request) - Retrieve a request
* [list_verification_requests](#list_verification_requests) - List all requests
* [patch_verification_request](#patch_verification_request) - Update a request
* [remove_verification_request](#remove_verification_request) - Remove a request
* [update_verification_request](#update_verification_request) - Update a request

## create_verification_request

Creates a VerificationRequest. Provide the unified VerificationRequest fields in the request body; they are mapped to the provider's API. Returns the created VerificationRequest.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createVerificationRequest" method="post" path="/verification/{connection_id}/request" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.request.create_verification_request(verification_request: Models::Shared::VerificationRequest.new(
  created_at: DateTime.iso8601('2023-11-20T08:17:29.950Z'),
  id: 'e25803a8-41a4-40ea-8209-1178309d1095',
  metadata: [],
  parameters: [],
  profile_addresses: [],
  profile_emails: [],
  profile_telephones: [],
  response_details: [],
  response_download_urls: [],
  response_source: 'Implemented regional protocol',
  response_status: Models::Shared::VerificationRequestResponseStatus::PENDING,
  updated_at: DateTime.iso8601('2023-12-27T14:21:30.924Z'),
), connection_id: '<id>')

unless res.verification_request.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `verification_request`                                                                                                                           | [Models::Shared::VerificationRequest](../../models/shared/verificationrequest.md)                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateVerificationRequestQueryParamFields](../../models/operations/createverificationrequestqueryparamfields.md)>  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateVerificationRequestResponse)](../../models/operations/createverificationrequestresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_verification_request

Retrieves a single VerificationRequest by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getVerificationRequest" method="get" path="/verification/{connection_id}/request/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.request.get_verification_request(connection_id: '<id>', id: '<id>')

unless res.verification_request.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Request                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetVerificationRequestQueryParamFields](../../models/operations/getverificationrequestqueryparamfields.md)>        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetVerificationRequestResponse)](../../models/operations/getverificationrequestresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_verification_requests

Returns a list of VerificationRequests. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listVerificationRequests" method="get" path="/verification/{connection_id}/request" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListVerificationRequestsRequest.new(
  connection_id: '<id>',
)

res = s.request.list_verification_requests(request: req)

unless res.verification_requests.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::ListVerificationRequestsRequest](../../models/operations/listverificationrequestsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::ListVerificationRequestsResponse)](../../models/operations/listverificationrequestsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_verification_request

Updates the VerificationRequest identified by `id`. Provide the unified VerificationRequest fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchVerificationRequest" method="patch" path="/verification/{connection_id}/request/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchVerificationRequestRequest.new(
  verification_request: Models::Shared::VerificationRequest.new(
    created_at: DateTime.iso8601('2023-11-20T08:17:29.950Z'),
    id: '0fb88d58-4408-426b-85e6-534e574611f6',
    metadata: [],
    parameters: [],
    profile_addresses: [],
    profile_emails: [],
    profile_telephones: [],
    response_details: [],
    response_download_urls: [],
    response_source: 'Implemented regional protocol',
    response_status: Models::Shared::VerificationRequestResponseStatus::PENDING,
    updated_at: DateTime.iso8601('2023-12-27T14:21:30.926Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.request.patch_verification_request(request: req)

unless res.verification_request.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::PatchVerificationRequestRequest](../../models/operations/patchverificationrequestrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::PatchVerificationRequestResponse)](../../models/operations/patchverificationrequestresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_verification_request

Deletes the VerificationRequest identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeVerificationRequest" method="delete" path="/verification/{connection_id}/request/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.request.remove_verification_request(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Request    |

### Response

**[T.nilable(Models::Operations::RemoveVerificationRequestResponse)](../../models/operations/removeverificationrequestresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_verification_request

Updates the VerificationRequest identified by `id`. Provide the unified VerificationRequest fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateVerificationRequest" method="put" path="/verification/{connection_id}/request/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateVerificationRequestRequest.new(
  verification_request: Models::Shared::VerificationRequest.new(
    created_at: DateTime.iso8601('2023-11-20T08:17:29.950Z'),
    id: '0fb88d58-4408-426b-85e6-534e574611f6',
    metadata: [],
    parameters: [],
    profile_addresses: [],
    profile_emails: [],
    profile_telephones: [],
    response_details: [],
    response_download_urls: [],
    response_source: 'Implemented regional protocol',
    response_status: Models::Shared::VerificationRequestResponseStatus::PENDING,
    updated_at: DateTime.iso8601('2023-12-27T14:21:30.926Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.request.update_verification_request(request: req)

unless res.verification_request.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::UpdateVerificationRequestRequest](../../models/operations/updateverificationrequestrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::UpdateVerificationRequestResponse)](../../models/operations/updateverificationrequestresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |