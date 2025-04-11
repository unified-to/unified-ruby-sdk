# CreateUnifiedWebhookRequest


## Fields

| Field                                                             | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `webhook`                                                         | [Models::Shared::Webhook](../../models/shared/webhook.md)         | :heavy_check_mark:                                                | A webhook is used to POST new/updated information to your server. |
| `include_all`                                                     | *T.nilable(T::Boolean)*                                           | :heavy_minus_sign:                                                | When set, all of the existing data will sent back to your server. |