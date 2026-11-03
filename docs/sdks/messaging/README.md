# Messaging
(*messaging*)

## Overview

### Available Operations

* [create_messaging_channel](#create_messaging_channel) - Create a channel
* [create_messaging_message](#create_messaging_message) - Create a message
* [get_messaging_channel](#get_messaging_channel) - Retrieve a channel
* [get_messaging_message](#get_messaging_message) - Retrieve a message
* [list_messaging_channels](#list_messaging_channels) - List all channels
* [list_messaging_messages](#list_messaging_messages) - List all messages
* [patch_messaging_channel](#patch_messaging_channel) - Update a channel
* [patch_messaging_event](#patch_messaging_event) - Update an event
* [patch_messaging_message](#patch_messaging_message) - Update a message
* [remove_messaging_channel](#remove_messaging_channel) - Remove a channel
* [remove_messaging_message](#remove_messaging_message) - Remove a message
* [update_messaging_channel](#update_messaging_channel) - Update a channel
* [update_messaging_event](#update_messaging_event) - Update an event
* [update_messaging_message](#update_messaging_message) - Update a message

## create_messaging_channel

Creates a MessagingChannel. Provide the unified MessagingChannel fields in the request body; they are mapped to the provider's API. Returns the created MessagingChannel.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createMessagingChannel" method="post" path="/messaging/{connection_id}/channel" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.messaging.create_messaging_channel(messaging_channel: Models::Shared::MessagingChannel.new(
  created_at: DateTime.iso8601('2023-10-05T02:09:22.795Z'),
  description: 'Dolores tutis.',
  has_subchannels: true,
  id: 'f1e4d3ad-8ac1-4e62-b5b7-83685968cbcb',
  is_active: false,
  is_private: true,
  members: [],
  metadata: [],
  name: 'tego',
  updated_at: DateTime.iso8601('2026-06-01T18:31:35.204Z'),
  web_url: 'https://svelte-rule.name/',
), connection_id: '<id>')

unless res.messaging_channel.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `messaging_channel`                                                                                                                              | [Models::Shared::MessagingChannel](../../models/shared/messagingchannel.md)                                                                      | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateMessagingChannelQueryParamFields](../../models/operations/createmessagingchannelqueryparamfields.md)>        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateMessagingChannelResponse)](../../models/operations/createmessagingchannelresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

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

res = s.messaging.create_messaging_message(messaging_message: Models::Shared::MessagingMessage.new(
  attachments: [
    Models::Shared::MessagingAttachment.new(
      content_identifier: '1362a8f4-9680-4325-93ff-b333ed77ca74',
      content_type: 'coaegresco',
      download_url: 'https://rotating-advertisement.org',
      filename: 'super',
      message_id: '440f576f-90a2-4ebd-a58e-6c0830393744',
      size: 327.0,
    ),
  ],
  buttons: [
    Models::Shared::MessagingButton.new(
      id: '017b32d2-81de-4574-a173-20ab9aa50df7',
      text: 'comparo',
    ),
  ],
  created_at: DateTime.iso8601('2021-11-26T09:26:33.973Z'),
  destination_members: [],
  has_children: true,
  hidden_members: [],
  id: '440f576f-90a2-4ebd-a58e-6c0830393744',
  is_unread: false,
  mentioned_members: [],
  message: 'Sum utique aliquid.',
  message_html: 'Articulus tardus tergiversatio.',
  message_markdown: 'Territo uterque tergo curiositas.',
  metadata: [],
  reactions: [],
  subject: 'Cernuus optio cohaero summisse in.',
  updated_at: DateTime.iso8601('2023-07-21T19:59:04.273Z'),
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

## get_messaging_channel

Retrieves a single MessagingChannel by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getMessagingChannel" method="get" path="/messaging/{connection_id}/channel/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.messaging.get_messaging_channel(connection_id: '<id>', id: '<id>')

unless res.messaging_channel.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Channel                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetMessagingChannelQueryParamFields](../../models/operations/getmessagingchannelqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetMessagingChannelResponse)](../../models/operations/getmessagingchannelresponse.md)**

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

res = s.messaging.get_messaging_message(connection_id: '<id>', id: '<id>')

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

## list_messaging_channels

Returns a list of MessagingChannels. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listMessagingChannels" method="get" path="/messaging/{connection_id}/channel" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListMessagingChannelsRequest.new(
  connection_id: '<id>',
)

res = s.messaging.list_messaging_channels(request: req)

unless res.messaging_channels.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::ListMessagingChannelsRequest](../../models/operations/listmessagingchannelsrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::ListMessagingChannelsResponse)](../../models/operations/listmessagingchannelsresponse.md)**

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

res = s.messaging.list_messaging_messages(request: req)

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

## patch_messaging_channel

Updates the MessagingChannel identified by `id`. Provide the unified MessagingChannel fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchMessagingChannel" method="patch" path="/messaging/{connection_id}/channel/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchMessagingChannelRequest.new(
  messaging_channel: Models::Shared::MessagingChannel.new(
    created_at: DateTime.iso8601('2023-10-05T02:09:22.795Z'),
    description: 'Dolores tutis.',
    has_subchannels: true,
    id: '61eec5bf-e930-425b-b88a-6e63d9942aae',
    is_active: false,
    is_private: true,
    members: [],
    metadata: [],
    name: 'tego',
    updated_at: DateTime.iso8601('2026-06-01T18:31:35.219Z'),
    web_url: 'https://svelte-rule.name/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.messaging.patch_messaging_channel(request: req)

unless res.messaging_channel.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::PatchMessagingChannelRequest](../../models/operations/patchmessagingchannelrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::PatchMessagingChannelResponse)](../../models/operations/patchmessagingchannelresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_messaging_event

Updates the MessagingEvent identified by `id`. Provide the unified MessagingEvent fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchMessagingEvent" method="patch" path="/messaging/{connection_id}/event/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchMessagingEventRequest.new(
  messaging_event: Models::Shared::MessagingEvent.new(
    channel: Models::Shared::PropertyMessagingEventChannel.new(
      id: '',
      name: '',
    ),
    created_at: DateTime.iso8601('2019-05-30T19:44:46.461Z'),
    id: '728dc992-bea1-4c50-9afe-bc160b07431c',
    is_replacing_original: false,
    metadata: [],
    type: Models::Shared::MessagingEventType::BUTTON_CLICK,
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.messaging.patch_messaging_event(request: req)

unless res.messaging_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::PatchMessagingEventRequest](../../models/operations/patchmessagingeventrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::PatchMessagingEventResponse)](../../models/operations/patchmessagingeventresponse.md)**

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
        content_identifier: 'afd54d26-f0d0-450e-bd81-313d529f5e33',
        content_type: 'coaegresco',
        download_url: 'https://rotating-advertisement.org',
        filename: 'super',
        message_id: '855e18a1-0990-4b30-aefd-6f5afcdea61c',
        size: 327.0,
      ),
    ],
    buttons: [
      Models::Shared::MessagingButton.new(
        id: '5d364dbe-e5c5-4d0d-afb2-fa277d8f7f61',
        text: 'comparo',
      ),
    ],
    created_at: DateTime.iso8601('2021-11-26T09:26:33.973Z'),
    destination_members: [],
    has_children: true,
    hidden_members: [],
    id: '855e18a1-0990-4b30-aefd-6f5afcdea61c',
    is_unread: false,
    mentioned_members: [],
    message: 'Sum utique aliquid.',
    message_html: 'Articulus tardus tergiversatio.',
    message_markdown: 'Territo uterque tergo curiositas.',
    metadata: [],
    reactions: [],
    subject: 'Cernuus optio cohaero summisse in.',
    updated_at: DateTime.iso8601('2023-07-21T19:59:04.287Z'),
    web_url: 'https://grumpy-kit.net',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.messaging.patch_messaging_message(request: req)

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

## remove_messaging_channel

Deletes the MessagingChannel identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeMessagingChannel" method="delete" path="/messaging/{connection_id}/channel/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.messaging.remove_messaging_channel(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Channel    |

### Response

**[T.nilable(Models::Operations::RemoveMessagingChannelResponse)](../../models/operations/removemessagingchannelresponse.md)**

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

res = s.messaging.remove_messaging_message(connection_id: '<id>', id: '<id>')

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

## update_messaging_channel

Updates the MessagingChannel identified by `id`. Provide the unified MessagingChannel fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateMessagingChannel" method="put" path="/messaging/{connection_id}/channel/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateMessagingChannelRequest.new(
  messaging_channel: Models::Shared::MessagingChannel.new(
    created_at: DateTime.iso8601('2023-10-05T02:09:22.795Z'),
    description: 'Dolores tutis.',
    has_subchannels: true,
    id: '61eec5bf-e930-425b-b88a-6e63d9942aae',
    is_active: false,
    is_private: true,
    members: [],
    metadata: [],
    name: 'tego',
    updated_at: DateTime.iso8601('2026-06-01T18:31:35.219Z'),
    web_url: 'https://svelte-rule.name/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.messaging.update_messaging_channel(request: req)

unless res.messaging_channel.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::UpdateMessagingChannelRequest](../../models/operations/updatemessagingchannelrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::UpdateMessagingChannelResponse)](../../models/operations/updatemessagingchannelresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_messaging_event

Updates the MessagingEvent identified by `id`. Provide the unified MessagingEvent fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateMessagingEvent" method="put" path="/messaging/{connection_id}/event/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateMessagingEventRequest.new(
  messaging_event: Models::Shared::MessagingEvent.new(
    channel: Models::Shared::PropertyMessagingEventChannel.new(
      id: '',
      name: '',
    ),
    created_at: DateTime.iso8601('2019-05-30T19:44:46.461Z'),
    id: '728dc992-bea1-4c50-9afe-bc160b07431c',
    is_replacing_original: false,
    metadata: [],
    type: Models::Shared::MessagingEventType::BUTTON_CLICK,
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.messaging.update_messaging_event(request: req)

unless res.messaging_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::UpdateMessagingEventRequest](../../models/operations/updatemessagingeventrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::UpdateMessagingEventResponse)](../../models/operations/updatemessagingeventresponse.md)**

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
        content_identifier: 'afd54d26-f0d0-450e-bd81-313d529f5e33',
        content_type: 'coaegresco',
        download_url: 'https://rotating-advertisement.org',
        filename: 'super',
        message_id: '855e18a1-0990-4b30-aefd-6f5afcdea61c',
        size: 327.0,
      ),
    ],
    buttons: [
      Models::Shared::MessagingButton.new(
        id: '5d364dbe-e5c5-4d0d-afb2-fa277d8f7f61',
        text: 'comparo',
      ),
    ],
    created_at: DateTime.iso8601('2021-11-26T09:26:33.973Z'),
    destination_members: [],
    has_children: true,
    hidden_members: [],
    id: '855e18a1-0990-4b30-aefd-6f5afcdea61c',
    is_unread: false,
    mentioned_members: [],
    message: 'Sum utique aliquid.',
    message_html: 'Articulus tardus tergiversatio.',
    message_markdown: 'Territo uterque tergo curiositas.',
    metadata: [],
    reactions: [],
    subject: 'Cernuus optio cohaero summisse in.',
    updated_at: DateTime.iso8601('2023-07-21T19:59:04.287Z'),
    web_url: 'https://grumpy-kit.net',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.messaging.update_messaging_message(request: req)

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