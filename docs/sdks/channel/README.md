# Channel


### Available Operations

* [get_messaging_channel](#get_messaging_channel) - Retrieve a channel
* [list_messaging_channels](#list_messaging_channels) - List all channels

## get_messaging_channel

Retrieve a channel

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.channel.get_messaging_channel(connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.messaging_channel.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Channel                |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetMessagingChannelResponse)](../../models/operations/getmessagingchannelresponse.md)**


## list_messaging_channels

List all channels

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListMessagingChannelsRequest.new(
  connection_id: "<value>",
)
    
res = s.channel.list_messaging_channels(req)

if ! res.messaging_channels.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [::UnifiedRubySDK::Operations::ListMessagingChannelsRequest](../../models/operations/listmessagingchannelsrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListMessagingChannelsResponse)](../../models/operations/listmessagingchannelsresponse.md)**

