# Pullrequest
(*pullrequest*)

## Overview

### Available Operations

* [create_repo_pullrequest](#create_repo_pullrequest) - Create a pullrequest
* [get_repo_pullrequest](#get_repo_pullrequest) - Retrieve a pullrequest
* [list_repo_pullrequests](#list_repo_pullrequests) - List all pullrequests
* [patch_repo_pullrequest](#patch_repo_pullrequest) - Update a pullrequest
* [remove_repo_pullrequest](#remove_repo_pullrequest) - Remove a pullrequest
* [update_repo_pullrequest](#update_repo_pullrequest) - Update a pullrequest

## create_repo_pullrequest

Creates a RepoPullrequest. Provide the unified RepoPullrequest fields in the request body; they are mapped to the provider's API. Returns the created RepoPullrequest.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createRepoPullrequest" method="post" path="/repo/{connection_id}/pullrequest" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.pullrequest.create_repo_pullrequest(repo_pullrequest: Models::Shared::RepoPullrequest.new(
  closed_at: DateTime.iso8601('2025-05-05T02:38:02.803Z'),
  created_at: DateTime.iso8601('2023-02-27T09:37:13.663Z'),
  id: '1e590e03-8197-464e-b4c9-de17c55f6743',
  labels: [
    'creptio',
    'tutamen',
  ],
  metadata: [],
  notes: 'Texo advoco bibo amet. Defero coadunatio turbo curtus. Consuasor aggero veritatis suggero adeo.',
  status: Models::Shared::RepoPullrequestStatus::APPROVED,
  title: 'reboot mobile application',
  updated_at: DateTime.iso8601('2026-01-21T23:40:32.660Z'),
), connection_id: '<id>')

unless res.repo_pullrequest.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `repo_pullrequest`                                                                                                                               | [Models::Shared::RepoPullrequest](../../models/shared/repopullrequest.md)                                                                        | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateRepoPullrequestQueryParamFields](../../models/operations/createrepopullrequestqueryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateRepoPullrequestResponse)](../../models/operations/createrepopullrequestresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_repo_pullrequest

Retrieves a single RepoPullrequest by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getRepoPullrequest" method="get" path="/repo/{connection_id}/pullrequest/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.pullrequest.get_repo_pullrequest(connection_id: '<id>', id: '<id>')

unless res.repo_pullrequest.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Pullrequest                                                                                                                            |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetRepoPullrequestQueryParamFields](../../models/operations/getrepopullrequestqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetRepoPullrequestResponse)](../../models/operations/getrepopullrequestresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_repo_pullrequests

Returns a list of RepoPullrequests. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listRepoPullrequests" method="get" path="/repo/{connection_id}/pullrequest" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListRepoPullrequestsRequest.new(
  connection_id: '<id>',
)

res = s.pullrequest.list_repo_pullrequests(request: req)

unless res.repo_pullrequests.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListRepoPullrequestsRequest](../../models/operations/listrepopullrequestsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListRepoPullrequestsResponse)](../../models/operations/listrepopullrequestsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_repo_pullrequest

Updates the RepoPullrequest identified by `id`. Provide the unified RepoPullrequest fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchRepoPullrequest" method="patch" path="/repo/{connection_id}/pullrequest/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchRepoPullrequestRequest.new(
  repo_pullrequest: Models::Shared::RepoPullrequest.new(
    closed_at: DateTime.iso8601('2025-05-05T02:38:02.814Z'),
    created_at: DateTime.iso8601('2023-02-27T09:37:13.663Z'),
    id: 'bb271b4f-1dba-4a8b-a7e7-6390f13867f7',
    labels: [
      'creptio',
      'tutamen',
    ],
    metadata: [],
    notes: 'Texo advoco bibo amet. Defero coadunatio turbo curtus. Consuasor aggero veritatis suggero adeo.',
    status: Models::Shared::RepoPullrequestStatus::APPROVED,
    title: 'reboot mobile application',
    updated_at: DateTime.iso8601('2026-01-21T23:40:32.673Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.pullrequest.patch_repo_pullrequest(request: req)

unless res.repo_pullrequest.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::PatchRepoPullrequestRequest](../../models/operations/patchrepopullrequestrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::PatchRepoPullrequestResponse)](../../models/operations/patchrepopullrequestresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_repo_pullrequest

Deletes the RepoPullrequest identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeRepoPullrequest" method="delete" path="/repo/{connection_id}/pullrequest/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.pullrequest.remove_repo_pullrequest(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter             | Type                  | Required              | Description           |
| --------------------- | --------------------- | --------------------- | --------------------- |
| `connection_id`       | *::String*            | :heavy_check_mark:    | ID of the connection  |
| `id`                  | *::String*            | :heavy_check_mark:    | ID of the Pullrequest |

### Response

**[T.nilable(Models::Operations::RemoveRepoPullrequestResponse)](../../models/operations/removerepopullrequestresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_repo_pullrequest

Updates the RepoPullrequest identified by `id`. Provide the unified RepoPullrequest fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateRepoPullrequest" method="put" path="/repo/{connection_id}/pullrequest/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateRepoPullrequestRequest.new(
  repo_pullrequest: Models::Shared::RepoPullrequest.new(
    closed_at: DateTime.iso8601('2025-05-05T02:38:02.814Z'),
    created_at: DateTime.iso8601('2023-02-27T09:37:13.663Z'),
    id: 'bb271b4f-1dba-4a8b-a7e7-6390f13867f7',
    labels: [
      'creptio',
      'tutamen',
    ],
    metadata: [],
    notes: 'Texo advoco bibo amet. Defero coadunatio turbo curtus. Consuasor aggero veritatis suggero adeo.',
    status: Models::Shared::RepoPullrequestStatus::APPROVED,
    title: 'reboot mobile application',
    updated_at: DateTime.iso8601('2026-01-21T23:40:32.673Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.pullrequest.update_repo_pullrequest(request: req)

unless res.repo_pullrequest.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::UpdateRepoPullrequestRequest](../../models/operations/updaterepopullrequestrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::UpdateRepoPullrequestResponse)](../../models/operations/updaterepopullrequestresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |