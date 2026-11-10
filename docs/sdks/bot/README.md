# Bot

## Overview

### Available Operations

* [create_calendar_bot](#create_calendar_bot) - Create a bot
* [get_calendar_bot](#get_calendar_bot) - Retrieve a bot
* [list_calendar_bots](#list_calendar_bots) - List all bots
* [patch_calendar_bot](#patch_calendar_bot) - Update a bot
* [remove_calendar_bot](#remove_calendar_bot) - Remove a bot
* [update_calendar_bot](#update_calendar_bot) - Update a bot

## create_calendar_bot

Creates a CalendarBot. Provide the unified CalendarBot fields in the request body; they are mapped to the provider's API. Returns the created CalendarBot.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCalendarBot" method="post" path="/calendar/{connection_id}/bot" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.bot.create_calendar_bot(calendar_bot: Models::Shared::CalendarBot.new, connection_id: '<id>')

unless res.calendar_bot.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `calendar_bot`                                                                                                                                   | [Models::Shared::CalendarBot](../../models/shared/calendarbot.md)                                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCalendarBotQueryParamFields](../../models/operations/createcalendarbotqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCalendarBotResponse)](../../models/operations/createcalendarbotresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_calendar_bot

Retrieves a single CalendarBot by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCalendarBot" method="get" path="/calendar/{connection_id}/bot/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.bot.get_calendar_bot(connection_id: '<id>', id: '<id>')

unless res.calendar_bot.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Bot                                                                                                                                    |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCalendarBotQueryParamFields](../../models/operations/getcalendarbotqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCalendarBotResponse)](../../models/operations/getcalendarbotresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_calendar_bots

Returns a list of CalendarBots. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCalendarBots" method="get" path="/calendar/{connection_id}/bot" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListCalendarBotsRequest.new(
  connection_id: '<id>'
)
res = s.bot.list_calendar_bots(request: req)

unless res.calendar_bots.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListCalendarBotsRequest](../../models/operations/listcalendarbotsrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListCalendarBotsResponse)](../../models/operations/listcalendarbotsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_calendar_bot

Updates the CalendarBot identified by `id`. Provide the unified CalendarBot fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCalendarBot" method="patch" path="/calendar/{connection_id}/bot/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchCalendarBotRequest.new(
  calendar_bot: Models::Shared::CalendarBot.new,
  connection_id: '<id>',
  id: '<id>'
)
res = s.bot.patch_calendar_bot(request: req)

unless res.calendar_bot.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::PatchCalendarBotRequest](../../models/operations/patchcalendarbotrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::PatchCalendarBotResponse)](../../models/operations/patchcalendarbotresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_calendar_bot

Deletes the CalendarBot identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCalendarBot" method="delete" path="/calendar/{connection_id}/bot/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.bot.remove_calendar_bot(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Bot        |

### Response

**[T.nilable(Models::Operations::RemoveCalendarBotResponse)](../../models/operations/removecalendarbotresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_calendar_bot

Updates the CalendarBot identified by `id`. Provide the unified CalendarBot fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCalendarBot" method="put" path="/calendar/{connection_id}/bot/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateCalendarBotRequest.new(
  calendar_bot: Models::Shared::CalendarBot.new,
  connection_id: '<id>',
  id: '<id>'
)
res = s.bot.update_calendar_bot(request: req)

unless res.calendar_bot.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::UpdateCalendarBotRequest](../../models/operations/updatecalendarbotrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::UpdateCalendarBotResponse)](../../models/operations/updatecalendarbotresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |