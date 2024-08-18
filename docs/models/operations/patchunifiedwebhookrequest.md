# PatchUnifiedWebhookRequest


## Fields

| Field                                                                          | Type                                                                           | Required                                                                       | Description                                                                    |
| ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ |
| `id`                                                                           | *::String*                                                                     | :heavy_check_mark:                                                             | ID of the Webhook                                                              |
| `webhook`                                                                      | [T.nilable(::UnifiedRubySDK::Shared::Webhook)](../../models/shared/webhook.md) | :heavy_minus_sign:                                                             | A webhook is used to POST new/updated information to your server.              |