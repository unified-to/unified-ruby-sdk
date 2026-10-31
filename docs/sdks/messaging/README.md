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
  id: 'c37c58a2-7f58-4768-915b-9116c7c81ab1',
  is_active: false,
  is_private: true,
  members: [],
  metadata: [],
  name: 'tego',
  updated_at: DateTime.iso8601('2026-05-30T02:49:26.381Z'),
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
      content_identifier: '22b48da4-51e6-46c7-883a-043685391c43',
      content_type: 'coaegresco',
      download_url: 'https://rotating-advertisement.org',
      filename: 'super',
      message_id: '2d4c8e9d-6973-4ef6-9d17-5eed2119f414',
      size: 327.0,
    ),
  ],
  buttons: [
    Models::Shared::MessagingButton.new(
      id: '03459703-ac81-4839-ad3a-aecf60ca4ba0',
      text: 'comparo',
    ),
  ],
  created_at: DateTime.iso8601('2021-11-26T09:26:33.973Z'),
  destination_members: [],
  has_children: true,
  hidden_members: [],
  id: '2d4c8e9d-6973-4ef6-9d17-5eed2119f414',
  is_unread: false,
  mentioned_members: [],
  message: 'Sum utique aliquid.',
  message_html: 'Articulus tardus tergiversatio.',
  message_markdown: 'Territo uterque tergo curiositas.',
  metadata: [],
  reactions: [],
  subject: 'Cernuus optio cohaero summisse in.',
  updated_at: DateTime.iso8601('2023-07-20T19:18:45.339Z'),
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
    id: '8348a9cd-32f9-45a9-8ba6-0413020911f8',
    is_active: false,
    is_private: true,
    members: [],
    metadata: [],
    name: 'tego',
    updated_at: DateTime.iso8601('2026-05-30T02:49:26.395Z'),
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
    id: 'f8b6dc63-3ac6-43cb-b814-bc1135d5ccb5',
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
        content_identifier: '64ea1511-def0-433e-8d0d-2379f2b6107a',
        content_type: 'coaegresco',
        download_url: 'https://rotating-advertisement.org',
        filename: 'super',
        message_id: 'df11826a-6402-4ef6-85cc-aa1f7fd18ae2',
        size: 327.0,
      ),
    ],
    buttons: [
      Models::Shared::MessagingButton.new(
        id: 'fbc7811c-004c-425e-8a11-78ccd429b91b',
        text: 'comparo',
      ),
    ],
    created_at: DateTime.iso8601('2021-11-26T09:26:33.973Z'),
    destination_members: [],
    has_children: true,
    hidden_members: [],
    id: 'df11826a-6402-4ef6-85cc-aa1f7fd18ae2',
    is_unread: false,
    mentioned_members: [],
    message: 'Sum utique aliquid.',
    message_html: 'Articulus tardus tergiversatio.',
    message_markdown: 'Territo uterque tergo curiositas.',
    metadata: [],
    reactions: [],
    subject: 'Cernuus optio cohaero summisse in.',
    updated_at: DateTime.iso8601('2023-07-20T19:18:45.354Z'),
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
    id: '8348a9cd-32f9-45a9-8ba6-0413020911f8',
    is_active: false,
    is_private: true,
    members: [],
    metadata: [],
    name: 'tego',
    updated_at: DateTime.iso8601('2026-05-30T02:49:26.395Z'),
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
    id: 'f8b6dc63-3ac6-43cb-b814-bc1135d5ccb5',
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
        content_identifier: '64ea1511-def0-433e-8d0d-2379f2b6107a',
        content_type: 'coaegresco',
        download_url: 'https://rotating-advertisement.org',
        filename: 'super',
        message_id: 'df11826a-6402-4ef6-85cc-aa1f7fd18ae2',
        size: 327.0,
      ),
    ],
    buttons: [
      Models::Shared::MessagingButton.new(
        id: 'fbc7811c-004c-425e-8a11-78ccd429b91b',
        text: 'comparo',
      ),
    ],
    created_at: DateTime.iso8601('2021-11-26T09:26:33.973Z'),
    destination_members: [],
    has_children: true,
    hidden_members: [],
    id: 'df11826a-6402-4ef6-85cc-aa1f7fd18ae2',
    is_unread: false,
    mentioned_members: [],
    message: 'Sum utique aliquid.',
    message_html: 'Articulus tardus tergiversatio.',
    message_markdown: 'Territo uterque tergo curiositas.',
    metadata: [],
    reactions: [],
    subject: 'Cernuus optio cohaero summisse in.',
    updated_at: DateTime.iso8601('2023-07-20T19:18:45.354Z'),
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