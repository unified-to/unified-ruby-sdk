# Ad
(*ad*)

## Overview

### Available Operations

* [create_ads_ad](#create_ads_ad) - Create an ad
* [get_ads_ad](#get_ads_ad) - Retrieve an ad
* [list_ads_ads](#list_ads_ads) - List all ads
* [patch_ads_ad](#patch_ads_ad) - Update an ad
* [remove_ads_ad](#remove_ads_ad) - Remove an ad
* [update_ads_ad](#update_ads_ad) - Update an ad

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

res = s.ad.create_ads_ad(ads_ad: Models::Shared::AdsAd.new(
  ad_copy: 'Ascisco tolero caute sapiente. Valens unde comedo cursus crinis nobis thema. Cohaero nisi ullam tum unde ultio vilicus auditor capio.',
  ad_type: Models::Shared::AdType::SOCIAL,
  advertiser_name: 'Robel, Nader and Rau',
  created_at: DateTime.iso8601('2022-11-08T03:38:20.978Z'),
  creative_asset_url: 'https://picsum.photos/seed/LwOzrpr9/948/2793',
  description: 'Accedo vespillo carpo dolor decet stillicidium comptus tenuis.',
  final_url: 'https://improbable-sanity.com',
  id: '2872c23a-0cd8-4ba3-9947-487c2582c6a6',
  name: 'Hermiston Group',
  status: Models::Shared::AdsAdStatus::ARCHIVED,
  updated_at: DateTime.iso8601('2024-06-05T02:36:59.066Z'),
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

res = s.ad.get_ads_ad(connection_id: '<id>', id: '<id>')

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

res = s.ad.list_ads_ads(request: req)

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
    id: 'b8fa118b-20c8-4208-8f6a-74d6734fb9f7',
    name: 'Hermiston Group',
    status: Models::Shared::AdsAdStatus::ARCHIVED,
    updated_at: DateTime.iso8601('2024-06-05T02:36:59.073Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ad.patch_ads_ad(request: req)

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

res = s.ad.remove_ads_ad(connection_id: '<id>', id: '<id>')

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
    id: 'b8fa118b-20c8-4208-8f6a-74d6734fb9f7',
    name: 'Hermiston Group',
    status: Models::Shared::AdsAdStatus::ARCHIVED,
    updated_at: DateTime.iso8601('2024-06-05T02:36:59.073Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.ad.update_ads_ad(request: req)

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