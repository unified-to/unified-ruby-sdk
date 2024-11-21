# UpdateUnifiedWebhookTriggerResponse


## Fields

| Field                                                                       | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `content_type`                                                              | *::String*                                                                  | :heavy_check_mark:                                                          | HTTP response content type for this operation                               |
| `headers`                                                                   | T::Hash[Symbol, T::Array<*::String*>]                                       | :heavy_check_mark:                                                          | N/A                                                                         |
| `status_code`                                                               | *::Integer*                                                                 | :heavy_check_mark:                                                          | HTTP response status code for this operation                                |
| `raw_response`                                                              | [Faraday::Response](https://www.rubydoc.info/gems/faraday/Faraday/Response) | :heavy_check_mark:                                                          | Raw HTTP response; suitable for custom response parsing                     |