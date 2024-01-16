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


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.deal.create_crm_deal(connection_id="string", crm_deal=Shared::CrmDeal.new(
    raw=Shared::PropertyCrmDealRaw.new(),
    tags=[
      "string",
    ],
  ))

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


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.deal.get_crm_deal(connection_id="string", id="string", fields=[
    "string",
  ])

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


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListCrmDealsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
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


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.deal.patch_crm_deal(connection_id="string", id="string", crm_deal=Shared::CrmDeal.new(
    raw=Shared::PropertyCrmDealRaw.new(),
    tags=[
      "string",
    ],
  ))

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


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.deal.remove_crm_deal(connection_id="string", id="string")

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


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.deal.update_crm_deal(connection_id="string", id="string", crm_deal=Shared::CrmDeal.new(
    raw=Shared::PropertyCrmDealRaw.new(),
    tags=[
      "string",
    ],
  ))

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

