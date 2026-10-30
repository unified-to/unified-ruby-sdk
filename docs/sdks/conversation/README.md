# Conversation
(*conversation*)

## Overview

### Available Operations

* [create_property_conversation](#create_property_conversation) - Create a conversation
* [get_property_conversation](#get_property_conversation) - Retrieve a conversation
* [list_property_conversations](#list_property_conversations) - List all conversations

## create_property_conversation

Creates a PropertyConversation. Provide the unified PropertyConversation fields in the request body; they are mapped to the provider's API. Returns the created PropertyConversation.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createPropertyConversation" method="post" path="/property/{connection_id}/conversation" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.conversation.create_property_conversation(property_conversation: Models::Shared::PropertyConversation.new(
  created_at: DateTime.iso8601('2022-06-20T00:02:46.530Z'),
  guest_name: 'Evie Okuneva',
  id: 'a68e6575-9f65-4a7c-994e-ee1017f53c0f',
  is_unread: false,
  messages: [
    Models::Shared::PropertyMessage.new(
      attachments: [],
      created_at: DateTime.iso8601('2025-04-22T06:40:01.724Z'),
      id: '9923dc25-b5c4-4e47-8123-b17bd2a023c8',
      is_automatic: false,
      message: 'Vinitor caterva amor sophismata admitto colo tempore aufero torrens.',
      sender_name: 'Evie Okuneva',
      sender_type: Models::Shared::SenderType::GUEST,
    ),
    Models::Shared::PropertyMessage.new(
      attachments: [],
      created_at: DateTime.iso8601('2026-05-05T11:58:32.362Z'),
      id: 'f4a8a696-5cdf-4d0d-878b-9f31cb7fac1a',
      message: 'Aequitas torqueo curiositas cimentarius repellendus auditor degero ademptio adnuo.',
      sender_name: 'Ms. Patti Lynch',
      sender_type: Models::Shared::SenderType::HOST,
    ),
  ],
  metadata: [],
  source: 'Airbnb',
  updated_at: DateTime.iso8601('2026-05-05T11:58:32.362Z'),
), connection_id: '<id>')

unless res.property_conversation.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                         | Type                                                                                                                                              | Required                                                                                                                                          | Description                                                                                                                                       |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| `property_conversation`                                                                                                                           | [Models::Shared::PropertyConversation](../../models/shared/propertyconversation.md)                                                               | :heavy_check_mark:                                                                                                                                | N/A                                                                                                                                               |
| `connection_id`                                                                                                                                   | *::String*                                                                                                                                        | :heavy_check_mark:                                                                                                                                | ID of the connection                                                                                                                              |
| `fields_`                                                                                                                                         | T::Array<[Models::Operations::CreatePropertyConversationQueryParamFields](../../models/operations/createpropertyconversationqueryparamfields.md)> | :heavy_minus_sign:                                                                                                                                | Fields to return                                                                                                                                  |
| `raw`                                                                                                                                             | *T.nilable(::String)*                                                                                                                             | :heavy_minus_sign:                                                                                                                                | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar  |

### Response

**[T.nilable(Models::Operations::CreatePropertyConversationResponse)](../../models/operations/createpropertyconversationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_property_conversation

Retrieves a single PropertyConversation by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPropertyConversation" method="get" path="/property/{connection_id}/conversation/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.conversation.get_property_conversation(connection_id: '<id>', id: '<id>')

unless res.property_conversation.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Conversation                                                                                                                           |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetPropertyConversationQueryParamFields](../../models/operations/getpropertyconversationqueryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetPropertyConversationResponse)](../../models/operations/getpropertyconversationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_property_conversations

Returns a list of PropertyConversations. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPropertyConversations" method="get" path="/property/{connection_id}/conversation" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListPropertyConversationsRequest.new(
  connection_id: '<id>',
)

res = s.conversation.list_property_conversations(request: req)

unless res.property_conversations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::ListPropertyConversationsRequest](../../models/operations/listpropertyconversationsrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::ListPropertyConversationsResponse)](../../models/operations/listpropertyconversationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |