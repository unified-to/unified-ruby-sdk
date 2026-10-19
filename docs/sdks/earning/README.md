# Earning
(*earning*)

## Overview

### Available Operations

* [create_hris_earning](#create_hris_earning) - Create an earning
* [get_hris_earning](#get_hris_earning) - Retrieve an earning
* [list_hris_earnings](#list_hris_earnings) - List all earnings
* [patch_hris_earning](#patch_hris_earning) - Update an earning
* [remove_hris_earning](#remove_hris_earning) - Remove an earning
* [update_hris_earning](#update_hris_earning) - Update an earning

## create_hris_earning

Create an earning

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisEarning" method="post" path="/hris/{connection_id}/earning" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.earning.create_hris_earning(hris_earning: Models::Shared::HrisEarning.new(
  amount: 4026.0,
  created_at: DateTime.iso8601('2019-01-26T12:44:52.326Z'),
  currency: 'PKR',
  frequency: Models::Shared::HrisEarningFrequency::BIWEEKLY,
  id: '8a9bcf9e-c282-442f-ae7f-de1da1719590',
  notes: 'Truculenter vinum beatae.',
  start_at: DateTime.iso8601('2022-07-24T12:37:00.765Z'),
  status: Models::Shared::HrisEarningStatus::PROCESSED,
  updated_at: DateTime.iso8601('2020-02-08T13:40:12.162Z'),
), connection_id: '<id>')

unless res.hris_earning.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_earning`                                                                                                                                   | [Models::Shared::HrisEarning](../../models/shared/hrisearning.md)                                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHrisEarningQueryParamFields](../../models/operations/createhrisearningqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHrisEarningResponse)](../../models/operations/createhrisearningresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_hris_earning

Retrieve an earning

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisEarning" method="get" path="/hris/{connection_id}/earning/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.earning.get_hris_earning(connection_id: '<id>', id: '<id>')

unless res.hris_earning.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Earning                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisEarningQueryParamFields](../../models/operations/gethrisearningqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisEarningResponse)](../../models/operations/gethrisearningresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_earnings

List all earnings

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisEarnings" method="get" path="/hris/{connection_id}/earning" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisEarningsRequest.new(
  connection_id: '<id>',
)

res = s.earning.list_hris_earnings(request: req)

unless res.hris_earnings.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListHrisEarningsRequest](../../models/operations/listhrisearningsrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListHrisEarningsResponse)](../../models/operations/listhrisearningsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_hris_earning

Update an earning

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHrisEarning" method="patch" path="/hris/{connection_id}/earning/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchHrisEarningRequest.new(
  hris_earning: Models::Shared::HrisEarning.new(
    amount: 4026.0,
    created_at: DateTime.iso8601('2019-01-26T12:44:52.326Z'),
    currency: 'PKR',
    frequency: Models::Shared::HrisEarningFrequency::BIWEEKLY,
    id: '7afc9cf6-1298-48ea-b0db-251219bc941d',
    notes: 'Truculenter vinum beatae.',
    start_at: DateTime.iso8601('2022-07-24T12:37:00.772Z'),
    status: Models::Shared::HrisEarningStatus::PROCESSED,
    updated_at: DateTime.iso8601('2020-02-08T13:40:12.165Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.earning.patch_hris_earning(request: req)

unless res.hris_earning.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::PatchHrisEarningRequest](../../models/operations/patchhrisearningrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::PatchHrisEarningResponse)](../../models/operations/patchhrisearningresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_hris_earning

Remove an earning

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHrisEarning" method="delete" path="/hris/{connection_id}/earning/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.earning.remove_hris_earning(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Earning    |

### Response

**[T.nilable(Models::Operations::RemoveHrisEarningResponse)](../../models/operations/removehrisearningresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_hris_earning

Update an earning

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHrisEarning" method="put" path="/hris/{connection_id}/earning/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateHrisEarningRequest.new(
  hris_earning: Models::Shared::HrisEarning.new(
    amount: 4026.0,
    created_at: DateTime.iso8601('2019-01-26T12:44:52.326Z'),
    currency: 'PKR',
    frequency: Models::Shared::HrisEarningFrequency::BIWEEKLY,
    id: '7afc9cf6-1298-48ea-b0db-251219bc941d',
    notes: 'Truculenter vinum beatae.',
    start_at: DateTime.iso8601('2022-07-24T12:37:00.772Z'),
    status: Models::Shared::HrisEarningStatus::PROCESSED,
    updated_at: DateTime.iso8601('2020-02-08T13:40:12.165Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.earning.update_hris_earning(request: req)

unless res.hris_earning.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::UpdateHrisEarningRequest](../../models/operations/updatehrisearningrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::UpdateHrisEarningResponse)](../../models/operations/updatehrisearningresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |