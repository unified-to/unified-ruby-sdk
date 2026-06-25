# Insertionorder
(*insertionorder*)

## Overview

### Available Operations

* [create_ads_insertionorder2](#create_ads_insertionorder2) - Create an insertionorder
* [get_ads_insertionorder2](#get_ads_insertionorder2) - Retrieve an insertionorder
* [list_ads_insertionorders2](#list_ads_insertionorders2) - List all insertionorders
* [patch_ads_insertionorder2](#patch_ads_insertionorder2) - Update an insertionorder
* [remove_ads_insertionorder2](#remove_ads_insertionorder2) - Remove an insertionorder
* [update_ads_insertionorder2](#update_ads_insertionorder2) - Update an insertionorder

## create_ads_insertionorder2

Create an insertionorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAdsInsertionorder2" method="post" path="/ads/{connection_id}/insertionorder" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.insertionorder.create_ads_insertionorder2(ads_insertionorder: Models::Shared::AdsInsertionorder.new(), connection_id: '<id>')

unless res.ads_insertionorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `ads_insertionorder`                                                                                                                             | [Models::Shared::AdsInsertionorder](../../models/shared/adsinsertionorder.md)                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAdsInsertionorder2QueryParamFields](../../models/operations/createadsinsertionorder2queryparamfields.md)>    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAdsInsertionorder2Response)](../../models/operations/createadsinsertionorder2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_ads_insertionorder2

Retrieve an insertionorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAdsInsertionorder2" method="get" path="/ads/{connection_id}/insertionorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.insertionorder.get_ads_insertionorder2(connection_id: '<id>', id: '<id>')

unless res.ads_insertionorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Insertionorder                                                                                                                         |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAdsInsertionorder2QueryParamFields](../../models/operations/getadsinsertionorder2queryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAdsInsertionorder2Response)](../../models/operations/getadsinsertionorder2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_ads_insertionorders2

List all insertionorders

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAdsInsertionorders2" method="get" path="/ads/{connection_id}/insertionorder" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAdsInsertionorders2Request.new(
  connection_id: '<id>',
)

res = s.insertionorder.list_ads_insertionorders2(request: req)

unless res.ads_insertionorders.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::ListAdsInsertionorders2Request](../../models/operations/listadsinsertionorders2request.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::ListAdsInsertionorders2Response)](../../models/operations/listadsinsertionorders2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_ads_insertionorder2

Update an insertionorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAdsInsertionorder2" method="patch" path="/ads/{connection_id}/insertionorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAdsInsertionorder2Request.new(
  ads_insertionorder: Models::Shared::AdsInsertionorder.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.insertionorder.patch_ads_insertionorder2(request: req)

unless res.ads_insertionorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::PatchAdsInsertionorder2Request](../../models/operations/patchadsinsertionorder2request.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::PatchAdsInsertionorder2Response)](../../models/operations/patchadsinsertionorder2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_ads_insertionorder2

Remove an insertionorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAdsInsertionorder2" method="delete" path="/ads/{connection_id}/insertionorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.insertionorder.remove_ads_insertionorder2(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveAdsInsertionorder2Response)](../../models/operations/removeadsinsertionorder2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_ads_insertionorder2

Update an insertionorder

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAdsInsertionorder2" method="put" path="/ads/{connection_id}/insertionorder/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAdsInsertionorder2Request.new(
  ads_insertionorder: Models::Shared::AdsInsertionorder.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.insertionorder.update_ads_insertionorder2(request: req)

unless res.ads_insertionorder.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::UpdateAdsInsertionorder2Request](../../models/operations/updateadsinsertionorder2request.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::UpdateAdsInsertionorder2Response)](../../models/operations/updateadsinsertionorder2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |