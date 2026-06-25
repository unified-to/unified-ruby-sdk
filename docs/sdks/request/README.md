# Request
(*request*)

## Overview

### Available Operations

* [create_verification_request2](#create_verification_request2) - Create a request
* [get_verification_request2](#get_verification_request2) - Retrieve a request
* [list_verification_requests2](#list_verification_requests2) - List all requests
* [patch_verification_request2](#patch_verification_request2) - Update a request
* [remove_verification_request2](#remove_verification_request2) - Remove a request
* [update_verification_request2](#update_verification_request2) - Update a request

## create_verification_request2

Create a request

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createVerificationRequest2" method="post" path="/verification/{connection_id}/request" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.request.create_verification_request2(verification_request: Models::Shared::VerificationRequest.new(), connection_id: '<id>')

unless res.verification_request.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                         | Type                                                                                                                                              | Required                                                                                                                                          | Description                                                                                                                                       |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| `verification_request`                                                                                                                            | [Models::Shared::VerificationRequest](../../models/shared/verificationrequest.md)                                                                 | :heavy_check_mark:                                                                                                                                | N/A                                                                                                                                               |
| `connection_id`                                                                                                                                   | *::String*                                                                                                                                        | :heavy_check_mark:                                                                                                                                | ID of the connection                                                                                                                              |
| `fields_`                                                                                                                                         | T::Array<[Models::Operations::CreateVerificationRequest2QueryParamFields](../../models/operations/createverificationrequest2queryparamfields.md)> | :heavy_minus_sign:                                                                                                                                | Fields to return                                                                                                                                  |
| `raw`                                                                                                                                             | *T.nilable(::String)*                                                                                                                             | :heavy_minus_sign:                                                                                                                                | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar  |

### Response

**[T.nilable(Models::Operations::CreateVerificationRequest2Response)](../../models/operations/createverificationrequest2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_verification_request2

Retrieve a request

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getVerificationRequest2" method="get" path="/verification/{connection_id}/request/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.request.get_verification_request2(connection_id: '<id>', id: '<id>')

unless res.verification_request.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Request                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetVerificationRequest2QueryParamFields](../../models/operations/getverificationrequest2queryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetVerificationRequest2Response)](../../models/operations/getverificationrequest2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_verification_requests2

List all requests

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listVerificationRequests2" method="get" path="/verification/{connection_id}/request" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListVerificationRequests2Request.new(
  connection_id: '<id>',
)

res = s.request.list_verification_requests2(request: req)

unless res.verification_requests.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::ListVerificationRequests2Request](../../models/operations/listverificationrequests2request.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::ListVerificationRequests2Response)](../../models/operations/listverificationrequests2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_verification_request2

Update a request

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchVerificationRequest2" method="patch" path="/verification/{connection_id}/request/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchVerificationRequest2Request.new(
  verification_request: Models::Shared::VerificationRequest.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.request.patch_verification_request2(request: req)

unless res.verification_request.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::PatchVerificationRequest2Request](../../models/operations/patchverificationrequest2request.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::PatchVerificationRequest2Response)](../../models/operations/patchverificationrequest2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_verification_request2

Remove a request

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeVerificationRequest2" method="delete" path="/verification/{connection_id}/request/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.request.remove_verification_request2(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveVerificationRequest2Response)](../../models/operations/removeverificationrequest2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_verification_request2

Update a request

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateVerificationRequest2" method="put" path="/verification/{connection_id}/request/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateVerificationRequest2Request.new(
  verification_request: Models::Shared::VerificationRequest.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.request.update_verification_request2(request: req)

unless res.verification_request.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::UpdateVerificationRequest2Request](../../models/operations/updateverificationrequest2request.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::UpdateVerificationRequest2Response)](../../models/operations/updateverificationrequest2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |