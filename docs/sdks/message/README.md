# Message


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


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.message.create_messaging_message(connection_id="<value>", messaging_message=::UnifiedRubySDK::Shared::MessagingMessage.new(
    author_member: ::UnifiedRubySDK::Shared::PropertyMessagingMessageAuthorMember.new(),
    message: "<value>",
  ))

if ! res.messaging_message.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `connection_id`                                                                       | *::String*                                                                            | :heavy_check_mark:                                                                    | ID of the connection                                                                  |
| `messaging_message`                                                                   | [::UnifiedRubySDK::Shared::MessagingMessage](../../models/shared/messagingmessage.md) | :heavy_minus_sign:                                                                    | N/A                                                                                   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateMessagingMessageResponse)](../../models/operations/createmessagingmessageresponse.md)**


## get_messaging_message

Retrieve a message

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.message.get_messaging_message(connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.messaging_message.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Message                |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetMessagingMessageResponse)](../../models/operations/getmessagingmessageresponse.md)**


## list_messaging_messages

List all messages

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListMessagingMessagesRequest.new(
  connection_id: "<value>",
)
    
res = s.message.list_messaging_messages(req)

if ! res.messaging_messages.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [::UnifiedRubySDK::Operations::ListMessagingMessagesRequest](../../models/operations/listmessagingmessagesrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListMessagingMessagesResponse)](../../models/operations/listmessagingmessagesresponse.md)**


## patch_messaging_message

Update a message

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.message.patch_messaging_message(connection_id="<value>", id="<value>", messaging_message=::UnifiedRubySDK::Shared::MessagingMessage.new(
    author_member: ::UnifiedRubySDK::Shared::PropertyMessagingMessageAuthorMember.new(),
    message: "<value>",
  ))

if ! res.messaging_message.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `connection_id`                                                                       | *::String*                                                                            | :heavy_check_mark:                                                                    | ID of the connection                                                                  |
| `id`                                                                                  | *::String*                                                                            | :heavy_check_mark:                                                                    | ID of the Message                                                                     |
| `messaging_message`                                                                   | [::UnifiedRubySDK::Shared::MessagingMessage](../../models/shared/messagingmessage.md) | :heavy_minus_sign:                                                                    | N/A                                                                                   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchMessagingMessageResponse)](../../models/operations/patchmessagingmessageresponse.md)**


## remove_messaging_message

Remove a message

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.message.remove_messaging_message(connection_id="<value>", id="<value>")

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

**[T.nilable(::UnifiedRubySDK::Operations::RemoveMessagingMessageResponse)](../../models/operations/removemessagingmessageresponse.md)**


## update_messaging_message

Update a message

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.message.update_messaging_message(connection_id="<value>", id="<value>", messaging_message=::UnifiedRubySDK::Shared::MessagingMessage.new(
    author_member: ::UnifiedRubySDK::Shared::PropertyMessagingMessageAuthorMember.new(),
    message: "<value>",
  ))

if ! res.messaging_message.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `connection_id`                                                                       | *::String*                                                                            | :heavy_check_mark:                                                                    | ID of the connection                                                                  |
| `id`                                                                                  | *::String*                                                                            | :heavy_check_mark:                                                                    | ID of the Message                                                                     |
| `messaging_message`                                                                   | [::UnifiedRubySDK::Shared::MessagingMessage](../../models/shared/messagingmessage.md) | :heavy_minus_sign:                                                                    | N/A                                                                                   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateMessagingMessageResponse)](../../models/operations/updatemessagingmessageresponse.md)**

