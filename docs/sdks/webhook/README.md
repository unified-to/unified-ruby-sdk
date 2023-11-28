# Webhook


### Available Operations

* [create_unified_webhook](#create_unified_webhook) - Create webhook subscription
* [get_unified_webhook](#get_unified_webhook) - Retrieve webhook by its ID
* [list_unified_webhooks](#list_unified_webhooks) - Returns all registered webhooks
* [remove_unified_webhook](#remove_unified_webhook) - Remove webhook subscription

## create_unified_webhook

To maintain compatibility with the webhooks specification and Zapier webhooks, only the hook_url field is required in the payload when creating a Webhook.  When updated/new objects are found, the array of objects will be POSTed to the hook_url with the paramater hookId=<hookId>.

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreateUnifiedWebhookRequest.new(
  path_params=Operations::CreateUnifiedWebhookRequest.new(
    connection_id="string",
    object="string",
    webhook=Shared::Webhook.new(
      checked_at=DateTime.iso8601('2022-12-23T11:16:21.687Z'),
      connection_id="string",
      created_at=DateTime.iso8601('2021-01-21T14:22:58.807Z'),
      environment="string",
      events=.new[
        Shared::PropertyWebhookEvents::UPDATED,
      ],
      hook_url="string",
      id="<ID>",
      include_raw=false,
      integration_type="string",
      interval=6142.55,
      object_type=Shared::ObjectType::ACCOUNTING_PAYMENT,
      subscriptions=.new[
        "string",
      ],
      updated_at=DateTime.iso8601('2022-08-09T17:23:28.216Z'),
      workspace_id="string",
    ),
    events=.new[
      Operations::Events::CREATED,
    ],
  ),
  query_params=Operations::CreateUnifiedWebhookRequest.new(
    connection_id="string",
    object="string",
    webhook=Shared::Webhook.new(
      checked_at=DateTime.iso8601('2023-11-07T21:10:47.579Z'),
      connection_id="string",
      created_at=DateTime.iso8601('2023-10-20T23:24:59.213Z'),
      environment="string",
      events=.new[
        Shared::PropertyWebhookEvents::UPDATED,
      ],
      hook_url="string",
      id="<ID>",
      include_raw=false,
      integration_type="string",
      interval=4025.83,
      object_type=Shared::ObjectType::TICKETING_TICKET,
      subscriptions=.new[
        "string",
      ],
      updated_at=DateTime.iso8601('2023-09-14T01:41:43.779Z'),
      workspace_id="string",
    ),
    events=.new[
      Operations::Events::UPDATED,
    ],
  ),
  webhook=Shared::Webhook.new(
    checked_at=DateTime.iso8601('2021-08-29T04:56:01.063Z'),
    connection_id="string",
    created_at=DateTime.iso8601('2021-01-01T09:14:40.792Z'),
    environment="string",
    events=.new[
      Shared::PropertyWebhookEvents::UPDATED,
    ],
    hook_url="string",
    id="<ID>",
    include_raw=false,
    integration_type="string",
    interval=4544.84,
    object_type=Shared::ObjectType::CRM_FILE,
    subscriptions=.new[
      "string",
    ],
    updated_at=DateTime.iso8601('2023-02-22T14:23:57.210Z'),
    workspace_id="string",
  ),
)
    
res = s.webhook.create_unified_webhook(req)

if ! res.webhook.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `connection_id`                                                   | *String*                                                          | :heavy_check_mark:                                                | ID of the connection                                              |
| `object`                                                          | *String*                                                          | :heavy_check_mark:                                                | The object to subscribe to                                        |
| `webhook`                                                         | [Shared::Webhook](../../models/shared/webhook.md)                 | :heavy_minus_sign:                                                | N/A                                                               |
| `events`                                                          | T::Array<[Operations::Events](../../models/operations/events.md)> | :heavy_minus_sign:                                                | Which events to subscribe to.                                     |


### Response

**[T.nilable(Operations::CreateUnifiedWebhookResponse)](../../models/operations/createunifiedwebhookresponse.md)**


## get_unified_webhook

Retrieve webhook by its ID

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetUnifiedWebhookRequest.new(
  path_params=Operations::GetUnifiedWebhookRequest.new(
    id="<ID>",
  ),
)
    
res = s.webhook.get_unified_webhook(req)

if ! res.webhook.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *String*           | :heavy_check_mark: | ID of the Webhook  |


### Response

**[T.nilable(Operations::GetUnifiedWebhookResponse)](../../models/operations/getunifiedwebhookresponse.md)**


## list_unified_webhooks

Returns all registered webhooks

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListUnifiedWebhooksRequest.new(
  query_params=Operations::ListUnifiedWebhooksRequest.new(
    env="string",
    limit=1162.24,
    object="string",
    offset=5094.7,
    order="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-04-20T14:39:47.451Z'),
  ),
)
    
res = s.webhook.list_unified_webhooks(req)

if ! res.webhooks.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Operations::ListUnifiedWebhooksRequest](../../models/operations/listunifiedwebhooksrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |


### Response

**[T.nilable(Operations::ListUnifiedWebhooksResponse)](../../models/operations/listunifiedwebhooksresponse.md)**


## remove_unified_webhook

Remove webhook subscription

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveUnifiedWebhookRequest.new(
  path_params=Operations::RemoveUnifiedWebhookRequest.new(
    id="<ID>",
  ),
)
    
res = s.webhook.remove_unified_webhook(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *String*           | :heavy_check_mark: | ID of the Webhook  |


### Response

**[T.nilable(Operations::RemoveUnifiedWebhookResponse)](../../models/operations/removeunifiedwebhookresponse.md)**

