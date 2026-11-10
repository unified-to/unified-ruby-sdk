# Fax

## Overview

### Available Operations

* [create_uc_fax](#create_uc_fax) - Create a fax
* [get_uc_fax](#get_uc_fax) - Retrieve a fax
* [list_uc_faxes](#list_uc_faxes) - List all faxes
* [remove_uc_fax](#remove_uc_fax) - Remove a fax

## create_uc_fax

Creates a UcFax. Provide the unified UcFax fields in the request body; they are mapped to the provider's API. Returns the created UcFax.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createUcFax" method="post" path="/uc/{connection_id}/fax" example="uc_fax" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.fax.create_uc_fax(uc_fax: Models::Shared::UcFax.new(
  cost_amount: 1.2207,
  created_at: DateTime.iso8601('2022-10-25T13:37:51.431Z'),
  currency: 'USD',
  from_telephone: '+13605107540',
  id: 'cb1e945c-c8bb-47d1-a0c2-2ad4de4ffa3b',
  media_url: 'https://doting-jump.biz',
  metadata: [],
  pages: 20.0,
  status: Models::Shared::UcFaxStatus::DELIVERED,
  to_telephone: '+19083998866',
  type: Models::Shared::UcFaxType::INBOUND,
  updated_at: DateTime.iso8601('2023-04-16T05:26:34.441Z')
), connection_id: '<id>')

unless res.uc_fax.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `uc_fax`                                                                                                                                         | [Models::Shared::UcFax](../../models/shared/ucfax.md)                                                                                            | :heavy_check_mark:                                                                                                                               | A fax sent or received through a phone number                                                                                                    |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateUcFaxQueryParamFields](../../models/operations/createucfaxqueryparamfields.md)>                              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateUcFaxResponse)](../../models/operations/createucfaxresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_uc_fax

Retrieves a single UcFax by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getUcFax" method="get" path="/uc/{connection_id}/fax/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.fax.get_uc_fax(connection_id: '<id>', id: '<id>')

unless res.uc_fax.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Fax                                                                                                                                    |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetUcFaxQueryParamFields](../../models/operations/getucfaxqueryparamfields.md)>                                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetUcFaxResponse)](../../models/operations/getucfaxresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_uc_faxes

Returns a list of UcFaxes. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUcFaxes" method="get" path="/uc/{connection_id}/fax" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListUcFaxesRequest.new(
  connection_id: '<id>'
)
res = s.fax.list_uc_faxes(request: req)

unless res.uc_faxes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Models::Operations::ListUcFaxesRequest](../../models/operations/listucfaxesrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |

### Response

**[T.nilable(Models::Operations::ListUcFaxesResponse)](../../models/operations/listucfaxesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_uc_fax

Deletes the UcFax identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeUcFax" method="delete" path="/uc/{connection_id}/fax/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.fax.remove_uc_fax(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Fax        |

### Response

**[T.nilable(Models::Operations::RemoveUcFaxResponse)](../../models/operations/removeucfaxresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |