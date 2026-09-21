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

Create a message

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
      content_identifier: '23825071-d25d-418c-a445-3e7257ee8df0',
      content_type: 'coaegresco',
      download_url: 'https://rotating-advertisement.org',
      filename: 'super',
      message_id: 'bf1dc4a5-0de1-4281-a36f-357e768726c6',
      size: 327.0,
    ),
  ],
  buttons: [
    Models::Shared::MessagingButton.new(
      id: '4fe14d23-bf03-4fa2-a408-d70dd5ba545c',
      text: 'denuo',
    ),
  ],
  created_at: DateTime.iso8601('2021-11-26T09:26:33.973Z'),
  destination_members: [],
  has_children: true,
  hidden_members: [],
  id: 'bf1dc4a5-0de1-4281-a36f-357e768726c6',
  is_unread: false,
  mentioned_members: [],
  message: 'Sum utique aliquid.',
  message_html: 'Articulus tardus tergiversatio.',
  message_markdown: 'Territo uterque tergo curiositas.',
  reactions: [],
  reference: '571483f2-d95b-4f06-8b78-d35e7046bb74',
  subject: 'Cernuus optio cohaero summisse in.',
  updated_at: DateTime.iso8601('2023-07-07T11:32:51.267Z'),
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

Retrieve a message

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

List all messages

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

Update a message

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
        content_identifier: 'eb73a22c-eb69-4b62-85e3-6fd5c44529b6',
        content_type: 'coaegresco',
        download_url: 'https://rotating-advertisement.org',
        filename: 'super',
        message_id: 'f1640470-1e2e-414c-96a7-53d8bc6bb5c2',
        size: 327.0,
      ),
    ],
    buttons: [
      Models::Shared::MessagingButton.new(
        id: '5d57e161-10c0-47ea-8b11-3a977358a83c',
        text: 'denuo',
      ),
    ],
    created_at: DateTime.iso8601('2021-11-26T09:26:33.973Z'),
    destination_members: [],
    has_children: true,
    hidden_members: [],
    id: 'f1640470-1e2e-414c-96a7-53d8bc6bb5c2',
    is_unread: false,
    mentioned_members: [],
    message: 'Sum utique aliquid.',
    message_html: 'Articulus tardus tergiversatio.',
    message_markdown: 'Territo uterque tergo curiositas.',
    reactions: [],
    reference: '571483f2-d95b-4f06-8b78-d35e7046bb74',
    subject: 'Cernuus optio cohaero summisse in.',
    updated_at: DateTime.iso8601('2023-07-07T11:32:51.279Z'),
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

Remove a message

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

Update a message

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
        content_identifier: 'eb73a22c-eb69-4b62-85e3-6fd5c44529b6',
        content_type: 'coaegresco',
        download_url: 'https://rotating-advertisement.org',
        filename: 'super',
        message_id: 'f1640470-1e2e-414c-96a7-53d8bc6bb5c2',
        size: 327.0,
      ),
    ],
    buttons: [
      Models::Shared::MessagingButton.new(
        id: '5d57e161-10c0-47ea-8b11-3a977358a83c',
        text: 'denuo',
      ),
    ],
    created_at: DateTime.iso8601('2021-11-26T09:26:33.973Z'),
    destination_members: [],
    has_children: true,
    hidden_members: [],
    id: 'f1640470-1e2e-414c-96a7-53d8bc6bb5c2',
    is_unread: false,
    mentioned_members: [],
    message: 'Sum utique aliquid.',
    message_html: 'Articulus tardus tergiversatio.',
    message_markdown: 'Territo uterque tergo curiositas.',
    reactions: [],
    reference: '571483f2-d95b-4f06-8b78-d35e7046bb74',
    subject: 'Cernuus optio cohaero summisse in.',
    updated_at: DateTime.iso8601('2023-07-07T11:32:51.279Z'),
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