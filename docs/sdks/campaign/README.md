# Campaign
(*campaign*)

## Overview

### Available Operations

* [create_ads_campaign](#create_ads_campaign) - Create a campaign
* [create_martech_campaign](#create_martech_campaign) - Create a campaign
* [get_ads_campaign](#get_ads_campaign) - Retrieve a campaign
* [get_martech_campaign](#get_martech_campaign) - Retrieve a campaign
* [list_ads_campaigns](#list_ads_campaigns) - List all campaigns
* [list_martech_campaigns](#list_martech_campaigns) - List all campaigns
* [patch_ads_campaign](#patch_ads_campaign) - Update a campaign
* [patch_martech_campaign](#patch_martech_campaign) - Update a campaign
* [remove_ads_campaign](#remove_ads_campaign) - Remove a campaign
* [remove_martech_campaign](#remove_martech_campaign) - Remove a campaign
* [update_ads_campaign](#update_ads_campaign) - Update a campaign
* [update_martech_campaign](#update_martech_campaign) - Update a campaign

## create_ads_campaign

Creates a AdsCampaign. Provide the unified AdsCampaign fields in the request body; they are mapped to the provider's API. Returns the created AdsCampaign.

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

res = s.campaign.create_ads_campaign(ads_campaign: Models::Shared::AdsCampaign.new(
  budget_amount: 8_743.179_536_121_897,
  budget_period: Models::Shared::BudgetPeriod::MONTHLY,
  category: 'CREDIT',
  created_at: DateTime.iso8601('2022-05-21T08:51:41.868Z'),
  currency: 'USD',
  effective_status: Models::Shared::EffectiveStatus::NOT_ELIGIBLE,
  end_at: DateTime.iso8601('2025-06-07T00:41:05.686Z'),
  id: '9ab34b16-df57-43d0-9291-c4a70fd0eedc',
  labels: [
    'comedo',
  ],
  metadata: [],
  name: 'Emard Inc',
  start_at: DateTime.iso8601('2022-07-21T18:51:10.005Z'),
  status: Models::Shared::AdsCampaignStatus::PROCESSING_FAILED,
  targeting: Models::Shared::PropertyAdsCampaignTargeting.new(),
  total_spend_amount: 2_349.8_642_875_347_286,
  updated_at: DateTime.iso8601('2026-01-08T19:27:49.996Z'),
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

res = s.campaign.create_martech_campaign(marketing_campaign: Models::Shared::MarketingCampaign.new(
  created_at: DateTime.iso8601('2019-05-19T11:18:15.589Z'),
  from_email: 'graham.mertz@gmail.com',
  from_name: 'Graham Mertz',
  id: '48e215b6-b726-4bec-b17e-53936b986e03',
  metadata: [],
  name: 'Consequatur atqui sustineo.',
  preview_text: 'Auctus votum ver umbra corroboro turpis spoliatio tamen strues auxilium benigne tempus error eaque suasoria.',
  reply_to_email: 'graham.mertz@icloud.com',
  send_at: DateTime.iso8601('2024-01-23T21:19:26.708Z'),
  status: Models::Shared::MarketingCampaignStatus::SCHEDULED,
  subject_line: 'Trepide utpote conculco tibi solio supplanto peior tibi.',
  type: 'absplit',
  updated_at: DateTime.iso8601('2022-06-25T19:02:01.032Z'),
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

## get_ads_campaign

Retrieves a single AdsCampaign by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

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

res = s.campaign.get_ads_campaign(connection_id: '<id>', id: '<id>')

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

res = s.campaign.get_martech_campaign(connection_id: '<id>', id: '<id>')

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

## list_ads_campaigns

Returns a list of AdsCampaigns. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

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

res = s.campaign.list_ads_campaigns(request: req)

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

res = s.campaign.list_martech_campaigns(request: req)

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

## patch_ads_campaign

Updates the AdsCampaign identified by `id`. Provide the unified AdsCampaign fields to change in the request body.

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
    end_at: DateTime.iso8601('2025-06-07T00:41:05.796Z'),
    id: '58ac267b-29f7-4ebb-91e1-94fdd23a09cc',
    labels: [
      'comedo',
    ],
    metadata: [],
    name: 'Emard Inc',
    start_at: DateTime.iso8601('2022-07-21T18:51:10.011Z'),
    status: Models::Shared::AdsCampaignStatus::PROCESSING_FAILED,
    targeting: Models::Shared::PropertyAdsCampaignTargeting.new(),
    total_spend_amount: 2_349.8_642_875_347_286,
    updated_at: DateTime.iso8601('2026-01-08T19:27:50.127Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.campaign.patch_ads_campaign(request: req)

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
    id: 'ed3c7f4a-130d-4394-91f5-bb1aca7c6e4a',
    metadata: [],
    name: 'Consequatur atqui sustineo.',
    preview_text: 'Auctus votum ver umbra corroboro turpis spoliatio tamen strues auxilium benigne tempus error eaque suasoria.',
    reply_to_email: 'graham.mertz@icloud.com',
    send_at: DateTime.iso8601('2024-01-23T21:19:26.708Z'),
    status: Models::Shared::MarketingCampaignStatus::SCHEDULED,
    subject_line: 'Trepide utpote conculco tibi solio supplanto peior tibi.',
    type: 'absplit',
    updated_at: DateTime.iso8601('2022-06-25T19:02:01.040Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.campaign.patch_martech_campaign(request: req)

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

## remove_ads_campaign

Deletes the AdsCampaign identified by `id`.

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

res = s.campaign.remove_ads_campaign(connection_id: '<id>', id: '<id>')

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

res = s.campaign.remove_martech_campaign(connection_id: '<id>', id: '<id>')

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

## update_ads_campaign

Updates the AdsCampaign identified by `id`. Provide the unified AdsCampaign fields to change in the request body.

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
    end_at: DateTime.iso8601('2025-06-07T00:41:05.796Z'),
    id: '58ac267b-29f7-4ebb-91e1-94fdd23a09cc',
    labels: [
      'comedo',
    ],
    metadata: [],
    name: 'Emard Inc',
    start_at: DateTime.iso8601('2022-07-21T18:51:10.011Z'),
    status: Models::Shared::AdsCampaignStatus::PROCESSING_FAILED,
    targeting: Models::Shared::PropertyAdsCampaignTargeting.new(),
    total_spend_amount: 2_349.8_642_875_347_286,
    updated_at: DateTime.iso8601('2026-01-08T19:27:50.127Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.campaign.update_ads_campaign(request: req)

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
    id: 'ed3c7f4a-130d-4394-91f5-bb1aca7c6e4a',
    metadata: [],
    name: 'Consequatur atqui sustineo.',
    preview_text: 'Auctus votum ver umbra corroboro turpis spoliatio tamen strues auxilium benigne tempus error eaque suasoria.',
    reply_to_email: 'graham.mertz@icloud.com',
    send_at: DateTime.iso8601('2024-01-23T21:19:26.708Z'),
    status: Models::Shared::MarketingCampaignStatus::SCHEDULED,
    subject_line: 'Trepide utpote conculco tibi solio supplanto peior tibi.',
    type: 'absplit',
    updated_at: DateTime.iso8601('2022-06-25T19:02:01.040Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.campaign.update_martech_campaign(request: req)

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