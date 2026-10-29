# List
(*list*)

## Overview

### Available Operations

* [create_martech_list](#create_martech_list) - Create a list
* [get_martech_list](#get_martech_list) - Retrieve a list
* [list_martech_lists](#list_martech_lists) - List all lists
* [patch_martech_list](#patch_martech_list) - Update a list
* [remove_martech_list](#remove_martech_list) - Remove a list
* [update_martech_list](#update_martech_list) - Update a list

## create_martech_list

Creates a MarketingList. Provide the unified MarketingList fields in the request body; they are mapped to the provider's API. Returns the created MarketingList.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createMartechList" method="post" path="/martech/{connection_id}/list" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.list.create_martech_list(marketing_list: Models::Shared::MarketingList.new(
  address: Models::Shared::PropertyMarketingListAddress.new(
    address1: '76564 Coronation Road',
    address2: 'Suite 922',
    city: 'West Jordon',
    country: 'Mexico',
    postal_code: '04183',
    region: 'NC',
  ),
  created_at: DateTime.iso8601('2019-09-18T02:01:36.950Z'),
  description: 'Vilis.',
  id: 'a4b65528-120c-45cb-879a-9203d2040e2d',
  is_active: true,
  language: 'ru',
  metadata: [],
  name: 'Electronics Newsletter',
  sender_company: 'Koepp and Sons',
  sender_email: 'blake.kuhn@hotmail.com',
  sender_name: 'Blake Kuhn',
  sender_phone: '359.305.7962 x28115',
  subject: 'Theca caecus copia crebro valeo ulciscor.',
  updated_at: DateTime.iso8601('2022-09-16T19:23:05.046Z'),
), connection_id: '<id>')

unless res.marketing_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `marketing_list`                                                                                                                                 | [Models::Shared::MarketingList](../../models/shared/marketinglist.md)                                                                            | :heavy_check_mark:                                                                                                                               | Mailing List                                                                                                                                     |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateMartechListQueryParamFields](../../models/operations/createmartechlistqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateMartechListResponse)](../../models/operations/createmartechlistresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_martech_list

Retrieves a single MarketingList by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getMartechList" method="get" path="/martech/{connection_id}/list/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.list.get_martech_list(connection_id: '<id>', id: '<id>')

unless res.marketing_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the List                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetMartechListQueryParamFields](../../models/operations/getmartechlistqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetMartechListResponse)](../../models/operations/getmartechlistresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_martech_lists

Returns a list of MarketingLists. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listMartechLists" method="get" path="/martech/{connection_id}/list" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListMartechListsRequest.new(
  connection_id: '<id>',
)

res = s.list.list_martech_lists(request: req)

unless res.marketing_lists.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListMartechListsRequest](../../models/operations/listmartechlistsrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListMartechListsResponse)](../../models/operations/listmartechlistsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_martech_list

Updates the MarketingList identified by `id`. Provide the unified MarketingList fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchMartechList" method="patch" path="/martech/{connection_id}/list/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchMartechListRequest.new(
  marketing_list: Models::Shared::MarketingList.new(
    address: Models::Shared::PropertyMarketingListAddress.new(
      address1: '76564 Coronation Road',
      address2: 'Suite 922',
      city: 'West Jordon',
      country: 'Mexico',
      postal_code: '04183',
      region: 'NC',
    ),
    created_at: DateTime.iso8601('2019-09-18T02:01:36.950Z'),
    description: 'Vilis.',
    id: '8339bb75-3a10-41c7-8ef4-8b8ab5249297',
    is_active: true,
    language: 'ru',
    metadata: [],
    name: 'Electronics Newsletter',
    sender_company: 'Koepp and Sons',
    sender_email: 'blake.kuhn@hotmail.com',
    sender_name: 'Blake Kuhn',
    sender_phone: '359.305.7962 x28115',
    subject: 'Theca caecus copia crebro valeo ulciscor.',
    updated_at: DateTime.iso8601('2022-09-16T19:23:05.052Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.list.patch_martech_list(request: req)

unless res.marketing_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::PatchMartechListRequest](../../models/operations/patchmartechlistrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::PatchMartechListResponse)](../../models/operations/patchmartechlistresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_martech_list

Deletes the MarketingList identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeMartechList" method="delete" path="/martech/{connection_id}/list/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.list.remove_martech_list(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the List       |

### Response

**[T.nilable(Models::Operations::RemoveMartechListResponse)](../../models/operations/removemartechlistresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_martech_list

Updates the MarketingList identified by `id`. Provide the unified MarketingList fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateMartechList" method="put" path="/martech/{connection_id}/list/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateMartechListRequest.new(
  marketing_list: Models::Shared::MarketingList.new(
    address: Models::Shared::PropertyMarketingListAddress.new(
      address1: '76564 Coronation Road',
      address2: 'Suite 922',
      city: 'West Jordon',
      country: 'Mexico',
      postal_code: '04183',
      region: 'NC',
    ),
    created_at: DateTime.iso8601('2019-09-18T02:01:36.950Z'),
    description: 'Vilis.',
    id: '8339bb75-3a10-41c7-8ef4-8b8ab5249297',
    is_active: true,
    language: 'ru',
    metadata: [],
    name: 'Electronics Newsletter',
    sender_company: 'Koepp and Sons',
    sender_email: 'blake.kuhn@hotmail.com',
    sender_name: 'Blake Kuhn',
    sender_phone: '359.305.7962 x28115',
    subject: 'Theca caecus copia crebro valeo ulciscor.',
    updated_at: DateTime.iso8601('2022-09-16T19:23:05.052Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.list.update_martech_list(request: req)

unless res.marketing_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::UpdateMartechListRequest](../../models/operations/updatemartechlistrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::UpdateMartechListResponse)](../../models/operations/updatemartechlistresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |