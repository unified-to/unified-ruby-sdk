# Config
(*config*)

### Available Operations

* [subscribe_to_webhooks](#subscribe_to_webhooks) - Subscribe to webhooks.

## subscribe_to_webhooks

Subscribe to webhooks.

### Example Usage

```ruby
require_relative openapi


s = OpenApiSDK::Speakeasybar.new

   
req = ::.new(
  request=.new[
    Operations::SubscribeToWebhooksRequestBody.new(
      url="https://well-worn-diver.biz",
      webhook=Operations::SubscribeToWebhooksRequestBodyWebhook::STOCK_UPDATE,
    ),
  ],
)
    
res = s.config.subscribe_to_webhooks(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `request`                                                                 | [T::Array[Operations::SubscribeToWebhooksRequestBody]](../../models//.md) | :heavy_check_mark:                                                        | The request object to use for the request.                                |


### Response

**[T.nilable(Operations::SubscribeToWebhooksResponse)](../../models/operations/subscribetowebhooksresponse.md)**

