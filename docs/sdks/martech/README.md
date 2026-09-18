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

Create a campaign

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
  created_at: DateTime.iso8601('2023-08-01T22:29:12.121Z'),
  from_email: 'Nick.Beahan@hotmail.com',
  from_name: 'Javier Rempel',
  id: 'f55d8e92-4bfd-487f-8c76-04b61c5dd34e',
  list_ids: [
    'bde5cab9-cf2f-4ed5-adab-b33c88bac5af',
  ],
  name: 'Consequatur atqui sustineo.',
  preview_text: 'Bellicus tener cinis causa cavus toties.',
  reply_to_email: 'Antwan.Abshire@hotmail.com',
  send_at: DateTime.iso8601('2023-03-28T12:33:25.052Z'),
  status: Models::Shared::MarketingCampaignStatus::SENT,
  subject_line: 'Depromo depulso turpis teres apparatus placeat ventus tolero cunctatio.',
  type: 'plaintext',
  updated_at: DateTime.iso8601('2023-12-17T22:11:31.702Z'),
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

Create a list

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
    address1: '922 Elmore Manor',
    address2: 'Suite 925',
    city: 'Deerfield Beach',
    country: 'Bahrain',
    postal_code: '30765-6471',
    region: 'FL',
  ),
  created_at: DateTime.iso8601('2019-09-18T02:01:36.950Z'),
  description: 'Currus.',
  id: 'bb442904-2817-43f0-9c39-171b763ceaba',
  is_active: true,
  language: 'it',
  name: 'Annette Nolan',
  sender_company: 'Hickle - Homenick',
  sender_email: 'Matt_Steuber@hotmail.com',
  sender_name: 'Salvatore Roob',
  sender_phone: '896-328-1153 x4957',
  subject: 'Tenetur thymum circumvenio triumphus celo.',
  updated_at: DateTime.iso8601('2022-08-30T12:21:32.932Z'),
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

Create a member

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
      email: 'Thalia.Abernathy61@gmail.com',
      type: Models::Shared::MarketingEmailType::HOME,
    ),
    Models::Shared::MarketingEmail.new(
      email: 'Maymie59@hotmail.com',
      type: Models::Shared::MarketingEmailType::HOME,
    ),
    Models::Shared::MarketingEmail.new(
      email: 'Coty27@hotmail.com',
      type: Models::Shared::MarketingEmailType::WORK,
    ),
  ],
  first_name: 'Jude',
  id: '8fad607b-06a8-47de-9ead-622379e73069',
  last_name: 'Leffler',
  name: 'Jude Leffler',
  status: Models::Shared::MarketingMemberStatus::UNSUBSCRIBED,
  tags: [
    'vinco',
    'ceno',
  ],
  updated_at: DateTime.iso8601('2025-06-15T05:04:22.825Z'),
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

Retrieve a campaign

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

Retrieve a list

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

Retrieve a member

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

List all campaigns

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

List all lists

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

List all members

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

List all reports

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

Update a campaign

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
    created_at: DateTime.iso8601('2023-08-01T22:29:12.121Z'),
    from_email: 'Nick.Beahan@hotmail.com',
    from_name: 'Javier Rempel',
    id: '688597c4-916c-4da5-88d9-7ce364e7aac0',
    list_ids: [
      'bde5cab9-cf2f-4ed5-adab-b33c88bac5af',
    ],
    name: 'Consequatur atqui sustineo.',
    preview_text: 'Bellicus tener cinis causa cavus toties.',
    reply_to_email: 'Antwan.Abshire@hotmail.com',
    send_at: DateTime.iso8601('2023-03-28T12:33:25.052Z'),
    status: Models::Shared::MarketingCampaignStatus::SENT,
    subject_line: 'Depromo depulso turpis teres apparatus placeat ventus tolero cunctatio.',
    type: 'plaintext',
    updated_at: DateTime.iso8601('2023-12-17T22:11:31.702Z'),
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

Update a list

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
      address1: '922 Elmore Manor',
      address2: 'Suite 925',
      city: 'Deerfield Beach',
      country: 'Bahrain',
      postal_code: '30765-6471',
      region: 'FL',
    ),
    created_at: DateTime.iso8601('2019-09-18T02:01:36.950Z'),
    description: 'Currus.',
    id: 'd907dbd5-8f6e-444f-9b5e-5a7b02ad2b60',
    is_active: true,
    language: 'it',
    name: 'Annette Nolan',
    sender_company: 'Hickle - Homenick',
    sender_email: 'Matt_Steuber@hotmail.com',
    sender_name: 'Salvatore Roob',
    sender_phone: '896-328-1153 x4957',
    subject: 'Tenetur thymum circumvenio triumphus celo.',
    updated_at: DateTime.iso8601('2022-08-30T12:21:32.937Z'),
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

Update a member

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
        email: 'Thalia.Abernathy61@gmail.com',
        type: Models::Shared::MarketingEmailType::HOME,
      ),
      Models::Shared::MarketingEmail.new(
        email: 'Maymie59@hotmail.com',
        type: Models::Shared::MarketingEmailType::HOME,
      ),
      Models::Shared::MarketingEmail.new(
        email: 'Coty27@hotmail.com',
        type: Models::Shared::MarketingEmailType::WORK,
      ),
    ],
    first_name: 'Jude',
    id: '23819218-e541-48f2-b90a-259cc18ed48a',
    last_name: 'Leffler',
    name: 'Jude Leffler',
    status: Models::Shared::MarketingMemberStatus::UNSUBSCRIBED,
    tags: [
      'vinco',
      'ceno',
    ],
    updated_at: DateTime.iso8601('2025-06-15T05:04:22.830Z'),
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

Remove a campaign

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

Remove a list

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

Remove a member

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

Update a campaign

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
    created_at: DateTime.iso8601('2023-08-01T22:29:12.121Z'),
    from_email: 'Nick.Beahan@hotmail.com',
    from_name: 'Javier Rempel',
    id: '688597c4-916c-4da5-88d9-7ce364e7aac0',
    list_ids: [
      'bde5cab9-cf2f-4ed5-adab-b33c88bac5af',
    ],
    name: 'Consequatur atqui sustineo.',
    preview_text: 'Bellicus tener cinis causa cavus toties.',
    reply_to_email: 'Antwan.Abshire@hotmail.com',
    send_at: DateTime.iso8601('2023-03-28T12:33:25.052Z'),
    status: Models::Shared::MarketingCampaignStatus::SENT,
    subject_line: 'Depromo depulso turpis teres apparatus placeat ventus tolero cunctatio.',
    type: 'plaintext',
    updated_at: DateTime.iso8601('2023-12-17T22:11:31.702Z'),
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

Update a list

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
      address1: '922 Elmore Manor',
      address2: 'Suite 925',
      city: 'Deerfield Beach',
      country: 'Bahrain',
      postal_code: '30765-6471',
      region: 'FL',
    ),
    created_at: DateTime.iso8601('2019-09-18T02:01:36.950Z'),
    description: 'Currus.',
    id: 'd907dbd5-8f6e-444f-9b5e-5a7b02ad2b60',
    is_active: true,
    language: 'it',
    name: 'Annette Nolan',
    sender_company: 'Hickle - Homenick',
    sender_email: 'Matt_Steuber@hotmail.com',
    sender_name: 'Salvatore Roob',
    sender_phone: '896-328-1153 x4957',
    subject: 'Tenetur thymum circumvenio triumphus celo.',
    updated_at: DateTime.iso8601('2022-08-30T12:21:32.937Z'),
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

Update a member

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
        email: 'Thalia.Abernathy61@gmail.com',
        type: Models::Shared::MarketingEmailType::HOME,
      ),
      Models::Shared::MarketingEmail.new(
        email: 'Maymie59@hotmail.com',
        type: Models::Shared::MarketingEmailType::HOME,
      ),
      Models::Shared::MarketingEmail.new(
        email: 'Coty27@hotmail.com',
        type: Models::Shared::MarketingEmailType::WORK,
      ),
    ],
    first_name: 'Jude',
    id: '23819218-e541-48f2-b90a-259cc18ed48a',
    last_name: 'Leffler',
    name: 'Jude Leffler',
    status: Models::Shared::MarketingMemberStatus::UNSUBSCRIBED,
    tags: [
      'vinco',
      'ceno',
    ],
    updated_at: DateTime.iso8601('2025-06-15T05:04:22.830Z'),
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