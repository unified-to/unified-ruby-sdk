# CreateUnifiedWebhookRequest


## Fields

| Field                                                                          | Type                                                                           | Required                                                                       | Description                                                                    |
| ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ |
| `webhook`                                                                      | [T.nilable(::UnifiedRubySDK::Shared::Webhook)](../../models/shared/webhook.md) | :heavy_minus_sign:                                                             | A webhook is used to POST new/updated information to your server.              |
| `include_all`                                                                  | *T.nilable(T::Boolean)*                                                        | :heavy_minus_sign:                                                             | When set, all of the existing data will sent back to your server.              |