# Message
(*message*)

## Overview

### Available Operations

* [create_messaging_message](#create_messaging_message) - Create a message
* [get_messaging_message](#get_messaging_message) - Retrieve a message
* [list_messaging_messages](#list_messaging_messages) - List all messages
* [patch_messaging_message](#patch_messaging_message) - Update a message
* [remove_messaging_message](#remove_messaging_message) - Remove a message
* [update_messaging_message](#update_messaging_message) - Update a message

## create_messaging_message

Creates a MessagingMessage. Provide the unified MessagingMessage fields in the request body; they are mapped to the provider's API. Returns the created MessagingMessage.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createMessagingMessage" method="post" path="/messaging/{connection_id}/message" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.message.create_messaging_message(messaging_message: Models::Shared::MessagingMessage.new(
  attachments: [
    Models::Shared::MessagingAttachment.new(
      content_identifier: 'db9e2dde-3899-4513-8e53-123e7510bcab',
      content_type: 'coaegresco',
      download_url: 'https://rotating-advertisement.org',
      filename: 'super',
      message_id: '35ce2752-4b91-4261-a58a-3ae1db7b335d',
      size: 327.0,
    ),
  ],
  buttons: [
    Models::Shared::MessagingButton.new(
      id: '7501248f-d2b2-4062-9f45-ec8fcb325f05',
      text: 'comparo',
    ),
  ],
  created_at: DateTime.iso8601('2021-11-26T09:26:33.973Z'),
  destination_members: [],
  has_children: true,
  hidden_members: [],
  id: '35ce2752-4b91-4261-a58a-3ae1db7b335d',
  is_unread: false,
  mentioned_members: [],
  message: 'Sum utique aliquid.',
  message_html: 'Articulus tardus tergiversatio.',
  message_markdown: 'Territo uterque tergo curiositas.',
  metadata: [],
  reactions: [],
  subject: 'Cernuus optio cohaero summisse in.',
  updated_at: DateTime.iso8601('2023-07-22T11:03:16.728Z'),
  web_url: 'https://grumpy-kit.net',
), connection_id: '<id>')

unless res.messaging_message.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `messaging_message`                                                                                                                              | [Models::Shared::MessagingMessage](../../models/shared/messagingmessage.md)                                                                      | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateMessagingMessageQueryParamFields](../../models/operations/createmessagingmessagequeryparamfields.md)>        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateMessagingMessageResponse)](../../models/operations/createmessagingmessageresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_messaging_message

Retrieves a single MessagingMessage by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getMessagingMessage" method="get" path="/messaging/{connection_id}/message/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.message.get_messaging_message(connection_id: '<id>', id: '<id>')

unless res.messaging_message.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Message                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetMessagingMessageQueryParamFields](../../models/operations/getmessagingmessagequeryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetMessagingMessageResponse)](../../models/operations/getmessagingmessageresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_messaging_messages

Returns a list of MessagingMessages. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listMessagingMessages" method="get" path="/messaging/{connection_id}/message" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListMessagingMessagesRequest.new(
  connection_id: '<id>',
)

res = s.message.list_messaging_messages(request: req)

unless res.messaging_messages.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::ListMessagingMessagesRequest](../../models/operations/listmessagingmessagesrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::ListMessagingMessagesResponse)](../../models/operations/listmessagingmessagesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_messaging_message

Updates the MessagingMessage identified by `id`. Provide the unified MessagingMessage fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchMessagingMessage" method="patch" path="/messaging/{connection_id}/message/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchMessagingMessageRequest.new(
  messaging_message: Models::Shared::MessagingMessage.new(
    attachments: [
      Models::Shared::MessagingAttachment.new(
        content_identifier: 'c388ab3d-5870-49e3-a5d9-14f7e0505b15',
        content_type: 'coaegresco',
        download_url: 'https://rotating-advertisement.org',
        filename: 'super',
        message_id: '3651e710-f3a1-468a-81a8-e8689db649e8',
        size: 327.0,
      ),
    ],
    buttons: [
      Models::Shared::MessagingButton.new(
        id: 'cd0bb4d9-62b0-492e-9a29-c614a52c525f',
        text: 'comparo',
      ),
    ],
    created_at: DateTime.iso8601('2021-11-26T09:26:33.973Z'),
    destination_members: [],
    has_children: true,
    hidden_members: [],
    id: '3651e710-f3a1-468a-81a8-e8689db649e8',
    is_unread: false,
    mentioned_members: [],
    message: 'Sum utique aliquid.',
    message_html: 'Articulus tardus tergiversatio.',
    message_markdown: 'Territo uterque tergo curiositas.',
    metadata: [],
    reactions: [],
    subject: 'Cernuus optio cohaero summisse in.',
    updated_at: DateTime.iso8601('2023-07-22T11:03:16.753Z'),
    web_url: 'https://grumpy-kit.net',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.message.patch_messaging_message(request: req)

unless res.messaging_message.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::PatchMessagingMessageRequest](../../models/operations/patchmessagingmessagerequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::PatchMessagingMessageResponse)](../../models/operations/patchmessagingmessageresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_messaging_message

Deletes the MessagingMessage identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeMessagingMessage" method="delete" path="/messaging/{connection_id}/message/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.message.remove_messaging_message(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Message    |

### Response

**[T.nilable(Models::Operations::RemoveMessagingMessageResponse)](../../models/operations/removemessagingmessageresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_messaging_message

Updates the MessagingMessage identified by `id`. Provide the unified MessagingMessage fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateMessagingMessage" method="put" path="/messaging/{connection_id}/message/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateMessagingMessageRequest.new(
  messaging_message: Models::Shared::MessagingMessage.new(
    attachments: [
      Models::Shared::MessagingAttachment.new(
        content_identifier: 'c388ab3d-5870-49e3-a5d9-14f7e0505b15',
        content_type: 'coaegresco',
        download_url: 'https://rotating-advertisement.org',
        filename: 'super',
        message_id: '3651e710-f3a1-468a-81a8-e8689db649e8',
        size: 327.0,
      ),
    ],
    buttons: [
      Models::Shared::MessagingButton.new(
        id: 'cd0bb4d9-62b0-492e-9a29-c614a52c525f',
        text: 'comparo',
      ),
    ],
    created_at: DateTime.iso8601('2021-11-26T09:26:33.973Z'),
    destination_members: [],
    has_children: true,
    hidden_members: [],
    id: '3651e710-f3a1-468a-81a8-e8689db649e8',
    is_unread: false,
    mentioned_members: [],
    message: 'Sum utique aliquid.',
    message_html: 'Articulus tardus tergiversatio.',
    message_markdown: 'Territo uterque tergo curiositas.',
    metadata: [],
    reactions: [],
    subject: 'Cernuus optio cohaero summisse in.',
    updated_at: DateTime.iso8601('2023-07-22T11:03:16.753Z'),
    web_url: 'https://grumpy-kit.net',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.message.update_messaging_message(request: req)

unless res.messaging_message.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::UpdateMessagingMessageRequest](../../models/operations/updatemessagingmessagerequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::UpdateMessagingMessageResponse)](../../models/operations/updatemessagingmessageresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |