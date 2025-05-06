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

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.message.create_messaging_message(messaging_message=Models::Shared::MessagingMessage.new(), connection_id="<id>", fields_=[
  "<value>",
], raw="<value>")

if ! res.messaging_message.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `messaging_message`                                                                                                                              | [Models::Shared::MessagingMessage](../../models/shared/messagingmessage.md)                                                                      | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<*::String*>                                                                                                                             | :heavy_minus_sign:                                                                                                                               | Comma-delimited fields to return                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateMessagingMessageResponse)](../../models/operations/createmessagingmessageresponse.md)**



## get_messaging_message

Retrieve a message

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.message.get_messaging_message(connection_id="<id>", id="<id>", fields_=[
  "<value>",
], raw="<value>")

if ! res.messaging_message.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Message                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<*::String*>                                                                                                                             | :heavy_minus_sign:                                                                                                                               | Comma-delimited fields to return                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetMessagingMessageResponse)](../../models/operations/getmessagingmessageresponse.md)**



## list_messaging_messages

List all messages

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::ListMessagingMessagesRequest.new(
  connection_id: "<id>",
)

res = s.message.list_messaging_messages(req)

if ! res.messaging_messages.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::ListMessagingMessagesRequest](../../models/operations/listmessagingmessagesrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::ListMessagingMessagesResponse)](../../models/operations/listmessagingmessagesresponse.md)**



## patch_messaging_message

Update a message

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::PatchMessagingMessageRequest.new(
  messaging_message: Models::Shared::MessagingMessage.new(),
  connection_id: "<id>",
  id: "<id>",
)

res = s.message.patch_messaging_message(req)

if ! res.messaging_message.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::PatchMessagingMessageRequest](../../models/operations/patchmessagingmessagerequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::PatchMessagingMessageResponse)](../../models/operations/patchmessagingmessageresponse.md)**



## remove_messaging_message

Remove a message

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.message.remove_messaging_message(connection_id="<id>", id="<id>")

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



## update_messaging_message

Update a message

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::UpdateMessagingMessageRequest.new(
  messaging_message: Models::Shared::MessagingMessage.new(),
  connection_id: "<id>",
  id: "<id>",
)

res = s.message.update_messaging_message(req)

if ! res.messaging_message.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::UpdateMessagingMessageRequest](../../models/operations/updatemessagingmessagerequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::UpdateMessagingMessageResponse)](../../models/operations/updatemessagingmessageresponse.md)**

