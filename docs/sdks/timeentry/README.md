# Timeentry
(*timeentry*)

## Overview

### Available Operations

* [create_legal_timeentry](#create_legal_timeentry) - Create a timeentry
* [get_legal_timeentry](#get_legal_timeentry) - Retrieve a timeentry
* [list_legal_timeentries](#list_legal_timeentries) - List all timeentries
* [patch_legal_timeentry](#patch_legal_timeentry) - Update a timeentry
* [remove_legal_timeentry](#remove_legal_timeentry) - Remove a timeentry
* [update_legal_timeentry](#update_legal_timeentry) - Update a timeentry

## create_legal_timeentry

Creates a LegalTimeentry. Provide the unified LegalTimeentry fields in the request body; they are mapped to the provider's API. Returns the created LegalTimeentry.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createLegalTimeentry" method="post" path="/legal/{connection_id}/timeentry" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.timeentry.create_legal_timeentry(legal_timeentry: Models::Shared::LegalTimeentry.new(
  billable_minutes: 390.0,
  created_at: DateTime.iso8601('2022-05-06T03:26:03.756Z'),
  currency: 'ZAR',
  description: 'Ea derideo adulatio torrens.',
  id: '5a178f7e-c7c6-4dba-b30a-74cccfa791a9',
  is_billable: true,
  metadata: [],
  minutes: 390.0,
  rate_amount: 637.0,
  total_amount: 4_140.5,
  updated_at: DateTime.iso8601('2022-06-30T05:43:37.530Z'),
  worked_at: DateTime.iso8601('2022-05-06T03:26:03.756Z'),
), connection_id: '<id>')

unless res.legal_timeentry.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `legal_timeentry`                                                                                                                                | [Models::Shared::LegalTimeentry](../../models/shared/legaltimeentry.md)                                                                          | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateLegalTimeentryQueryParamFields](../../models/operations/createlegaltimeentryqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateLegalTimeentryResponse)](../../models/operations/createlegaltimeentryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_legal_timeentry

Retrieves a single LegalTimeentry by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getLegalTimeentry" method="get" path="/legal/{connection_id}/timeentry/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.timeentry.get_legal_timeentry(connection_id: '<id>', id: '<id>')

unless res.legal_timeentry.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Timeentry                                                                                                                              |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetLegalTimeentryQueryParamFields](../../models/operations/getlegaltimeentryqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetLegalTimeentryResponse)](../../models/operations/getlegaltimeentryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_legal_timeentries

Returns a list of LegalTimeentries. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listLegalTimeentries" method="get" path="/legal/{connection_id}/timeentry" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListLegalTimeentriesRequest.new(
  connection_id: '<id>',
)

res = s.timeentry.list_legal_timeentries(request: req)

unless res.legal_timeentries.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListLegalTimeentriesRequest](../../models/operations/listlegaltimeentriesrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListLegalTimeentriesResponse)](../../models/operations/listlegaltimeentriesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_legal_timeentry

Updates the LegalTimeentry identified by `id`. Provide the unified LegalTimeentry fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchLegalTimeentry" method="patch" path="/legal/{connection_id}/timeentry/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchLegalTimeentryRequest.new(
  legal_timeentry: Models::Shared::LegalTimeentry.new(
    billable_minutes: 390.0,
    created_at: DateTime.iso8601('2022-05-06T03:26:03.756Z'),
    currency: 'ZAR',
    description: 'Ea derideo adulatio torrens.',
    id: 'f638c168-c6fa-4e09-afbb-1077a7d6d616',
    is_billable: true,
    metadata: [],
    minutes: 390.0,
    rate_amount: 637.0,
    total_amount: 4_140.5,
    updated_at: DateTime.iso8601('2022-06-30T05:43:37.531Z'),
    worked_at: DateTime.iso8601('2022-05-06T03:26:03.756Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.timeentry.patch_legal_timeentry(request: req)

unless res.legal_timeentry.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::PatchLegalTimeentryRequest](../../models/operations/patchlegaltimeentryrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::PatchLegalTimeentryResponse)](../../models/operations/patchlegaltimeentryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_legal_timeentry

Deletes the LegalTimeentry identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeLegalTimeentry" method="delete" path="/legal/{connection_id}/timeentry/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.timeentry.remove_legal_timeentry(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Timeentry  |

### Response

**[T.nilable(Models::Operations::RemoveLegalTimeentryResponse)](../../models/operations/removelegaltimeentryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_legal_timeentry

Updates the LegalTimeentry identified by `id`. Provide the unified LegalTimeentry fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateLegalTimeentry" method="put" path="/legal/{connection_id}/timeentry/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateLegalTimeentryRequest.new(
  legal_timeentry: Models::Shared::LegalTimeentry.new(
    billable_minutes: 390.0,
    created_at: DateTime.iso8601('2022-05-06T03:26:03.756Z'),
    currency: 'ZAR',
    description: 'Ea derideo adulatio torrens.',
    id: 'f638c168-c6fa-4e09-afbb-1077a7d6d616',
    is_billable: true,
    metadata: [],
    minutes: 390.0,
    rate_amount: 637.0,
    total_amount: 4_140.5,
    updated_at: DateTime.iso8601('2022-06-30T05:43:37.531Z'),
    worked_at: DateTime.iso8601('2022-05-06T03:26:03.756Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.timeentry.update_legal_timeentry(request: req)

unless res.legal_timeentry.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::UpdateLegalTimeentryRequest](../../models/operations/updatelegaltimeentryrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::UpdateLegalTimeentryResponse)](../../models/operations/updatelegaltimeentryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |