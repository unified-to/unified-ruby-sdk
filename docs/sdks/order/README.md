# Order
(*order*)

## Overview

### Available Operations

* [~~create_accounting_order~~](#create_accounting_order) - Create an order :warning: **Deprecated**
* [create_assessment_order](#create_assessment_order) - Create an order
* [~~get_accounting_order~~](#get_accounting_order) - Retrieve an order :warning: **Deprecated**
* [get_assessment_order](#get_assessment_order) - Retrieve an order
* [~~list_accounting_orders~~](#list_accounting_orders) - List all orders :warning: **Deprecated**
* [~~patch_accounting_order~~](#patch_accounting_order) - Update an order :warning: **Deprecated**
* [patch_assessment_order](#patch_assessment_order) - Update an order
* [~~remove_accounting_order~~](#remove_accounting_order) - Remove an order :warning: **Deprecated**
* [~~update_accounting_order~~](#update_accounting_order) - Update an order :warning: **Deprecated**
* [update_assessment_order](#update_assessment_order) - Update an order

## ~~create_accounting_order~~

Creates a AccountingOrder. Provide the unified AccountingOrder fields in the request body; they are mapped to the provider's API. Returns the created AccountingOrder.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccountingOrder" method="post" path="/accounting/{connection_id}/order" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.order.create_accounting_order(accounting_order: Models::Shared::AccountingOrder.new(
  billing_address: Models::Shared::PropertyAccountingOrderBillingAddress.new(
    address1: '7654 Treutel Square',
    city: 'Forrestport',
    country_code: 'US',
    postal_code: '42190-3694',
    region: 'Maine',
    region_code: 'OR',
  ),
  created_at: DateTime.iso8601('2020-11-20T03:46:49.837Z'),
  currency: 'GBP',
  id: '24693723-37be-4974-857c-8c85797d2932',
  lineitems: [],
  metadata: [],
  posted_at: DateTime.iso8601('2020-11-20T03:46:49.837Z'),
  shipping_address: Models::Shared::PropertyAccountingOrderShippingAddress.new(
    address1: '4974 Beatty Corners',
    city: 'Alizeport',
    country_code: 'US',
    postal_code: '56252',
    region: 'Alaska',
    region_code: 'VT',
  ),
  status: Models::Shared::AccountingOrderStatus::AUTHORIZED,
  total_amount: 0.0,
  type: Models::Shared::AccountingOrderType::SALES,
  updated_at: DateTime.iso8601('2022-02-09T07:09:21.999Z'),
), connection_id: '<id>')

unless res.accounting_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `accounting_order`                                                                                                                               | [Models::Shared::AccountingOrder](../../models/shared/accountingorder.md)                                                                        | :heavy_check_mark:                                                                                                                               | @deprecated; use AccountingSalesorder or AccountingPurchaseorder                                                                                 |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAccountingOrderQueryParamFields](../../models/operations/createaccountingorderqueryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAccountingOrderResponse)](../../models/operations/createaccountingorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_assessment_order

Creates a AssessmentOrder. Provide the unified AssessmentOrder fields in the request body; they are mapped to the provider's API. Returns the created AssessmentOrder.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAssessmentOrder" method="post" path="/assessment/{connection_id}/order" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.order.create_assessment_order(assessment_order: Models::Shared::AssessmentOrder.new(
  connection_id: '<id>',
  created_at: DateTime.iso8601('2021-09-18T10:33:57.803Z'),
  id: '3107ae77-044c-422d-a16b-6c24f5e867d5',
  metadata: [],
  parameters: [],
  profile_addresses: [],
  profile_date_of_birth: '1989-07-22T16:18:37.650Z',
  profile_emails: [
    'amy.kris.windler@icloud.com',
  ],
  profile_first_name: 'Amy',
  profile_gender: Models::Shared::ProfileGender::NON_BINARY,
  profile_last_name: 'Kris-Windler',
  profile_name: 'Amy Kris-Windler',
  profile_resume_url: 'https://enchanted-cycle.biz/',
  profile_social_media_urls: [],
  profile_telephones: [
    '(341) 425-5828',
  ],
  reference: 'ab',
  response_attributes: [],
  response_details: [],
  response_download_urls: [],
  response_max_score: 84.0,
  response_score: 82.0,
  response_status: Models::Shared::ResponseStatus::REJECTED,
  response_url: 'https://rowdy-fisherman.biz/',
  status: Models::Shared::AssessmentOrderStatus::REJECTED,
  target_url: 'https://cautious-turret.info',
  updated_at: DateTime.iso8601('2023-01-27T03:21:59.777Z'),
  workspace_id: '<id>',
), connection_id: '<id>')

unless res.assessment_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `assessment_order`                                                                                                                               | [Models::Shared::AssessmentOrder](../../models/shared/assessmentorder.md)                                                                        | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAssessmentOrderQueryParamFields](../../models/operations/createassessmentorderqueryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAssessmentOrderResponse)](../../models/operations/createassessmentorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## ~~get_accounting_order~~

Retrieves a single AccountingOrder by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingOrder" method="get" path="/accounting/{connection_id}/order/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.order.get_accounting_order(connection_id: '<id>', id: '<id>')

unless res.accounting_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Order                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingOrderQueryParamFields](../../models/operations/getaccountingorderqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingOrderResponse)](../../models/operations/getaccountingorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_assessment_order

Retrieves a single AssessmentOrder by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAssessmentOrder" method="get" path="/assessment/{connection_id}/order/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.order.get_assessment_order(connection_id: '<id>', id: '<id>')

unless res.assessment_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Order                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAssessmentOrderQueryParamFields](../../models/operations/getassessmentorderqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAssessmentOrderResponse)](../../models/operations/getassessmentorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## ~~list_accounting_orders~~

Returns a list of AccountingOrders. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingOrders" method="get" path="/accounting/{connection_id}/order" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingOrdersRequest.new(
  connection_id: '<id>',
)

res = s.order.list_accounting_orders(request: req)

unless res.accounting_orders.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListAccountingOrdersRequest](../../models/operations/listaccountingordersrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListAccountingOrdersResponse)](../../models/operations/listaccountingordersresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## ~~patch_accounting_order~~

Updates the AccountingOrder identified by `id`. Provide the unified AccountingOrder fields to change in the request body.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAccountingOrder" method="patch" path="/accounting/{connection_id}/order/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAccountingOrderRequest.new(
  accounting_order: Models::Shared::AccountingOrder.new(
    billing_address: Models::Shared::PropertyAccountingOrderBillingAddress.new(
      address1: '7654 Treutel Square',
      city: 'Forrestport',
      country_code: 'US',
      postal_code: '42190-3694',
      region: 'Maine',
      region_code: 'OR',
    ),
    created_at: DateTime.iso8601('2020-11-20T03:46:49.837Z'),
    currency: 'GBP',
    id: '60820de9-f3e8-43e0-9a55-cf446caba77d',
    lineitems: [],
    metadata: [],
    posted_at: DateTime.iso8601('2020-11-20T03:46:49.837Z'),
    shipping_address: Models::Shared::PropertyAccountingOrderShippingAddress.new(
      address1: '4974 Beatty Corners',
      city: 'Alizeport',
      country_code: 'US',
      postal_code: '56252',
      region: 'Alaska',
      region_code: 'VT',
    ),
    status: Models::Shared::AccountingOrderStatus::AUTHORIZED,
    total_amount: 0.0,
    type: Models::Shared::AccountingOrderType::SALES,
    updated_at: DateTime.iso8601('2022-02-09T07:09:22.007Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.order.patch_accounting_order(request: req)

unless res.accounting_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::PatchAccountingOrderRequest](../../models/operations/patchaccountingorderrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::PatchAccountingOrderResponse)](../../models/operations/patchaccountingorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_assessment_order

Updates the AssessmentOrder identified by `id`. Provide the unified AssessmentOrder fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAssessmentOrder" method="patch" path="/assessment/{connection_id}/order/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAssessmentOrderRequest.new(
  assessment_order: Models::Shared::AssessmentOrder.new(
    connection_id: '<id>',
    created_at: DateTime.iso8601('2021-09-18T10:33:57.803Z'),
    id: 'd6d4ed3d-6643-44b5-9d79-4a656a22510e',
    metadata: [],
    parameters: [],
    profile_addresses: [],
    profile_date_of_birth: '1989-07-22T16:18:37.650Z',
    profile_emails: [
      'amy.kris.windler@icloud.com',
    ],
    profile_first_name: 'Amy',
    profile_gender: Models::Shared::ProfileGender::NON_BINARY,
    profile_last_name: 'Kris-Windler',
    profile_name: 'Amy Kris-Windler',
    profile_resume_url: 'https://enchanted-cycle.biz/',
    profile_social_media_urls: [],
    profile_telephones: [
      '(341) 425-5828',
    ],
    reference: 'ab',
    response_attributes: [],
    response_details: [],
    response_download_urls: [],
    response_max_score: 84.0,
    response_score: 82.0,
    response_status: Models::Shared::ResponseStatus::REJECTED,
    response_url: 'https://rowdy-fisherman.biz/',
    status: Models::Shared::AssessmentOrderStatus::REJECTED,
    target_url: 'https://cautious-turret.info',
    updated_at: DateTime.iso8601('2023-01-27T03:21:59.792Z'),
    workspace_id: '<id>',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.order.patch_assessment_order(request: req)

unless res.assessment_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::PatchAssessmentOrderRequest](../../models/operations/patchassessmentorderrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::PatchAssessmentOrderResponse)](../../models/operations/patchassessmentorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## ~~remove_accounting_order~~

Deletes the AccountingOrder identified by `id`.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAccountingOrder" method="delete" path="/accounting/{connection_id}/order/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.order.remove_accounting_order(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Order      |

### Response

**[T.nilable(Models::Operations::RemoveAccountingOrderResponse)](../../models/operations/removeaccountingorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## ~~update_accounting_order~~

Updates the AccountingOrder identified by `id`. Provide the unified AccountingOrder fields to change in the request body.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccountingOrder" method="put" path="/accounting/{connection_id}/order/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAccountingOrderRequest.new(
  accounting_order: Models::Shared::AccountingOrder.new(
    billing_address: Models::Shared::PropertyAccountingOrderBillingAddress.new(
      address1: '7654 Treutel Square',
      city: 'Forrestport',
      country_code: 'US',
      postal_code: '42190-3694',
      region: 'Maine',
      region_code: 'OR',
    ),
    created_at: DateTime.iso8601('2020-11-20T03:46:49.837Z'),
    currency: 'GBP',
    id: '60820de9-f3e8-43e0-9a55-cf446caba77d',
    lineitems: [],
    metadata: [],
    posted_at: DateTime.iso8601('2020-11-20T03:46:49.837Z'),
    shipping_address: Models::Shared::PropertyAccountingOrderShippingAddress.new(
      address1: '4974 Beatty Corners',
      city: 'Alizeport',
      country_code: 'US',
      postal_code: '56252',
      region: 'Alaska',
      region_code: 'VT',
    ),
    status: Models::Shared::AccountingOrderStatus::AUTHORIZED,
    total_amount: 0.0,
    type: Models::Shared::AccountingOrderType::SALES,
    updated_at: DateTime.iso8601('2022-02-09T07:09:22.007Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.order.update_accounting_order(request: req)

unless res.accounting_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::UpdateAccountingOrderRequest](../../models/operations/updateaccountingorderrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::UpdateAccountingOrderResponse)](../../models/operations/updateaccountingorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_assessment_order

Updates the AssessmentOrder identified by `id`. Provide the unified AssessmentOrder fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAssessmentOrder" method="put" path="/assessment/{connection_id}/order/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAssessmentOrderRequest.new(
  assessment_order: Models::Shared::AssessmentOrder.new(
    connection_id: '<id>',
    created_at: DateTime.iso8601('2021-09-18T10:33:57.803Z'),
    id: 'd6d4ed3d-6643-44b5-9d79-4a656a22510e',
    metadata: [],
    parameters: [],
    profile_addresses: [],
    profile_date_of_birth: '1989-07-22T16:18:37.650Z',
    profile_emails: [
      'amy.kris.windler@icloud.com',
    ],
    profile_first_name: 'Amy',
    profile_gender: Models::Shared::ProfileGender::NON_BINARY,
    profile_last_name: 'Kris-Windler',
    profile_name: 'Amy Kris-Windler',
    profile_resume_url: 'https://enchanted-cycle.biz/',
    profile_social_media_urls: [],
    profile_telephones: [
      '(341) 425-5828',
    ],
    reference: 'ab',
    response_attributes: [],
    response_details: [],
    response_download_urls: [],
    response_max_score: 84.0,
    response_score: 82.0,
    response_status: Models::Shared::ResponseStatus::REJECTED,
    response_url: 'https://rowdy-fisherman.biz/',
    status: Models::Shared::AssessmentOrderStatus::REJECTED,
    target_url: 'https://cautious-turret.info',
    updated_at: DateTime.iso8601('2023-01-27T03:21:59.792Z'),
    workspace_id: '<id>',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.order.update_assessment_order(request: req)

unless res.assessment_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::UpdateAssessmentOrderRequest](../../models/operations/updateassessmentorderrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::UpdateAssessmentOrderResponse)](../../models/operations/updateassessmentorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |