# Event
(*event*)

## Overview

### Available Operations

* [create_calendar_event](#create_calendar_event) - Create an event
* [create_crm_event](#create_crm_event) - Create an event
* [get_calendar_event](#get_calendar_event) - Retrieve an event
* [get_crm_event](#get_crm_event) - Retrieve an event
* [list_calendar_events](#list_calendar_events) - List all events
* [list_crm_events](#list_crm_events) - List all events
* [patch_calendar_event](#patch_calendar_event) - Update an event
* [patch_crm_event](#patch_crm_event) - Update an event
* [remove_calendar_event](#remove_calendar_event) - Remove an event
* [remove_crm_event](#remove_crm_event) - Remove an event
* [update_calendar_event](#update_calendar_event) - Update an event
* [update_crm_event](#update_crm_event) - Update an event

## create_calendar_event

Create an event

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.event.create_calendar_event(calendar_event=::UnifiedRubySDK::Shared::CalendarEvent.new(
  end_at: "<value>",
  start_at: "<value>",
  subject: "<value>",
), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.calendar_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                       | Type                                                                            | Required                                                                        | Description                                                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| `calendar_event`                                                                | [::UnifiedRubySDK::Shared::CalendarEvent](../../models/shared/calendarevent.md) | :heavy_check_mark:                                                              | N/A                                                                             |
| `connection_id`                                                                 | *::String*                                                                      | :heavy_check_mark:                                                              | ID of the connection                                                            |
| `fields_`                                                                       | T::Array<*::String*>                                                            | :heavy_minus_sign:                                                              | Comma-delimited fields to return                                                |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateCalendarEventResponse)](../../models/operations/createcalendareventresponse.md)**



## create_crm_event

Create an event

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.event.create_crm_event(crm_event=::UnifiedRubySDK::Shared::CrmEvent.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.crm_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `crm_event`                                                                                                     | [::UnifiedRubySDK::Shared::CrmEvent](../../models/shared/crmevent.md)                                           | :heavy_check_mark:                                                                                              | An event represents an event, activity, or engagement and is always associated with a deal, contact, or company |
| `connection_id`                                                                                                 | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the connection                                                                                            |
| `fields_`                                                                                                       | T::Array<*::String*>                                                                                            | :heavy_minus_sign:                                                                                              | Comma-delimited fields to return                                                                                |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateCrmEventResponse)](../../models/operations/createcrmeventresponse.md)**



## get_calendar_event

Retrieve an event

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.event.get_calendar_event(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.calendar_event.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Event                  |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetCalendarEventResponse)](../../models/operations/getcalendareventresponse.md)**



## get_crm_event

Retrieve an event

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.event.get_crm_event(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.crm_event.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Event                  |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetCrmEventResponse)](../../models/operations/getcrmeventresponse.md)**



## list_calendar_events

List all events

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListCalendarEventsRequest.new(
  connection_id: "<id>",
)

res = s.event.list_calendar_events(req)

if ! res.calendar_events.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [::UnifiedRubySDK::Operations::ListCalendarEventsRequest](../../models/operations/listcalendareventsrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListCalendarEventsResponse)](../../models/operations/listcalendareventsresponse.md)**



## list_crm_events

List all events

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListCrmEventsRequest.new(
  connection_id: "<id>",
)

res = s.event.list_crm_events(req)

if ! res.crm_events.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [::UnifiedRubySDK::Operations::ListCrmEventsRequest](../../models/operations/listcrmeventsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListCrmEventsResponse)](../../models/operations/listcrmeventsresponse.md)**



## patch_calendar_event

Update an event

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.event.patch_calendar_event(calendar_event=::UnifiedRubySDK::Shared::CalendarEvent.new(
  end_at: "<value>",
  start_at: "<value>",
  subject: "<value>",
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.calendar_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                       | Type                                                                            | Required                                                                        | Description                                                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| `calendar_event`                                                                | [::UnifiedRubySDK::Shared::CalendarEvent](../../models/shared/calendarevent.md) | :heavy_check_mark:                                                              | N/A                                                                             |
| `connection_id`                                                                 | *::String*                                                                      | :heavy_check_mark:                                                              | ID of the connection                                                            |
| `id`                                                                            | *::String*                                                                      | :heavy_check_mark:                                                              | ID of the Event                                                                 |
| `fields_`                                                                       | T::Array<*::String*>                                                            | :heavy_minus_sign:                                                              | Comma-delimited fields to return                                                |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchCalendarEventResponse)](../../models/operations/patchcalendareventresponse.md)**



## patch_crm_event

Update an event

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.event.patch_crm_event(crm_event=::UnifiedRubySDK::Shared::CrmEvent.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.crm_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `crm_event`                                                                                                     | [::UnifiedRubySDK::Shared::CrmEvent](../../models/shared/crmevent.md)                                           | :heavy_check_mark:                                                                                              | An event represents an event, activity, or engagement and is always associated with a deal, contact, or company |
| `connection_id`                                                                                                 | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the connection                                                                                            |
| `id`                                                                                                            | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the Event                                                                                                 |
| `fields_`                                                                                                       | T::Array<*::String*>                                                                                            | :heavy_minus_sign:                                                                                              | Comma-delimited fields to return                                                                                |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchCrmEventResponse)](../../models/operations/patchcrmeventresponse.md)**



## remove_calendar_event

Remove an event

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.event.remove_calendar_event(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Event      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveCalendarEventResponse)](../../models/operations/removecalendareventresponse.md)**



## remove_crm_event

Remove an event

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.event.remove_crm_event(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Event      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveCrmEventResponse)](../../models/operations/removecrmeventresponse.md)**



## update_calendar_event

Update an event

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.event.update_calendar_event(calendar_event=::UnifiedRubySDK::Shared::CalendarEvent.new(
  end_at: "<value>",
  start_at: "<value>",
  subject: "<value>",
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.calendar_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                       | Type                                                                            | Required                                                                        | Description                                                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| `calendar_event`                                                                | [::UnifiedRubySDK::Shared::CalendarEvent](../../models/shared/calendarevent.md) | :heavy_check_mark:                                                              | N/A                                                                             |
| `connection_id`                                                                 | *::String*                                                                      | :heavy_check_mark:                                                              | ID of the connection                                                            |
| `id`                                                                            | *::String*                                                                      | :heavy_check_mark:                                                              | ID of the Event                                                                 |
| `fields_`                                                                       | T::Array<*::String*>                                                            | :heavy_minus_sign:                                                              | Comma-delimited fields to return                                                |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateCalendarEventResponse)](../../models/operations/updatecalendareventresponse.md)**



## update_crm_event

Update an event

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.event.update_crm_event(crm_event=::UnifiedRubySDK::Shared::CrmEvent.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.crm_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `crm_event`                                                                                                     | [::UnifiedRubySDK::Shared::CrmEvent](../../models/shared/crmevent.md)                                           | :heavy_check_mark:                                                                                              | An event represents an event, activity, or engagement and is always associated with a deal, contact, or company |
| `connection_id`                                                                                                 | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the connection                                                                                            |
| `id`                                                                                                            | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the Event                                                                                                 |
| `fields_`                                                                                                       | T::Array<*::String*>                                                                                            | :heavy_minus_sign:                                                                                              | Comma-delimited fields to return                                                                                |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateCrmEventResponse)](../../models/operations/updatecrmeventresponse.md)**

