# Deal


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

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreateCrmDealRequest.new(
  path_params=Operations::CreateCrmDealRequest.new(
    connection_id="string",
    crm_deal=Shared::CrmDeal.new(
      amount=1917.45,
      closed_at=DateTime.iso8601('2022-08-27T15:05:01.017Z'),
      created_at=DateTime.iso8601('2022-07-23T03:04:45.267Z'),
      currency="Cuban Peso",
      id="<ID>",
      lost_reason="string",
      name="string",
      pipeline="string",
      probability=1087.81,
      raw=Shared::PropertyCrmDealRaw.new(),
      source="string",
      stage="string",
      tags=.new[
        "string",
      ],
      updated_at=DateTime.iso8601('2022-10-13T05:28:26.663Z'),
      won_reason="string",
    ),
  ),
  crm_deal=Shared::CrmDeal.new(
    amount=9758.69,
    closed_at=DateTime.iso8601('2023-12-27T11:48:25.811Z'),
    created_at=DateTime.iso8601('2023-12-18T06:33:31.162Z'),
    currency="Latvian Lats",
    id="<ID>",
    lost_reason="string",
    name="string",
    pipeline="string",
    probability=5009.11,
    raw=Shared::PropertyCrmDealRaw.new(),
    source="string",
    stage="string",
    tags=.new[
      "string",
    ],
    updated_at=DateTime.iso8601('2023-09-14T17:02:42.959Z'),
    won_reason="string",
  ),
)
    
res = s.deal.create_crm_deal(req)

if ! res.crm_deal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `connection_id`                                                 | *String*                                                        | :heavy_check_mark:                                              | ID of the connection                                            |
| `crm_deal`                                                      | [Shared::CrmDeal](../../models/shared/crmdeal.md)               | :heavy_minus_sign:                                              | A deal represents an opportunity with companies and/or contacts |


### Response

**[T.nilable(Operations::CreateCrmDealResponse)](../../models/operations/createcrmdealresponse.md)**


## get_crm_deal

Retrieve a deal

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetCrmDealRequest.new(
  path_params=Operations::GetCrmDealRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetCrmDealRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.deal.get_crm_deal(req)

if ! res.crm_deal.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Deal                   |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetCrmDealResponse)](../../models/operations/getcrmdealresponse.md)**


## list_crm_deals

List all deals

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListCrmDealsRequest.new(
  path_params=Operations::ListCrmDealsRequest.new(
    company_id="string",
    connection_id="string",
    contact_id="string",
    fields=.new[
      "string",
    ],
    limit=917.49,
    offset=8216.92,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2022-09-03T12:16:34.604Z'),
  ),
  query_params=Operations::ListCrmDealsRequest.new(
    company_id="string",
    connection_id="string",
    contact_id="string",
    fields=.new[
      "string",
    ],
    limit=7102.93,
    offset=1979.81,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2022-05-16T12:08:10.609Z'),
  ),
)
    
res = s.deal.list_crm_deals(req)

if ! res.crm_deals.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `request`                                                                         | [Operations::ListCrmDealsRequest](../../models/operations/listcrmdealsrequest.md) | :heavy_check_mark:                                                                | The request object to use for the request.                                        |


### Response

**[T.nilable(Operations::ListCrmDealsResponse)](../../models/operations/listcrmdealsresponse.md)**


## patch_crm_deal

Update a deal

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::PatchCrmDealRequest.new(
  path_params=Operations::PatchCrmDealRequest.new(
    connection_id="string",
    id="<ID>",
    crm_deal=Shared::CrmDeal.new(
      amount=9874.05,
      closed_at=DateTime.iso8601('2021-07-09T08:48:03.715Z'),
      created_at=DateTime.iso8601('2022-04-30T07:03:46.302Z'),
      currency="Riel",
      id="<ID>",
      lost_reason="string",
      name="string",
      pipeline="string",
      probability=9555.58,
      raw=Shared::PropertyCrmDealRaw.new(),
      source="string",
      stage="string",
      tags=.new[
        "string",
      ],
      updated_at=DateTime.iso8601('2023-02-21T14:41:27.897Z'),
      won_reason="string",
    ),
  ),
  crm_deal=Shared::CrmDeal.new(
    amount=639.27,
    closed_at=DateTime.iso8601('2021-03-27T18:57:29.941Z'),
    created_at=DateTime.iso8601('2022-03-18T14:17:53.089Z'),
    currency="New Taiwan Dollar",
    id="<ID>",
    lost_reason="string",
    name="string",
    pipeline="string",
    probability=3726.77,
    raw=Shared::PropertyCrmDealRaw.new(),
    source="string",
    stage="string",
    tags=.new[
      "string",
    ],
    updated_at=DateTime.iso8601('2022-05-20T20:08:30.204Z'),
    won_reason="string",
  ),
)
    
res = s.deal.patch_crm_deal(req)

if ! res.crm_deal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `connection_id`                                                 | *String*                                                        | :heavy_check_mark:                                              | ID of the connection                                            |
| `id`                                                            | *String*                                                        | :heavy_check_mark:                                              | ID of the Deal                                                  |
| `crm_deal`                                                      | [Shared::CrmDeal](../../models/shared/crmdeal.md)               | :heavy_minus_sign:                                              | A deal represents an opportunity with companies and/or contacts |


### Response

**[T.nilable(Operations::PatchCrmDealResponse)](../../models/operations/patchcrmdealresponse.md)**


## remove_crm_deal

Remove a deal

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveCrmDealRequest.new(
  path_params=Operations::RemoveCrmDealRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.deal.remove_crm_deal(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Deal       |


### Response

**[T.nilable(Operations::RemoveCrmDealResponse)](../../models/operations/removecrmdealresponse.md)**


## update_crm_deal

Update a deal

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::UpdateCrmDealRequest.new(
  path_params=Operations::UpdateCrmDealRequest.new(
    connection_id="string",
    id="<ID>",
    crm_deal=Shared::CrmDeal.new(
      amount=854.3,
      closed_at=DateTime.iso8601('2022-01-13T07:04:58.998Z'),
      created_at=DateTime.iso8601('2021-11-20T16:49:31.989Z'),
      currency="Pound Sterling",
      id="<ID>",
      lost_reason="string",
      name="string",
      pipeline="string",
      probability=2970.01,
      raw=Shared::PropertyCrmDealRaw.new(),
      source="string",
      stage="string",
      tags=.new[
        "string",
      ],
      updated_at=DateTime.iso8601('2022-01-31T15:37:01.475Z'),
      won_reason="string",
    ),
  ),
  crm_deal=Shared::CrmDeal.new(
    amount=4059.95,
    closed_at=DateTime.iso8601('2023-02-16T21:28:03.065Z'),
    created_at=DateTime.iso8601('2021-12-04T07:17:25.283Z'),
    currency="Russian Ruble",
    id="<ID>",
    lost_reason="string",
    name="string",
    pipeline="string",
    probability=6183.88,
    raw=Shared::PropertyCrmDealRaw.new(),
    source="string",
    stage="string",
    tags=.new[
      "string",
    ],
    updated_at=DateTime.iso8601('2023-07-13T20:40:24.523Z'),
    won_reason="string",
  ),
)
    
res = s.deal.update_crm_deal(req)

if ! res.crm_deal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `connection_id`                                                 | *String*                                                        | :heavy_check_mark:                                              | ID of the connection                                            |
| `id`                                                            | *String*                                                        | :heavy_check_mark:                                              | ID of the Deal                                                  |
| `crm_deal`                                                      | [Shared::CrmDeal](../../models/shared/crmdeal.md)               | :heavy_minus_sign:                                              | A deal represents an opportunity with companies and/or contacts |


### Response

**[T.nilable(Operations::UpdateCrmDealResponse)](../../models/operations/updatecrmdealresponse.md)**

