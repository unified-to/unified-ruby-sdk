# Deal
(*deal*)

## Overview

### Available Operations

* [create_crm_deal](#create_crm_deal) - Create a deal
* [get_crm_deal](#get_crm_deal) - Retrieve a deal
* [list_crm_deals](#list_crm_deals) - List all deals
* [patch_crm_deal](#patch_crm_deal) - Update a deal
* [remove_crm_deal](#remove_crm_deal) - Remove a deal
* [update_crm_deal](#update_crm_deal) - Update a deal

## create_crm_deal

Create a deal

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCrmDeal" method="post" path="/crm/{connection_id}/deal" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.deal.create_crm_deal(crm_deal: Models::Shared::CrmDeal.new(
  amount: 98_162.0,
  closed_at: DateTime.iso8601('2024-03-09T03:26:29.032Z'),
  closing_at: DateTime.iso8601('2025-08-27T11:47:56.328Z'),
  created_at: DateTime.iso8601('2023-07-04T12:48:48.470Z'),
  currency: 'IQD',
  description: 'Tabula cicuta sophismata comis tepidus sit cavus.',
  id: 'd0e6516d-e740-441a-b1e5-62a96d556b06',
  metadata: [
    Models::Shared::CrmMetadata.new(
      extra_data: {
        "display_name": 'Custom Property',
      },
      format: Models::Shared::CrmMetadataFormat::TEXT,
      id: 'cc17c3d9-b5a8-444d-be9e-41a7362d5195',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'conatus',
    ),
  ],
  name: 'Frozen Silk Chicken',
  pipelines: [
    Models::Shared::CrmReference.new(
      id: '09957c61-6e0f-4000-838a-eb3a5a49375b',
      name: 'trans',
    ),
  ],
  probability: 65.0,
  source: 'cubo',
  stages: [
    Models::Shared::CrmReference.new(
      id: '8c78d1be-b2b6-4381-b746-38645559cdee',
      name: 'tubineus',
    ),
    Models::Shared::CrmReference.new(
      id: '2f1b134f-896b-40e7-bb26-61fc53d73e4a',
      name: 'adfectus',
    ),
  ],
  tags: [
    'causa',
    'suus',
  ],
  updated_at: DateTime.iso8601('2024-10-09T12:06:14.658Z'),
  won_reason: 'Usque libero soleo.',
), connection_id: '<id>')

unless res.crm_deal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `crm_deal`                                                                                                                                       | [Models::Shared::CrmDeal](../../models/shared/crmdeal.md)                                                                                        | :heavy_check_mark:                                                                                                                               | A deal represents an opportunity with companies and/or contacts                                                                                  |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCrmDealQueryParamFields](../../models/operations/createcrmdealqueryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCrmDealResponse)](../../models/operations/createcrmdealresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_crm_deal

Retrieve a deal

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCrmDeal" method="get" path="/crm/{connection_id}/deal/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.deal.get_crm_deal(connection_id: '<id>', id: '<id>')

unless res.crm_deal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Deal                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCrmDealQueryParamFields](../../models/operations/getcrmdealqueryparamfields.md)>                                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCrmDealResponse)](../../models/operations/getcrmdealresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_crm_deals

List all deals

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCrmDeals" method="get" path="/crm/{connection_id}/deal" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCrmDealsRequest.new(
  connection_id: '<id>',
)

res = s.deal.list_crm_deals(request: req)

unless res.crm_deals.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::ListCrmDealsRequest](../../models/operations/listcrmdealsrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::ListCrmDealsResponse)](../../models/operations/listcrmdealsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_crm_deal

Update a deal

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCrmDeal" method="patch" path="/crm/{connection_id}/deal/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCrmDealRequest.new(
  crm_deal: Models::Shared::CrmDeal.new(
    amount: 98_162.0,
    closed_at: DateTime.iso8601('2024-03-09T03:26:29.038Z'),
    closing_at: DateTime.iso8601('2025-08-27T11:47:56.345Z'),
    created_at: DateTime.iso8601('2023-07-04T12:48:48.470Z'),
    currency: 'IQD',
    description: 'Tabula cicuta sophismata comis tepidus sit cavus.',
    id: '77009c68-cf6b-4227-b116-f39cdc0d498a',
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: '8682af17-412c-45bb-b8fe-45a14d52107b',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'conatus',
      ),
    ],
    name: 'Frozen Silk Chicken',
    pipelines: [
      Models::Shared::CrmReference.new(
        id: '1de4cd8b-19c2-46ad-937a-1d5a2a07b86b',
        name: 'trans',
      ),
    ],
    probability: 65.0,
    source: 'cubo',
    stages: [
      Models::Shared::CrmReference.new(
        id: '188a6876-8279-4b7b-acf8-f90bc23fdfb9',
        name: 'tubineus',
      ),
      Models::Shared::CrmReference.new(
        id: '755353c7-397c-4dea-befe-4346d2962de7',
        name: 'adfectus',
      ),
    ],
    tags: [
      'causa',
      'suus',
    ],
    updated_at: DateTime.iso8601('2024-10-09T12:06:14.668Z'),
    won_reason: 'Usque libero soleo.',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.deal.patch_crm_deal(request: req)

unless res.crm_deal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::PatchCrmDealRequest](../../models/operations/patchcrmdealrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::PatchCrmDealResponse)](../../models/operations/patchcrmdealresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_crm_deal

Remove a deal

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCrmDeal" method="delete" path="/crm/{connection_id}/deal/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.deal.remove_crm_deal(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Deal       |

### Response

**[T.nilable(Models::Operations::RemoveCrmDealResponse)](../../models/operations/removecrmdealresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_crm_deal

Update a deal

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCrmDeal" method="put" path="/crm/{connection_id}/deal/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCrmDealRequest.new(
  crm_deal: Models::Shared::CrmDeal.new(
    amount: 98_162.0,
    closed_at: DateTime.iso8601('2024-03-09T03:26:29.038Z'),
    closing_at: DateTime.iso8601('2025-08-27T11:47:56.345Z'),
    created_at: DateTime.iso8601('2023-07-04T12:48:48.470Z'),
    currency: 'IQD',
    description: 'Tabula cicuta sophismata comis tepidus sit cavus.',
    id: '77009c68-cf6b-4227-b116-f39cdc0d498a',
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: '8682af17-412c-45bb-b8fe-45a14d52107b',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'conatus',
      ),
    ],
    name: 'Frozen Silk Chicken',
    pipelines: [
      Models::Shared::CrmReference.new(
        id: '1de4cd8b-19c2-46ad-937a-1d5a2a07b86b',
        name: 'trans',
      ),
    ],
    probability: 65.0,
    source: 'cubo',
    stages: [
      Models::Shared::CrmReference.new(
        id: '188a6876-8279-4b7b-acf8-f90bc23fdfb9',
        name: 'tubineus',
      ),
      Models::Shared::CrmReference.new(
        id: '755353c7-397c-4dea-befe-4346d2962de7',
        name: 'adfectus',
      ),
    ],
    tags: [
      'causa',
      'suus',
    ],
    updated_at: DateTime.iso8601('2024-10-09T12:06:14.668Z'),
    won_reason: 'Usque libero soleo.',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.deal.update_crm_deal(request: req)

unless res.crm_deal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::UpdateCrmDealRequest](../../models/operations/updatecrmdealrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::UpdateCrmDealResponse)](../../models/operations/updatecrmdealresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |