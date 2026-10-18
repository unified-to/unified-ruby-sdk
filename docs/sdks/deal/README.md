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
  closed_at: DateTime.iso8601('2024-03-09T18:53:25.631Z'),
  closing_at: DateTime.iso8601('2025-08-29T12:34:39.752Z'),
  created_at: DateTime.iso8601('2023-07-04T12:48:48.470Z'),
  currency: 'IQD',
  description: 'Tabula cicuta sophismata comis tepidus sit cavus.',
  id: 'aa95bafb-d207-4e33-9a57-ec15e964f39c',
  metadata: [
    Models::Shared::CrmMetadata.new(
      extra_data: {
        "display_name": 'Custom Property',
      },
      format: Models::Shared::CrmMetadataFormat::TEXT,
      id: '02d268d4-b535-45b3-8e61-53d1ee6b46fa',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'conatus',
    ),
  ],
  name: 'Frozen Silk Chicken',
  pipelines: [
    Models::Shared::CrmReference.new(
      id: 'af5d98e5-2523-476d-b15f-8289cea0caba',
      name: 'trans',
    ),
  ],
  probability: 65.0,
  source: 'cubo',
  stages: [
    Models::Shared::CrmReference.new(
      id: 'ac80d9a0-d774-4ec3-948a-7b37fa056574',
      name: 'tubineus',
    ),
    Models::Shared::CrmReference.new(
      id: 'e26bbeb6-ad9e-4321-831e-8a7cc43e281e',
      name: 'adfectus',
    ),
  ],
  tags: [
    'causa',
    'suus',
  ],
  updated_at: DateTime.iso8601('2024-10-10T16:52:26.088Z'),
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
    closed_at: DateTime.iso8601('2024-03-09T18:53:25.634Z'),
    closing_at: DateTime.iso8601('2025-08-29T12:34:39.763Z'),
    created_at: DateTime.iso8601('2023-07-04T12:48:48.470Z'),
    currency: 'IQD',
    description: 'Tabula cicuta sophismata comis tepidus sit cavus.',
    id: '1081b832-ba28-4007-b398-20b237ceb6c2',
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: 'b33e82e8-3a34-4554-9ad9-0cd39c039032',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'conatus',
      ),
    ],
    name: 'Frozen Silk Chicken',
    pipelines: [
      Models::Shared::CrmReference.new(
        id: '8552803a-a795-4523-af93-d88be97d5bc4',
        name: 'trans',
      ),
    ],
    probability: 65.0,
    source: 'cubo',
    stages: [
      Models::Shared::CrmReference.new(
        id: '3da6dba3-5510-44aa-ab46-f95cc69bcf8b',
        name: 'tubineus',
      ),
      Models::Shared::CrmReference.new(
        id: '41e5f005-b9b8-4ad2-86af-2cefcc22a27f',
        name: 'adfectus',
      ),
    ],
    tags: [
      'causa',
      'suus',
    ],
    updated_at: DateTime.iso8601('2024-10-10T16:52:26.095Z'),
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
    closed_at: DateTime.iso8601('2024-03-09T18:53:25.634Z'),
    closing_at: DateTime.iso8601('2025-08-29T12:34:39.763Z'),
    created_at: DateTime.iso8601('2023-07-04T12:48:48.470Z'),
    currency: 'IQD',
    description: 'Tabula cicuta sophismata comis tepidus sit cavus.',
    id: '1081b832-ba28-4007-b398-20b237ceb6c2',
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: 'b33e82e8-3a34-4554-9ad9-0cd39c039032',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'conatus',
      ),
    ],
    name: 'Frozen Silk Chicken',
    pipelines: [
      Models::Shared::CrmReference.new(
        id: '8552803a-a795-4523-af93-d88be97d5bc4',
        name: 'trans',
      ),
    ],
    probability: 65.0,
    source: 'cubo',
    stages: [
      Models::Shared::CrmReference.new(
        id: '3da6dba3-5510-44aa-ab46-f95cc69bcf8b',
        name: 'tubineus',
      ),
      Models::Shared::CrmReference.new(
        id: '41e5f005-b9b8-4ad2-86af-2cefcc22a27f',
        name: 'adfectus',
      ),
    ],
    tags: [
      'causa',
      'suus',
    ],
    updated_at: DateTime.iso8601('2024-10-10T16:52:26.095Z'),
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