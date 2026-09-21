# Ads
(*ads*)

## Overview

### Available Operations

* [create_ads_ad](#create_ads_ad) - Create an ad
* [create_ads_asset](#create_ads_asset) - Create an asset
* [create_ads_campaign](#create_ads_campaign) - Create a campaign
* [create_ads_creative](#create_ads_creative) - Create a creative
* [create_ads_group](#create_ads_group) - Create a group
* [create_ads_insertionorder](#create_ads_insertionorder) - Create an insertionorder
* [create_ads_organization](#create_ads_organization) - Create an organization
* [get_ads_ad](#get_ads_ad) - Retrieve an ad
* [get_ads_asset](#get_ads_asset) - Retrieve an asset
* [get_ads_campaign](#get_ads_campaign) - Retrieve a campaign
* [get_ads_creative](#get_ads_creative) - Retrieve a creative
* [get_ads_group](#get_ads_group) - Retrieve a group
* [get_ads_insertionorder](#get_ads_insertionorder) - Retrieve an insertionorder
* [get_ads_organization](#get_ads_organization) - Retrieve an organization
* [get_ads_promoted](#get_ads_promoted) - Retrieve a promoted
* [get_ads_target](#get_ads_target) - Retrieve a target
* [list_ads_ads](#list_ads_ads) - List all ads
* [list_ads_assets](#list_ads_assets) - List all assets
* [list_ads_campaigns](#list_ads_campaigns) - List all campaigns
* [list_ads_creatives](#list_ads_creatives) - List all creatives
* [list_ads_groups](#list_ads_groups) - List all groups
* [list_ads_insertionorders](#list_ads_insertionorders) - List all insertionorders
* [list_ads_organizations](#list_ads_organizations) - List all organizations
* [list_ads_promoteds](#list_ads_promoteds) - List all promoteds
* [list_ads_reports](#list_ads_reports) - List all reports
* [list_ads_targets](#list_ads_targets) - List all targets
* [patch_ads_ad](#patch_ads_ad) - Update an ad
* [patch_ads_campaign](#patch_ads_campaign) - Update a campaign
* [patch_ads_creative](#patch_ads_creative) - Update a creative
* [patch_ads_group](#patch_ads_group) - Update a group
* [patch_ads_insertionorder](#patch_ads_insertionorder) - Update an insertionorder
* [patch_ads_organization](#patch_ads_organization) - Update an organization
* [remove_ads_ad](#remove_ads_ad) - Remove an ad
* [remove_ads_campaign](#remove_ads_campaign) - Remove a campaign
* [remove_ads_creative](#remove_ads_creative) - Remove a creative
* [remove_ads_group](#remove_ads_group) - Remove a group
* [remove_ads_insertionorder](#remove_ads_insertionorder) - Remove an insertionorder
* [remove_ads_organization](#remove_ads_organization) - Remove an organization
* [update_ads_ad](#update_ads_ad) - Update an ad
* [update_ads_campaign](#update_ads_campaign) - Update a campaign
* [update_ads_creative](#update_ads_creative) - Update a creative
* [update_ads_group](#update_ads_group) - Update a group
* [update_ads_insertionorder](#update_ads_insertionorder) - Update an insertionorder
* [update_ads_organization](#update_ads_organization) - Update an organization

## create_ads_ad

Create an ad

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAdsAd" method="post" path="/ads/{connection_id}/ad" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ads.create_ads_ad(ads_ad: Models::Shared::AdsAd.new(
  ad_copy: 'Ascisco tolero caute sapiente. Valens unde comedo cursus crinis nobis thema. Cohaero nisi ullam tum unde ultio vilicus auditor capio.',
  ad_type: Models::Shared::AdType::SOCIAL,
  advertiser_name: 'Robel, Nader and Rau',
  created_at: DateTime.iso8601('2022-11-08T03:38:20.978Z'),
  creative_asset_url: 'https://picsum.photos/seed/LwOzrpr9/948/2793',
  description: 'Accedo vespillo carpo dolor decet stillicidium comptus tenuis.',
  final_url: 'https://improbable-sanity.com',
  id: 'e614be9a-9778-471f-8819-aeb323c8ff8c',
  name: 'Hermiston Group',
  status: Models::Shared::AdsAdStatus::ARCHIVED,
  updated_at: DateTime.iso8601('2024-06-06T08:19:09.244Z'),
), connection_id: '<id>')

unless res.ads_ad.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `ads_ad`                                                                                                                                         | [Models::Shared::AdsAd](../../models/shared/adsad.md)                                                                                            | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAdsAdQueryParamFields](../../models/operations/createadsadqueryparamfields.md)>                              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAdsAdResponse)](../../models/operations/createadsadresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_ads_asset

Create an asset

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAdsAsset" method="post" path="/ads/{connection_id}/asset" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ads.create_ads_asset(ads_asset: Models::Shared::AdsAsset.new(
  created_at: DateTime.iso8601('2020-03-27T20:14:38.603Z'),
  height: 400.0,
  id: 'b7274982-02b1-4236-9bf8-bfaa36d461cb',
  mime_type: 'IMAGE_PNG',
  name: 'Lockman - DuBuque',
  type: Models::Shared::AdsAssetType::IMAGE,
  updated_at: DateTime.iso8601('2022-03-16T02:29:32.674Z'),
  url: 'https://informal-perfection.com/',
  width: 600.0,
), connection_id: '<id>')

unless res.ads_asset.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `ads_asset`                                                                                                                                      | [Models::Shared::AdsAsset](../../models/shared/adsasset.md)                                                                                      | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAdsAssetQueryParamFields](../../models/operations/createadsassetqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAdsAssetResponse)](../../models/operations/createadsassetresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_ads_campaign

Create a campaign

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAdsCampaign" method="post" path="/ads/{connection_id}/campaign" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ads.create_ads_campaign(ads_campaign: Models::Shared::AdsCampaign.new(
  budget_amount: 8_743.179_536_121_897,
  budget_period: Models::Shared::BudgetPeriod::MONTHLY,
  category: 'CREDIT',
  created_at: DateTime.iso8601('2022-05-21T08:51:41.868Z'),
  currency: 'USD',
  effective_status: Models::Shared::EffectiveStatus::NOT_ELIGIBLE,
  end_at: DateTime.iso8601('2025-05-11T10:13:16.657Z'),
  id: 'b7845a2b-55ce-4073-a0ed-06c84d3fc889',
  labels: [
    'comedo',
  ],
  name: 'Emard Inc',
  start_at: DateTime.iso8601('2022-07-20T07:36:39.670Z'),
  status: Models::Shared::AdsCampaignStatus::PROCESSING_FAILED,
  targeting: Models::Shared::PropertyAdsCampaignTargeting.new(),
  total_spend_amount: 2_349.8_642_875_347_286,
  updated_at: DateTime.iso8601('2025-12-08T01:10:49.698Z'),
), connection_id: '<id>')

unless res.ads_campaign.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `ads_campaign`                                                                                                                                   | [Models::Shared::AdsCampaign](../../models/shared/adscampaign.md)                                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAdsCampaignQueryParamFields](../../models/operations/createadscampaignqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAdsCampaignResponse)](../../models/operations/createadscampaignresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_ads_creative

Create a creative

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAdsCreative" method="post" path="/ads/{connection_id}/creative" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ads.create_ads_creative(ads_creative: Models::Shared::AdsCreative.new(
  created_at: DateTime.iso8601('2020-02-17T11:24:51.093Z'),
  id: '082b8a90-b91f-4b51-bc46-6b47d673a630',
  labels: [
    'coma',
    'accedo',
    'termes',
  ],
  name: 'Brekke, Bradtke and Robel',
  status: Models::Shared::AdsCreativeStatus::PAUSED,
  updated_at: DateTime.iso8601('2021-06-21T15:50:31.757Z'),
), connection_id: '<id>')

unless res.ads_creative.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `ads_creative`                                                                                                                                   | [Models::Shared::AdsCreative](../../models/shared/adscreative.md)                                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAdsCreativeQueryParamFields](../../models/operations/createadscreativequeryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAdsCreativeResponse)](../../models/operations/createadscreativeresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

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

res = s.ads.create_ads_group(ads_group: Models::Shared::AdsGroup.new(
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

## create_ads_insertionorder

Create an insertionorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAdsInsertionorder" method="post" path="/ads/{connection_id}/insertionorder" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ads.create_ads_insertionorder(ads_insertionorder: Models::Shared::AdsInsertionorder.new(
  created_at: DateTime.iso8601('2021-04-10T06:57:36.611Z'),
  id: '745b46bb-9ac8-4af3-b576-ba43a8ab604f',
  name: 'Kunde, Smith and Reinger',
  status: Models::Shared::AdsInsertionorderStatus::UNSPECIFIED,
  updated_at: DateTime.iso8601('2021-04-28T13:11:26.449Z'),
), connection_id: '<id>')

unless res.ads_insertionorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `ads_insertionorder`                                                                                                                             | [Models::Shared::AdsInsertionorder](../../models/shared/adsinsertionorder.md)                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAdsInsertionorderQueryParamFields](../../models/operations/createadsinsertionorderqueryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAdsInsertionorderResponse)](../../models/operations/createadsinsertionorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_ads_organization

Create an organization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAdsOrganization" method="post" path="/ads/{connection_id}/organization" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ads.create_ads_organization(ads_organization: Models::Shared::AdsOrganization.new(
  account_number: 'LQUJx8zQBW',
  created_at: DateTime.iso8601('2020-07-23T21:47:11.440Z'),
  currency: 'USD',
  id: 'e3012e78-dbb9-43c3-b089-c52634a97002',
  managers: [
    Models::Shared::AdsManager.new(
      id: 'e4fd87df-9f8b-4fa0-a77b-b7d18669e350',
      name: 'Parker, Leannon and Gibson',
    ),
  ],
  name: 'Ankunding Inc',
  status: Models::Shared::AdsOrganizationStatus::PROCESSING,
  timezone: 'Europe/Chisinau',
  updated_at: DateTime.iso8601('2026-03-01T20:43:52.695Z'),
), connection_id: '<id>')

unless res.ads_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `ads_organization`                                                                                                                               | [Models::Shared::AdsOrganization](../../models/shared/adsorganization.md)                                                                        | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAdsOrganizationQueryParamFields](../../models/operations/createadsorganizationqueryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAdsOrganizationResponse)](../../models/operations/createadsorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_ads_ad

Retrieve an ad

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAdsAd" method="get" path="/ads/{connection_id}/ad/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ads.get_ads_ad(connection_id: '<id>', id: '<id>')

unless res.ads_ad.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Ad                                                                                                                                     |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAdsAdQueryParamFields](../../models/operations/getadsadqueryparamfields.md)>                                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAdsAdResponse)](../../models/operations/getadsadresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_ads_asset

Retrieve an asset

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAdsAsset" method="get" path="/ads/{connection_id}/asset/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ads.get_ads_asset(connection_id: '<id>', id: '<id>')

unless res.ads_asset.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Asset                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAdsAssetQueryParamFields](../../models/operations/getadsassetqueryparamfields.md)>                              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAdsAssetResponse)](../../models/operations/getadsassetresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_ads_campaign

Retrieve a campaign

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAdsCampaign" method="get" path="/ads/{connection_id}/campaign/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ads.get_ads_campaign(connection_id: '<id>', id: '<id>')

unless res.ads_campaign.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Campaign                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAdsCampaignQueryParamFields](../../models/operations/getadscampaignqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAdsCampaignResponse)](../../models/operations/getadscampaignresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_ads_creative

Retrieve a creative

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAdsCreative" method="get" path="/ads/{connection_id}/creative/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ads.get_ads_creative(connection_id: '<id>', id: '<id>')

unless res.ads_creative.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Creative                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAdsCreativeQueryParamFields](../../models/operations/getadscreativequeryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAdsCreativeResponse)](../../models/operations/getadscreativeresponse.md)**

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

res = s.ads.get_ads_group(connection_id: '<id>', id: '<id>')

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

## get_ads_insertionorder

Retrieve an insertionorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAdsInsertionorder" method="get" path="/ads/{connection_id}/insertionorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ads.get_ads_insertionorder(connection_id: '<id>', id: '<id>')

unless res.ads_insertionorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Insertionorder                                                                                                                         |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAdsInsertionorderQueryParamFields](../../models/operations/getadsinsertionorderqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAdsInsertionorderResponse)](../../models/operations/getadsinsertionorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_ads_organization

Retrieve an organization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAdsOrganization" method="get" path="/ads/{connection_id}/organization/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ads.get_ads_organization(connection_id: '<id>', id: '<id>')

unless res.ads_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Organization                                                                                                                           |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAdsOrganizationQueryParamFields](../../models/operations/getadsorganizationqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAdsOrganizationResponse)](../../models/operations/getadsorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_ads_promoted

Retrieve a promoted

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAdsPromoted" method="get" path="/ads/{connection_id}/promoted/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ads.get_ads_promoted(connection_id: '<id>', id: '<id>')

unless res.ads_promoted.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Promoted                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAdsPromotedQueryParamFields](../../models/operations/getadspromotedqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAdsPromotedResponse)](../../models/operations/getadspromotedresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_ads_target

Retrieve a target

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAdsTarget" method="get" path="/ads/{connection_id}/target/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ads.get_ads_target(connection_id: '<id>', id: '<id>')

unless res.ads_target.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Target                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAdsTargetQueryParamFields](../../models/operations/getadstargetqueryparamfields.md)>                            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAdsTargetResponse)](../../models/operations/getadstargetresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_ads_ads

List all ads

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAdsAds" method="get" path="/ads/{connection_id}/ad" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAdsAdsRequest.new(
  connection_id: '<id>',
)

res = s.ads.list_ads_ads(request: req)

unless res.ads_ads.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `request`                                                                             | [Models::Operations::ListAdsAdsRequest](../../models/operations/listadsadsrequest.md) | :heavy_check_mark:                                                                    | The request object to use for the request.                                            |

### Response

**[T.nilable(Models::Operations::ListAdsAdsResponse)](../../models/operations/listadsadsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_ads_assets

List all assets

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAdsAssets" method="get" path="/ads/{connection_id}/asset" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAdsAssetsRequest.new(
  connection_id: '<id>',
)

res = s.ads.list_ads_assets(request: req)

unless res.ads_assets.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::ListAdsAssetsRequest](../../models/operations/listadsassetsrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::ListAdsAssetsResponse)](../../models/operations/listadsassetsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_ads_campaigns

List all campaigns

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAdsCampaigns" method="get" path="/ads/{connection_id}/campaign" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAdsCampaignsRequest.new(
  connection_id: '<id>',
)

res = s.ads.list_ads_campaigns(request: req)

unless res.ads_campaigns.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListAdsCampaignsRequest](../../models/operations/listadscampaignsrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListAdsCampaignsResponse)](../../models/operations/listadscampaignsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_ads_creatives

List all creatives

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAdsCreatives" method="get" path="/ads/{connection_id}/creative" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAdsCreativesRequest.new(
  connection_id: '<id>',
)

res = s.ads.list_ads_creatives(request: req)

unless res.ads_creatives.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListAdsCreativesRequest](../../models/operations/listadscreativesrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListAdsCreativesResponse)](../../models/operations/listadscreativesresponse.md)**

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

res = s.ads.list_ads_groups(request: req)

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

## list_ads_insertionorders

List all insertionorders

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAdsInsertionorders" method="get" path="/ads/{connection_id}/insertionorder" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAdsInsertionordersRequest.new(
  connection_id: '<id>',
)

res = s.ads.list_ads_insertionorders(request: req)

unless res.ads_insertionorders.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListAdsInsertionordersRequest](../../models/operations/listadsinsertionordersrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListAdsInsertionordersResponse)](../../models/operations/listadsinsertionordersresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_ads_organizations

List all organizations

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAdsOrganizations" method="get" path="/ads/{connection_id}/organization" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAdsOrganizationsRequest.new(
  connection_id: '<id>',
)

res = s.ads.list_ads_organizations(request: req)

unless res.ads_organizations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListAdsOrganizationsRequest](../../models/operations/listadsorganizationsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListAdsOrganizationsResponse)](../../models/operations/listadsorganizationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_ads_promoteds

List all promoteds

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAdsPromoteds" method="get" path="/ads/{connection_id}/promoted" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAdsPromotedsRequest.new(
  connection_id: '<id>',
)

res = s.ads.list_ads_promoteds(request: req)

unless res.ads_promoteds.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListAdsPromotedsRequest](../../models/operations/listadspromotedsrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListAdsPromotedsResponse)](../../models/operations/listadspromotedsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_ads_reports

List all reports

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAdsReports" method="get" path="/ads/{connection_id}/report" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAdsReportsRequest.new(
  connection_id: '<id>',
)

res = s.ads.list_ads_reports(request: req)

unless res.ads_reports.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::ListAdsReportsRequest](../../models/operations/listadsreportsrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::ListAdsReportsResponse)](../../models/operations/listadsreportsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_ads_targets

List all targets

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAdsTargets" method="get" path="/ads/{connection_id}/target" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAdsTargetsRequest.new(
  connection_id: '<id>',
)

res = s.ads.list_ads_targets(request: req)

unless res.ads_targets.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::ListAdsTargetsRequest](../../models/operations/listadstargetsrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::ListAdsTargetsResponse)](../../models/operations/listadstargetsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_ads_ad

Update an ad

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAdsAd" method="patch" path="/ads/{connection_id}/ad/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAdsAdRequest.new(
  ads_ad: Models::Shared::AdsAd.new(
    ad_copy: 'Ascisco tolero caute sapiente. Valens unde comedo cursus crinis nobis thema. Cohaero nisi ullam tum unde ultio vilicus auditor capio.',
    ad_type: Models::Shared::AdType::SOCIAL,
    advertiser_name: 'Robel, Nader and Rau',
    created_at: DateTime.iso8601('2022-11-08T03:38:20.978Z'),
    creative_asset_url: 'https://picsum.photos/seed/LwOzrpr9/948/2793',
    description: 'Accedo vespillo carpo dolor decet stillicidium comptus tenuis.',
    final_url: 'https://improbable-sanity.com',
    id: '7f9acd34-3955-412f-9c47-9fb5cebefc72',
    name: 'Hermiston Group',
    status: Models::Shared::AdsAdStatus::ARCHIVED,
    updated_at: DateTime.iso8601('2024-06-06T08:19:09.255Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ads.patch_ads_ad(request: req)

unless res.ads_ad.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `request`                                                                             | [Models::Operations::PatchAdsAdRequest](../../models/operations/patchadsadrequest.md) | :heavy_check_mark:                                                                    | The request object to use for the request.                                            |

### Response

**[T.nilable(Models::Operations::PatchAdsAdResponse)](../../models/operations/patchadsadresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_ads_campaign

Update a campaign

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAdsCampaign" method="patch" path="/ads/{connection_id}/campaign/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAdsCampaignRequest.new(
  ads_campaign: Models::Shared::AdsCampaign.new(
    budget_amount: 8_743.179_536_121_897,
    budget_period: Models::Shared::BudgetPeriod::MONTHLY,
    category: 'CREDIT',
    created_at: DateTime.iso8601('2022-05-21T08:51:41.868Z'),
    currency: 'USD',
    effective_status: Models::Shared::EffectiveStatus::NOT_ELIGIBLE,
    end_at: DateTime.iso8601('2025-05-11T10:13:16.729Z'),
    id: '9d5b5933-d96e-4219-abbd-af2e7056899b',
    labels: [
      'comedo',
    ],
    name: 'Emard Inc',
    start_at: DateTime.iso8601('2022-07-20T07:36:39.674Z'),
    status: Models::Shared::AdsCampaignStatus::PROCESSING_FAILED,
    targeting: Models::Shared::PropertyAdsCampaignTargeting.new(),
    total_spend_amount: 2_349.8_642_875_347_286,
    updated_at: DateTime.iso8601('2025-12-08T01:10:49.785Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ads.patch_ads_campaign(request: req)

unless res.ads_campaign.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::PatchAdsCampaignRequest](../../models/operations/patchadscampaignrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::PatchAdsCampaignResponse)](../../models/operations/patchadscampaignresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_ads_creative

Update a creative

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAdsCreative" method="patch" path="/ads/{connection_id}/creative/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAdsCreativeRequest.new(
  ads_creative: Models::Shared::AdsCreative.new(
    created_at: DateTime.iso8601('2020-02-17T11:24:51.093Z'),
    id: 'cd134e56-1298-4651-a885-4a59998f4b93',
    labels: [
      'coma',
      'accedo',
      'termes',
    ],
    name: 'Brekke, Bradtke and Robel',
    status: Models::Shared::AdsCreativeStatus::PAUSED,
    updated_at: DateTime.iso8601('2021-06-21T15:50:31.764Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ads.patch_ads_creative(request: req)

unless res.ads_creative.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::PatchAdsCreativeRequest](../../models/operations/patchadscreativerequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::PatchAdsCreativeResponse)](../../models/operations/patchadscreativeresponse.md)**

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

res = s.ads.patch_ads_group(request: req)

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

## patch_ads_insertionorder

Update an insertionorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAdsInsertionorder" method="patch" path="/ads/{connection_id}/insertionorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAdsInsertionorderRequest.new(
  ads_insertionorder: Models::Shared::AdsInsertionorder.new(
    created_at: DateTime.iso8601('2021-04-10T06:57:36.611Z'),
    id: 'eed344b4-d35f-4921-aacc-f4c71a23697c',
    name: 'Kunde, Smith and Reinger',
    status: Models::Shared::AdsInsertionorderStatus::UNSPECIFIED,
    updated_at: DateTime.iso8601('2021-04-28T13:11:26.450Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ads.patch_ads_insertionorder(request: req)

unless res.ads_insertionorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::PatchAdsInsertionorderRequest](../../models/operations/patchadsinsertionorderrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::PatchAdsInsertionorderResponse)](../../models/operations/patchadsinsertionorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_ads_organization

Update an organization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAdsOrganization" method="patch" path="/ads/{connection_id}/organization/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAdsOrganizationRequest.new(
  ads_organization: Models::Shared::AdsOrganization.new(
    account_number: 'LQUJx8zQBW',
    created_at: DateTime.iso8601('2020-07-23T21:47:11.440Z'),
    currency: 'USD',
    id: '342b0c9f-6f03-4da3-8936-b68c6b4ad0c0',
    managers: [
      Models::Shared::AdsManager.new(
        id: 'e4fd87df-9f8b-4fa0-a77b-b7d18669e350',
        name: 'Parker, Leannon and Gibson',
      ),
    ],
    name: 'Ankunding Inc',
    status: Models::Shared::AdsOrganizationStatus::PROCESSING,
    timezone: 'Europe/Chisinau',
    updated_at: DateTime.iso8601('2026-03-01T20:43:52.701Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ads.patch_ads_organization(request: req)

unless res.ads_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::PatchAdsOrganizationRequest](../../models/operations/patchadsorganizationrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::PatchAdsOrganizationResponse)](../../models/operations/patchadsorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_ads_ad

Remove an ad

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAdsAd" method="delete" path="/ads/{connection_id}/ad/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ads.remove_ads_ad(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Ad         |

### Response

**[T.nilable(Models::Operations::RemoveAdsAdResponse)](../../models/operations/removeadsadresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_ads_campaign

Remove a campaign

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAdsCampaign" method="delete" path="/ads/{connection_id}/campaign/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ads.remove_ads_campaign(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveAdsCampaignResponse)](../../models/operations/removeadscampaignresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_ads_creative

Remove a creative

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAdsCreative" method="delete" path="/ads/{connection_id}/creative/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ads.remove_ads_creative(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Creative   |

### Response

**[T.nilable(Models::Operations::RemoveAdsCreativeResponse)](../../models/operations/removeadscreativeresponse.md)**

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

res = s.ads.remove_ads_group(connection_id: '<id>', id: '<id>')

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

## remove_ads_insertionorder

Remove an insertionorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAdsInsertionorder" method="delete" path="/ads/{connection_id}/insertionorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ads.remove_ads_insertionorder(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                | Type                     | Required                 | Description              |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ |
| `connection_id`          | *::String*               | :heavy_check_mark:       | ID of the connection     |
| `id`                     | *::String*               | :heavy_check_mark:       | ID of the Insertionorder |

### Response

**[T.nilable(Models::Operations::RemoveAdsInsertionorderResponse)](../../models/operations/removeadsinsertionorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_ads_organization

Remove an organization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAdsOrganization" method="delete" path="/ads/{connection_id}/organization/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.ads.remove_ads_organization(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `connection_id`        | *::String*             | :heavy_check_mark:     | ID of the connection   |
| `id`                   | *::String*             | :heavy_check_mark:     | ID of the Organization |

### Response

**[T.nilable(Models::Operations::RemoveAdsOrganizationResponse)](../../models/operations/removeadsorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_ads_ad

Update an ad

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAdsAd" method="put" path="/ads/{connection_id}/ad/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAdsAdRequest.new(
  ads_ad: Models::Shared::AdsAd.new(
    ad_copy: 'Ascisco tolero caute sapiente. Valens unde comedo cursus crinis nobis thema. Cohaero nisi ullam tum unde ultio vilicus auditor capio.',
    ad_type: Models::Shared::AdType::SOCIAL,
    advertiser_name: 'Robel, Nader and Rau',
    created_at: DateTime.iso8601('2022-11-08T03:38:20.978Z'),
    creative_asset_url: 'https://picsum.photos/seed/LwOzrpr9/948/2793',
    description: 'Accedo vespillo carpo dolor decet stillicidium comptus tenuis.',
    final_url: 'https://improbable-sanity.com',
    id: '7f9acd34-3955-412f-9c47-9fb5cebefc72',
    name: 'Hermiston Group',
    status: Models::Shared::AdsAdStatus::ARCHIVED,
    updated_at: DateTime.iso8601('2024-06-06T08:19:09.255Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ads.update_ads_ad(request: req)

unless res.ads_ad.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Models::Operations::UpdateAdsAdRequest](../../models/operations/updateadsadrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |

### Response

**[T.nilable(Models::Operations::UpdateAdsAdResponse)](../../models/operations/updateadsadresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_ads_campaign

Update a campaign

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAdsCampaign" method="put" path="/ads/{connection_id}/campaign/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAdsCampaignRequest.new(
  ads_campaign: Models::Shared::AdsCampaign.new(
    budget_amount: 8_743.179_536_121_897,
    budget_period: Models::Shared::BudgetPeriod::MONTHLY,
    category: 'CREDIT',
    created_at: DateTime.iso8601('2022-05-21T08:51:41.868Z'),
    currency: 'USD',
    effective_status: Models::Shared::EffectiveStatus::NOT_ELIGIBLE,
    end_at: DateTime.iso8601('2025-05-11T10:13:16.729Z'),
    id: '9d5b5933-d96e-4219-abbd-af2e7056899b',
    labels: [
      'comedo',
    ],
    name: 'Emard Inc',
    start_at: DateTime.iso8601('2022-07-20T07:36:39.674Z'),
    status: Models::Shared::AdsCampaignStatus::PROCESSING_FAILED,
    targeting: Models::Shared::PropertyAdsCampaignTargeting.new(),
    total_spend_amount: 2_349.8_642_875_347_286,
    updated_at: DateTime.iso8601('2025-12-08T01:10:49.785Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ads.update_ads_campaign(request: req)

unless res.ads_campaign.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::UpdateAdsCampaignRequest](../../models/operations/updateadscampaignrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::UpdateAdsCampaignResponse)](../../models/operations/updateadscampaignresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_ads_creative

Update a creative

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAdsCreative" method="put" path="/ads/{connection_id}/creative/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAdsCreativeRequest.new(
  ads_creative: Models::Shared::AdsCreative.new(
    created_at: DateTime.iso8601('2020-02-17T11:24:51.093Z'),
    id: 'cd134e56-1298-4651-a885-4a59998f4b93',
    labels: [
      'coma',
      'accedo',
      'termes',
    ],
    name: 'Brekke, Bradtke and Robel',
    status: Models::Shared::AdsCreativeStatus::PAUSED,
    updated_at: DateTime.iso8601('2021-06-21T15:50:31.764Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ads.update_ads_creative(request: req)

unless res.ads_creative.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::UpdateAdsCreativeRequest](../../models/operations/updateadscreativerequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::UpdateAdsCreativeResponse)](../../models/operations/updateadscreativeresponse.md)**

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

res = s.ads.update_ads_group(request: req)

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

## update_ads_insertionorder

Update an insertionorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAdsInsertionorder" method="put" path="/ads/{connection_id}/insertionorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAdsInsertionorderRequest.new(
  ads_insertionorder: Models::Shared::AdsInsertionorder.new(
    created_at: DateTime.iso8601('2021-04-10T06:57:36.611Z'),
    id: 'eed344b4-d35f-4921-aacc-f4c71a23697c',
    name: 'Kunde, Smith and Reinger',
    status: Models::Shared::AdsInsertionorderStatus::UNSPECIFIED,
    updated_at: DateTime.iso8601('2021-04-28T13:11:26.450Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ads.update_ads_insertionorder(request: req)

unless res.ads_insertionorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::UpdateAdsInsertionorderRequest](../../models/operations/updateadsinsertionorderrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::UpdateAdsInsertionorderResponse)](../../models/operations/updateadsinsertionorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_ads_organization

Update an organization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAdsOrganization" method="put" path="/ads/{connection_id}/organization/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAdsOrganizationRequest.new(
  ads_organization: Models::Shared::AdsOrganization.new(
    account_number: 'LQUJx8zQBW',
    created_at: DateTime.iso8601('2020-07-23T21:47:11.440Z'),
    currency: 'USD',
    id: '342b0c9f-6f03-4da3-8936-b68c6b4ad0c0',
    managers: [
      Models::Shared::AdsManager.new(
        id: 'e4fd87df-9f8b-4fa0-a77b-b7d18669e350',
        name: 'Parker, Leannon and Gibson',
      ),
    ],
    name: 'Ankunding Inc',
    status: Models::Shared::AdsOrganizationStatus::PROCESSING,
    timezone: 'Europe/Chisinau',
    updated_at: DateTime.iso8601('2026-03-01T20:43:52.701Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ads.update_ads_organization(request: req)

unless res.ads_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::UpdateAdsOrganizationRequest](../../models/operations/updateadsorganizationrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::UpdateAdsOrganizationResponse)](../../models/operations/updateadsorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |