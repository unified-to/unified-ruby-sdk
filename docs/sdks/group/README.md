# Group
(*group*)

## Overview

### Available Operations

* [create_ads_group](#create_ads_group) - Create a group
* [create_hris_group](#create_hris_group) - Create a group
* [create_scim_groups](#create_scim_groups) - Create group
* [get_ads_group](#get_ads_group) - Retrieve a group
* [get_clubs_group](#get_clubs_group) - Retrieve a group
* [get_hris_group](#get_hris_group) - Retrieve a group
* [get_scim_groups](#get_scim_groups) - Get group
* [list_ads_groups](#list_ads_groups) - List all groups
* [list_clubs_groups](#list_clubs_groups) - List all groups
* [list_hris_groups](#list_hris_groups) - List all groups
* [list_scim_groups](#list_scim_groups) - List groups
* [patch_ads_group](#patch_ads_group) - Update a group
* [patch_hris_group](#patch_hris_group) - Update a group
* [patch_scim_groups](#patch_scim_groups) - Update group
* [remove_ads_group](#remove_ads_group) - Remove a group
* [remove_hris_group](#remove_hris_group) - Remove a group
* [remove_scim_groups](#remove_scim_groups) - Delete group
* [update_ads_group](#update_ads_group) - Update a group
* [update_hris_group](#update_hris_group) - Update a group
* [update_scim_groups](#update_scim_groups) - Update group

## create_ads_group

Create a group

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAdsGroup" method="post" path="/ads/{connection_id}/group" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.group.create_ads_group(ads_group: Models::Shared::AdsGroup.new(
  bid_amount: 26.16_030_164_062_977,
  budget_amount: 5_099.175_239_447_504,
  budget_period: Models::Shared::AdsGroupBudgetPeriod::MONTHLY,
  created_at: DateTime.iso8601('2019-08-29T17:59:41.045Z'),
  currency: 'USD',
  effective_status: Models::Shared::AdsGroupEffectiveStatus::PAUSED,
  end_at: DateTime.iso8601('2026-05-27T10:47:54.397Z'),
  id: 'a78580ac-5f27-4480-8b54-5f6b61a3d2db',
  language_locale: 'fr-FR',
  name: 'Stark - Baumbach',
  start_at: DateTime.iso8601('2025-12-13T14:00:50.313Z'),
  status: Models::Shared::AdsGroupStatus::PROCESSING,
  targeting: Models::Shared::PropertyAdsGroupTargeting.new(),
  updated_at: DateTime.iso8601('2022-01-03T16:58:18.363Z'),
), connection_id: '<id>')

unless res.ads_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `ads_group`                                                                                                                                      | [Models::Shared::AdsGroup](../../models/shared/adsgroup.md)                                                                                      | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAdsGroupQueryParamFields](../../models/operations/createadsgroupqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAdsGroupResponse)](../../models/operations/createadsgroupresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_hris_group

Create a group

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisGroup" method="post" path="/hris/{connection_id}/group" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.group.create_hris_group(hris_group: Models::Shared::HrisGroup.new(
  created_at: DateTime.iso8601('2023-11-01T13:13:40.714Z'),
  description: 'Absorbeo casso.',
  id: '5c8815da-b7ad-4fcf-9182-6e52f3c7d156',
  is_active: false,
  name: 'Games',
  type: Models::Shared::HrisGroupType::BUSINESS_UNIT,
  updated_at: DateTime.iso8601('2026-04-26T04:59:49.322Z'),
), connection_id: '<id>')

unless res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_group`                                                                                                                                     | [Models::Shared::HrisGroup](../../models/shared/hrisgroup.md)                                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHrisGroupQueryParamFields](../../models/operations/createhrisgroupqueryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHrisGroupResponse)](../../models/operations/createhrisgroupresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_scim_groups

Create group

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createScimGroups" method="post" path="/scim/{connection_id}/groups" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.group.create_scim_groups(scim_group: Models::Shared::ScimGroup.new(
  display_name: 'Nina.Tremblay',
), connection_id: '<id>')

unless res.scim_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                     | Type                                                          | Required                                                      | Description                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `scim_group`                                                  | [Models::Shared::ScimGroup](../../models/shared/scimgroup.md) | :heavy_check_mark:                                            | N/A                                                           |
| `connection_id`                                               | *::String*                                                    | :heavy_check_mark:                                            | ID of the connection                                          |

### Response

**[T.nilable(Models::Operations::CreateScimGroupsResponse)](../../models/operations/createscimgroupsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_ads_group

Retrieve a group

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAdsGroup" method="get" path="/ads/{connection_id}/group/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.group.get_ads_group(connection_id: '<id>', id: '<id>')

unless res.ads_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Group                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAdsGroupQueryParamFields](../../models/operations/getadsgroupqueryparamfields.md)>                              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAdsGroupResponse)](../../models/operations/getadsgroupresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_clubs_group

Retrieve a group

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getClubsGroup" method="get" path="/clubs/{connection_id}/group/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.group.get_clubs_group(connection_id: '<id>', id: '<id>')

unless res.clubs_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Group                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetClubsGroupQueryParamFields](../../models/operations/getclubsgroupqueryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetClubsGroupResponse)](../../models/operations/getclubsgroupresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_hris_group

Retrieve a group

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisGroup" method="get" path="/hris/{connection_id}/group/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.group.get_hris_group(connection_id: '<id>', id: '<id>')

unless res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Group                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisGroupQueryParamFields](../../models/operations/gethrisgroupqueryparamfields.md)>                            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisGroupResponse)](../../models/operations/gethrisgroupresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_scim_groups

Get group

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getScimGroups" method="get" path="/scim/{connection_id}/groups/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.group.get_scim_groups(connection_id: '<id>', id: '<id>')

unless res.scim_group.nil?
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Group      |

### Response

**[T.nilable(Models::Operations::GetScimGroupsResponse)](../../models/operations/getscimgroupsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_ads_groups

List all groups

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAdsGroups" method="get" path="/ads/{connection_id}/group" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAdsGroupsRequest.new(
  connection_id: '<id>',
)

res = s.group.list_ads_groups(request: req)

unless res.ads_groups.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::ListAdsGroupsRequest](../../models/operations/listadsgroupsrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::ListAdsGroupsResponse)](../../models/operations/listadsgroupsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_clubs_groups

List all groups

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listClubsGroups" method="get" path="/clubs/{connection_id}/group" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListClubsGroupsRequest.new(
  connection_id: '<id>',
)

res = s.group.list_clubs_groups(request: req)

unless res.clubs_groups.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::ListClubsGroupsRequest](../../models/operations/listclubsgroupsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::ListClubsGroupsResponse)](../../models/operations/listclubsgroupsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_groups

List all groups

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisGroups" method="get" path="/hris/{connection_id}/group" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisGroupsRequest.new(
  connection_id: '<id>',
)

res = s.group.list_hris_groups(request: req)

unless res.hris_groups.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::ListHrisGroupsRequest](../../models/operations/listhrisgroupsrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::ListHrisGroupsResponse)](../../models/operations/listhrisgroupsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_scim_groups

List groups

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listScimGroups" method="get" path="/scim/{connection_id}/groups" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListScimGroupsRequest.new(
  connection_id: '<id>',
)

res = s.group.list_scim_groups(request: req)

unless res.scim_groups.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::ListScimGroupsRequest](../../models/operations/listscimgroupsrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::ListScimGroupsResponse)](../../models/operations/listscimgroupsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_ads_group

Update a group

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAdsGroup" method="patch" path="/ads/{connection_id}/group/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAdsGroupRequest.new(
  ads_group: Models::Shared::AdsGroup.new(
    bid_amount: 26.16_030_164_062_977,
    budget_amount: 5_099.175_239_447_504,
    budget_period: Models::Shared::AdsGroupBudgetPeriod::MONTHLY,
    created_at: DateTime.iso8601('2019-08-29T17:59:41.045Z'),
    currency: 'USD',
    effective_status: Models::Shared::AdsGroupEffectiveStatus::PAUSED,
    end_at: DateTime.iso8601('2026-05-27T10:47:54.564Z'),
    id: 'ea9eb928-96eb-4e5b-a608-6caf8c5ab32f',
    language_locale: 'fr-FR',
    name: 'Stark - Baumbach',
    start_at: DateTime.iso8601('2025-12-13T14:00:50.468Z'),
    status: Models::Shared::AdsGroupStatus::PROCESSING,
    targeting: Models::Shared::PropertyAdsGroupTargeting.new(),
    updated_at: DateTime.iso8601('2022-01-03T16:58:18.420Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.group.patch_ads_group(request: req)

unless res.ads_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::PatchAdsGroupRequest](../../models/operations/patchadsgrouprequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::PatchAdsGroupResponse)](../../models/operations/patchadsgroupresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_hris_group

Update a group

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHrisGroup" method="patch" path="/hris/{connection_id}/group/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchHrisGroupRequest.new(
  hris_group: Models::Shared::HrisGroup.new(
    created_at: DateTime.iso8601('2023-11-01T13:13:40.714Z'),
    description: 'Absorbeo casso.',
    id: '2dc0a185-c73f-4f72-8405-cfd966941363',
    is_active: false,
    name: 'Games',
    type: Models::Shared::HrisGroupType::BUSINESS_UNIT,
    updated_at: DateTime.iso8601('2026-04-26T04:59:49.331Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.group.patch_hris_group(request: req)

unless res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::PatchHrisGroupRequest](../../models/operations/patchhrisgrouprequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::PatchHrisGroupResponse)](../../models/operations/patchhrisgroupresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_scim_groups

Update group

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchScimGroups" method="patch" path="/scim/{connection_id}/groups/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.group.patch_scim_groups(scim_group: Models::Shared::ScimGroup.new(
  display_name: 'Newell.Hoeger',
), connection_id: '<id>', id: '<id>')

unless res.scim_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                     | Type                                                          | Required                                                      | Description                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `scim_group`                                                  | [Models::Shared::ScimGroup](../../models/shared/scimgroup.md) | :heavy_check_mark:                                            | N/A                                                           |
| `connection_id`                                               | *::String*                                                    | :heavy_check_mark:                                            | ID of the connection                                          |
| `id`                                                          | *::String*                                                    | :heavy_check_mark:                                            | ID of the Group                                               |

### Response

**[T.nilable(Models::Operations::PatchScimGroupsResponse)](../../models/operations/patchscimgroupsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_ads_group

Remove a group

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAdsGroup" method="delete" path="/ads/{connection_id}/group/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.group.remove_ads_group(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Group      |

### Response

**[T.nilable(Models::Operations::RemoveAdsGroupResponse)](../../models/operations/removeadsgroupresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_hris_group

Remove a group

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHrisGroup" method="delete" path="/hris/{connection_id}/group/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.group.remove_hris_group(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Group      |

### Response

**[T.nilable(Models::Operations::RemoveHrisGroupResponse)](../../models/operations/removehrisgroupresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_scim_groups

Delete group

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeScimGroups" method="delete" path="/scim/{connection_id}/groups/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.group.remove_scim_groups(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Group      |

### Response

**[T.nilable(Models::Operations::RemoveScimGroupsResponse)](../../models/operations/removescimgroupsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_ads_group

Update a group

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAdsGroup" method="put" path="/ads/{connection_id}/group/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAdsGroupRequest.new(
  ads_group: Models::Shared::AdsGroup.new(
    bid_amount: 26.16_030_164_062_977,
    budget_amount: 5_099.175_239_447_504,
    budget_period: Models::Shared::AdsGroupBudgetPeriod::MONTHLY,
    created_at: DateTime.iso8601('2019-08-29T17:59:41.045Z'),
    currency: 'USD',
    effective_status: Models::Shared::AdsGroupEffectiveStatus::PAUSED,
    end_at: DateTime.iso8601('2026-05-27T10:47:54.564Z'),
    id: 'ea9eb928-96eb-4e5b-a608-6caf8c5ab32f',
    language_locale: 'fr-FR',
    name: 'Stark - Baumbach',
    start_at: DateTime.iso8601('2025-12-13T14:00:50.468Z'),
    status: Models::Shared::AdsGroupStatus::PROCESSING,
    targeting: Models::Shared::PropertyAdsGroupTargeting.new(),
    updated_at: DateTime.iso8601('2022-01-03T16:58:18.420Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.group.update_ads_group(request: req)

unless res.ads_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::UpdateAdsGroupRequest](../../models/operations/updateadsgrouprequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::UpdateAdsGroupResponse)](../../models/operations/updateadsgroupresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_hris_group

Update a group

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHrisGroup" method="put" path="/hris/{connection_id}/group/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateHrisGroupRequest.new(
  hris_group: Models::Shared::HrisGroup.new(
    created_at: DateTime.iso8601('2023-11-01T13:13:40.714Z'),
    description: 'Absorbeo casso.',
    id: '2dc0a185-c73f-4f72-8405-cfd966941363',
    is_active: false,
    name: 'Games',
    type: Models::Shared::HrisGroupType::BUSINESS_UNIT,
    updated_at: DateTime.iso8601('2026-04-26T04:59:49.331Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.group.update_hris_group(request: req)

unless res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::UpdateHrisGroupRequest](../../models/operations/updatehrisgrouprequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::UpdateHrisGroupResponse)](../../models/operations/updatehrisgroupresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_scim_groups

Update group

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateScimGroups" method="put" path="/scim/{connection_id}/groups/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.group.update_scim_groups(scim_group: Models::Shared::ScimGroup.new(
  display_name: 'Reynold90',
), connection_id: '<id>', id: '<id>')

unless res.scim_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                     | Type                                                          | Required                                                      | Description                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `scim_group`                                                  | [Models::Shared::ScimGroup](../../models/shared/scimgroup.md) | :heavy_check_mark:                                            | N/A                                                           |
| `connection_id`                                               | *::String*                                                    | :heavy_check_mark:                                            | ID of the connection                                          |
| `id`                                                          | *::String*                                                    | :heavy_check_mark:                                            | ID of the Group                                               |

### Response

**[T.nilable(Models::Operations::UpdateScimGroupsResponse)](../../models/operations/updatescimgroupsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |