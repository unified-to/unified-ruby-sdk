# Webhook


### Available Operations

* [create_unified_webhook](#create_unified_webhook) - Create webhook subscription
* [get_unified_webhook](#get_unified_webhook) - Retrieve webhook by its ID
* [list_unified_webhooks](#list_unified_webhooks) - Returns all registered webhooks
* [remove_unified_webhook](#remove_unified_webhook) - Remove webhook subscription

## create_unified_webhook

To maintain compatibility with the webhooks specification and Zapier webhooks, only the hook_url field is required in the payload when creating a Webhook.  When updated/new objects are found, the array of objects will be POSTed to the hook_url with the paramater hookId=<hookId>. The data payload received by your server is described at https://docs.unified.to/unified/overview.  The `interval` field can be set as low as 15 minutes for paid accounts, and 60 minutes for free accounts.

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::CreateUnifiedWebhookRequest.new(
  connection_id="string",
  object="string",
  webhook=Shared::Webhook.new(
    event=Shared::Event::CREATED,
    events=[
      Shared::PropertyWebhookEvents::UPDATED,
    ],
    hook_url="string",
    interval=4583.16,
    meta=Shared::PropertyWebhookMeta.new(),
    object_type=Shared::ObjectType::CRM_PIPELINE,
    runs=[
      "string",
    ],
    subscriptions=[
      "string",
    ],
  ),
  events=[
    Operations::Events::UPDATED,
  ],
)
    
res = s.webhook.create_unified_webhook(connection_id="string", object="string", webhook=Shared::Webhook.new(
    event=Shared::Event::CREATED,
    events=[
      Shared::PropertyWebhookEvents::CREATED,
    ],
    hook_url="string",
    interval=9505.78,
    meta=Shared::PropertyWebhookMeta.new(),
    object_type=Shared::ObjectType::UC_CALL,
    runs=[
      "string",
    ],
    subscriptions=[
      "string",
    ],
  ), events=[
    Operations::Events::UPDATED,
  ])

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetUnifiedWebhookRequest.new(
  id="<ID>",
)
    
res = s.webhook.get_unified_webhook(id="string")

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListUnifiedWebhooksRequest.new()
    
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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::RemoveUnifiedWebhookRequest.new(
  id="<ID>",
)
    
res = s.webhook.remove_unified_webhook(id="string")

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

