# CreateUnifiedWebhookRequest


## Fields

| Field                                                                         | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `webhook`                                                                     | [Models::Shared::Webhook](../../models/shared/webhook.md)                     | :heavy_check_mark:                                                            | A webhook is used to POST new/updated information to your server.             |
| `include_all`                                                                 | *T.nilable(T::Boolean)*                                                       | :heavy_minus_sign:                                                            | When true, send existing/historic data. When false, no historic data is sent. |