# Asset
(*asset*)

## Overview

### Available Operations

* [create_ads_asset](#create_ads_asset) - Create an asset
* [get_ads_asset](#get_ads_asset) - Retrieve an asset
* [list_ads_assets](#list_ads_assets) - List all assets

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

res = s.asset.create_ads_asset(ads_asset: Models::Shared::AdsAsset.new(
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

res = s.asset.get_ads_asset(connection_id: '<id>', id: '<id>')

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

res = s.asset.list_ads_assets(request: req)

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