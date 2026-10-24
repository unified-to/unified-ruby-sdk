# Martech
(*martech*)

## Overview

### Available Operations

* [create_martech_campaign](#create_martech_campaign) - Create a campaign
* [create_martech_list](#create_martech_list) - Create a list
* [create_martech_member](#create_martech_member) - Create a member
* [get_martech_campaign](#get_martech_campaign) - Retrieve a campaign
* [get_martech_list](#get_martech_list) - Retrieve a list
* [get_martech_member](#get_martech_member) - Retrieve a member
* [list_martech_campaigns](#list_martech_campaigns) - List all campaigns
* [list_martech_lists](#list_martech_lists) - List all lists
* [list_martech_members](#list_martech_members) - List all members
* [list_martech_reports](#list_martech_reports) - List all reports
* [patch_martech_campaign](#patch_martech_campaign) - Update a campaign
* [patch_martech_list](#patch_martech_list) - Update a list
* [patch_martech_member](#patch_martech_member) - Update a member
* [remove_martech_campaign](#remove_martech_campaign) - Remove a campaign
* [remove_martech_list](#remove_martech_list) - Remove a list
* [remove_martech_member](#remove_martech_member) - Remove a member
* [update_martech_campaign](#update_martech_campaign) - Update a campaign
* [update_martech_list](#update_martech_list) - Update a list
* [update_martech_member](#update_martech_member) - Update a member

## create_martech_campaign

Creates a MarketingCampaign. Provide the unified MarketingCampaign fields in the request body; they are mapped to the provider's API. Returns the created MarketingCampaign.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createMartechCampaign" method="post" path="/martech/{connection_id}/campaign" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.martech.create_martech_campaign(marketing_campaign: Models::Shared::MarketingCampaign.new(
  created_at: DateTime.iso8601('2019-05-19T11:18:15.589Z'),
  from_email: 'graham.mertz@gmail.com',
  from_name: 'Graham Mertz',
  id: '309e73e8-1e1a-49a6-b449-24df64c340ed',
  metadata: [],
  name: 'Consequatur atqui sustineo.',
  preview_text: 'Auctus votum ver umbra corroboro turpis spoliatio tamen strues auxilium benigne tempus error eaque suasoria.',
  reply_to_email: 'graham.mertz@icloud.com',
  send_at: DateTime.iso8601('2024-01-23T21:19:26.708Z'),
  status: Models::Shared::MarketingCampaignStatus::SCHEDULED,
  subject_line: 'Trepide utpote conculco tibi solio supplanto peior tibi.',
  type: 'absplit',
  updated_at: DateTime.iso8601('2022-06-23T09:08:16.554Z'),
), connection_id: '<id>')

unless res.marketing_campaign.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `marketing_campaign`                                                                                                                             | [Models::Shared::MarketingCampaign](../../models/shared/marketingcampaign.md)                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateMartechCampaignQueryParamFields](../../models/operations/createmartechcampaignqueryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateMartechCampaignResponse)](../../models/operations/createmartechcampaignresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

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

res = s.martech.create_martech_list(marketing_list: Models::Shared::MarketingList.new(
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
  id: 'f4f027bb-ae31-45d1-adb9-028c89986f8a',
  is_active: true,
  language: 'ru',
  metadata: [],
  name: 'Electronics Newsletter',
  sender_company: 'Koepp and Sons',
  sender_email: 'blake.kuhn@hotmail.com',
  sender_name: 'Blake Kuhn',
  sender_phone: '359.305.7962 x28115',
  subject: 'Theca caecus copia crebro valeo ulciscor.',
  updated_at: DateTime.iso8601('2022-09-14T16:47:25.289Z'),
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

## create_martech_member

Creates a MarketingMember. Provide the unified MarketingMember fields in the request body; they are mapped to the provider's API. Returns the created MarketingMember.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createMartechMember" method="post" path="/martech/{connection_id}/member" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.martech.create_martech_member(marketing_member: Models::Shared::MarketingMember.new(
  company: 'Miller - Franecki',
  created_at: DateTime.iso8601('2022-04-15T15:32:38.496Z'),
  emails: [
    Models::Shared::MarketingEmail.new(
      email: 'jude.leffler@hotmail.com',
      type: Models::Shared::MarketingEmailType::HOME,
    ),
  ],
  first_name: 'Jude',
  id: 'df538577-5dcb-4d14-93a2-dd4b2300e962',
  last_name: 'Leffler',
  metadata: [],
  name: 'Jude Leffler',
  status: Models::Shared::MarketingMemberStatus::UNSUBSCRIBED,
  tags: [
    'adnuo',
    'verumtamen',
  ],
  updated_at: DateTime.iso8601('2025-07-10T23:54:45.297Z'),
), connection_id: '<id>')

unless res.marketing_member.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `marketing_member`                                                                                                                               | [Models::Shared::MarketingMember](../../models/shared/marketingmember.md)                                                                        | :heavy_check_mark:                                                                                                                               | A member represents a person                                                                                                                     |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateMartechMemberQueryParamFields](../../models/operations/createmartechmemberqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateMartechMemberResponse)](../../models/operations/createmartechmemberresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_martech_campaign

Retrieves a single MarketingCampaign by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getMartechCampaign" method="get" path="/martech/{connection_id}/campaign/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.martech.get_martech_campaign(connection_id: '<id>', id: '<id>')

unless res.marketing_campaign.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Campaign                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetMartechCampaignQueryParamFields](../../models/operations/getmartechcampaignqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetMartechCampaignResponse)](../../models/operations/getmartechcampaignresponse.md)**

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

res = s.martech.get_martech_list(connection_id: '<id>', id: '<id>')

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

## get_martech_member

Retrieves a single MarketingMember by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getMartechMember" method="get" path="/martech/{connection_id}/member/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.martech.get_martech_member(connection_id: '<id>', id: '<id>')

unless res.marketing_member.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Member                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetMartechMemberQueryParamFields](../../models/operations/getmartechmemberqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetMartechMemberResponse)](../../models/operations/getmartechmemberresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_martech_campaigns

Returns a list of MarketingCampaigns. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listMartechCampaigns" method="get" path="/martech/{connection_id}/campaign" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListMartechCampaignsRequest.new(
  connection_id: '<id>',
)

res = s.martech.list_martech_campaigns(request: req)

unless res.marketing_campaigns.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListMartechCampaignsRequest](../../models/operations/listmartechcampaignsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListMartechCampaignsResponse)](../../models/operations/listmartechcampaignsresponse.md)**

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

res = s.martech.list_martech_lists(request: req)

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

## list_martech_members

Returns a list of MarketingMembers. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listMartechMembers" method="get" path="/martech/{connection_id}/member" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListMartechMembersRequest.new(
  connection_id: '<id>',
)

res = s.martech.list_martech_members(request: req)

unless res.marketing_members.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListMartechMembersRequest](../../models/operations/listmartechmembersrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListMartechMembersResponse)](../../models/operations/listmartechmembersresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_martech_reports

Returns a list of MarketingReports. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listMartechReports" method="get" path="/martech/{connection_id}/report" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListMartechReportsRequest.new(
  connection_id: '<id>',
)

res = s.martech.list_martech_reports(request: req)

unless res.marketing_reports.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListMartechReportsRequest](../../models/operations/listmartechreportsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListMartechReportsResponse)](../../models/operations/listmartechreportsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_martech_campaign

Updates the MarketingCampaign identified by `id`. Provide the unified MarketingCampaign fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchMartechCampaign" method="patch" path="/martech/{connection_id}/campaign/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchMartechCampaignRequest.new(
  marketing_campaign: Models::Shared::MarketingCampaign.new(
    created_at: DateTime.iso8601('2019-05-19T11:18:15.589Z'),
    from_email: 'graham.mertz@gmail.com',
    from_name: 'Graham Mertz',
    id: 'aa9c0380-b3ec-4e1b-86c4-4b7106a5e891',
    metadata: [],
    name: 'Consequatur atqui sustineo.',
    preview_text: 'Auctus votum ver umbra corroboro turpis spoliatio tamen strues auxilium benigne tempus error eaque suasoria.',
    reply_to_email: 'graham.mertz@icloud.com',
    send_at: DateTime.iso8601('2024-01-23T21:19:26.708Z'),
    status: Models::Shared::MarketingCampaignStatus::SCHEDULED,
    subject_line: 'Trepide utpote conculco tibi solio supplanto peior tibi.',
    type: 'absplit',
    updated_at: DateTime.iso8601('2022-06-23T09:08:16.559Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.martech.patch_martech_campaign(request: req)

unless res.marketing_campaign.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::PatchMartechCampaignRequest](../../models/operations/patchmartechcampaignrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::PatchMartechCampaignResponse)](../../models/operations/patchmartechcampaignresponse.md)**

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
    id: '21390b2c-7b4d-4683-a5cb-dd6bf7ab2806',
    is_active: true,
    language: 'ru',
    metadata: [],
    name: 'Electronics Newsletter',
    sender_company: 'Koepp and Sons',
    sender_email: 'blake.kuhn@hotmail.com',
    sender_name: 'Blake Kuhn',
    sender_phone: '359.305.7962 x28115',
    subject: 'Theca caecus copia crebro valeo ulciscor.',
    updated_at: DateTime.iso8601('2022-09-14T16:47:25.296Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.martech.patch_martech_list(request: req)

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

## patch_martech_member

Updates the MarketingMember identified by `id`. Provide the unified MarketingMember fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchMartechMember" method="patch" path="/martech/{connection_id}/member/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchMartechMemberRequest.new(
  marketing_member: Models::Shared::MarketingMember.new(
    company: 'Miller - Franecki',
    created_at: DateTime.iso8601('2022-04-15T15:32:38.496Z'),
    emails: [
      Models::Shared::MarketingEmail.new(
        email: 'jude.leffler@hotmail.com',
        type: Models::Shared::MarketingEmailType::HOME,
      ),
    ],
    first_name: 'Jude',
    id: '31ee3f76-899e-4847-b181-ccc7065e2a65',
    last_name: 'Leffler',
    metadata: [],
    name: 'Jude Leffler',
    status: Models::Shared::MarketingMemberStatus::UNSUBSCRIBED,
    tags: [
      'adnuo',
      'verumtamen',
    ],
    updated_at: DateTime.iso8601('2025-07-10T23:54:45.306Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.martech.patch_martech_member(request: req)

unless res.marketing_member.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::PatchMartechMemberRequest](../../models/operations/patchmartechmemberrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::PatchMartechMemberResponse)](../../models/operations/patchmartechmemberresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_martech_campaign

Deletes the MarketingCampaign identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeMartechCampaign" method="delete" path="/martech/{connection_id}/campaign/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.martech.remove_martech_campaign(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Campaign   |

### Response

**[T.nilable(Models::Operations::RemoveMartechCampaignResponse)](../../models/operations/removemartechcampaignresponse.md)**

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

res = s.martech.remove_martech_list(connection_id: '<id>', id: '<id>')

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

## remove_martech_member

Deletes the MarketingMember identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeMartechMember" method="delete" path="/martech/{connection_id}/member/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.martech.remove_martech_member(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Member     |

### Response

**[T.nilable(Models::Operations::RemoveMartechMemberResponse)](../../models/operations/removemartechmemberresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_martech_campaign

Updates the MarketingCampaign identified by `id`. Provide the unified MarketingCampaign fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateMartechCampaign" method="put" path="/martech/{connection_id}/campaign/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateMartechCampaignRequest.new(
  marketing_campaign: Models::Shared::MarketingCampaign.new(
    created_at: DateTime.iso8601('2019-05-19T11:18:15.589Z'),
    from_email: 'graham.mertz@gmail.com',
    from_name: 'Graham Mertz',
    id: 'aa9c0380-b3ec-4e1b-86c4-4b7106a5e891',
    metadata: [],
    name: 'Consequatur atqui sustineo.',
    preview_text: 'Auctus votum ver umbra corroboro turpis spoliatio tamen strues auxilium benigne tempus error eaque suasoria.',
    reply_to_email: 'graham.mertz@icloud.com',
    send_at: DateTime.iso8601('2024-01-23T21:19:26.708Z'),
    status: Models::Shared::MarketingCampaignStatus::SCHEDULED,
    subject_line: 'Trepide utpote conculco tibi solio supplanto peior tibi.',
    type: 'absplit',
    updated_at: DateTime.iso8601('2022-06-23T09:08:16.559Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.martech.update_martech_campaign(request: req)

unless res.marketing_campaign.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::UpdateMartechCampaignRequest](../../models/operations/updatemartechcampaignrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::UpdateMartechCampaignResponse)](../../models/operations/updatemartechcampaignresponse.md)**

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
    id: '21390b2c-7b4d-4683-a5cb-dd6bf7ab2806',
    is_active: true,
    language: 'ru',
    metadata: [],
    name: 'Electronics Newsletter',
    sender_company: 'Koepp and Sons',
    sender_email: 'blake.kuhn@hotmail.com',
    sender_name: 'Blake Kuhn',
    sender_phone: '359.305.7962 x28115',
    subject: 'Theca caecus copia crebro valeo ulciscor.',
    updated_at: DateTime.iso8601('2022-09-14T16:47:25.296Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.martech.update_martech_list(request: req)

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

## update_martech_member

Updates the MarketingMember identified by `id`. Provide the unified MarketingMember fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateMartechMember" method="put" path="/martech/{connection_id}/member/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateMartechMemberRequest.new(
  marketing_member: Models::Shared::MarketingMember.new(
    company: 'Miller - Franecki',
    created_at: DateTime.iso8601('2022-04-15T15:32:38.496Z'),
    emails: [
      Models::Shared::MarketingEmail.new(
        email: 'jude.leffler@hotmail.com',
        type: Models::Shared::MarketingEmailType::HOME,
      ),
    ],
    first_name: 'Jude',
    id: '31ee3f76-899e-4847-b181-ccc7065e2a65',
    last_name: 'Leffler',
    metadata: [],
    name: 'Jude Leffler',
    status: Models::Shared::MarketingMemberStatus::UNSUBSCRIBED,
    tags: [
      'adnuo',
      'verumtamen',
    ],
    updated_at: DateTime.iso8601('2025-07-10T23:54:45.306Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.martech.update_martech_member(request: req)

unless res.marketing_member.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::UpdateMartechMemberRequest](../../models/operations/updatemartechmemberrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::UpdateMartechMemberResponse)](../../models/operations/updatemartechmemberresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |