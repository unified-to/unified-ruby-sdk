# Calendar
(*calendar*)

## Overview

### Available Operations

* [create_calendar_calendar](#create_calendar_calendar) - Create a calendar
* [create_calendar_event](#create_calendar_event) - Create an event
* [create_calendar_link](#create_calendar_link) - Create a link
* [get_calendar_calendar](#get_calendar_calendar) - Retrieve a calendar
* [get_calendar_event](#get_calendar_event) - Retrieve an event
* [get_calendar_link](#get_calendar_link) - Retrieve a link
* [get_calendar_recording](#get_calendar_recording) - Retrieve a recording
* [list_calendar_busies](#list_calendar_busies) - List all busies
* [list_calendar_calendars](#list_calendar_calendars) - List all calendars
* [list_calendar_events](#list_calendar_events) - List all events
* [list_calendar_links](#list_calendar_links) - List all links
* [list_calendar_recordings](#list_calendar_recordings) - List all recordings
* [patch_calendar_calendar](#patch_calendar_calendar) - Update a calendar
* [patch_calendar_event](#patch_calendar_event) - Update an event
* [patch_calendar_link](#patch_calendar_link) - Update a link
* [remove_calendar_calendar](#remove_calendar_calendar) - Remove a calendar
* [remove_calendar_event](#remove_calendar_event) - Remove an event
* [remove_calendar_link](#remove_calendar_link) - Remove a link
* [update_calendar_calendar](#update_calendar_calendar) - Update a calendar
* [update_calendar_event](#update_calendar_event) - Update an event
* [update_calendar_link](#update_calendar_link) - Update a link

## create_calendar_calendar

Create a calendar

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.calendar.create_calendar_calendar(calendar_calendar=::UnifiedRubySDK::Shared::CalendarCalendar.new(
  name: "<value>",
), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.calendar_calendar.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `calendar_calendar`                                                                   | [::UnifiedRubySDK::Shared::CalendarCalendar](../../models/shared/calendarcalendar.md) | :heavy_check_mark:                                                                    | N/A                                                                                   |
| `connection_id`                                                                       | *::String*                                                                            | :heavy_check_mark:                                                                    | ID of the connection                                                                  |
| `fields_`                                                                             | T::Array<*::String*>                                                                  | :heavy_minus_sign:                                                                    | Comma-delimited fields to return                                                      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateCalendarCalendarResponse)](../../models/operations/createcalendarcalendarresponse.md)**



## create_calendar_event

Create an event

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.calendar.create_calendar_event(calendar_event=::UnifiedRubySDK::Shared::CalendarEvent.new(
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



## create_calendar_link

Create a link

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.calendar.create_calendar_link(calendar_link=::UnifiedRubySDK::Shared::CalendarLink.new(
  url: "https://sturdy-begonia.biz/",
), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.calendar_link.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `calendar_link`                                                               | [::UnifiedRubySDK::Shared::CalendarLink](../../models/shared/calendarlink.md) | :heavy_check_mark:                                                            | N/A                                                                           |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `fields_`                                                                     | T::Array<*::String*>                                                          | :heavy_minus_sign:                                                            | Comma-delimited fields to return                                              |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateCalendarLinkResponse)](../../models/operations/createcalendarlinkresponse.md)**



## get_calendar_calendar

Retrieve a calendar

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.calendar.get_calendar_calendar(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.calendar_calendar.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Calendar               |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetCalendarCalendarResponse)](../../models/operations/getcalendarcalendarresponse.md)**



## get_calendar_event

Retrieve an event

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.calendar.get_calendar_event(connection_id="<id>", id="<id>", fields_=[
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



## get_calendar_link

Retrieve a link

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.calendar.get_calendar_link(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.calendar_link.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Link                   |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetCalendarLinkResponse)](../../models/operations/getcalendarlinkresponse.md)**



## get_calendar_recording

Retrieve a recording

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.calendar.get_calendar_recording(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.calendar_recording.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Recording              |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetCalendarRecordingResponse)](../../models/operations/getcalendarrecordingresponse.md)**



## list_calendar_busies

List all busies

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListCalendarBusiesRequest.new(
  connection_id: "<id>",
)
    
res = s.calendar.list_calendar_busies(req)

if ! res.calendar_busies.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [::UnifiedRubySDK::Operations::ListCalendarBusiesRequest](../../models/operations/listcalendarbusiesrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListCalendarBusiesResponse)](../../models/operations/listcalendarbusiesresponse.md)**



## list_calendar_calendars

List all calendars

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListCalendarCalendarsRequest.new(
  connection_id: "<id>",
)
    
res = s.calendar.list_calendar_calendars(req)

if ! res.calendar_calendars.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [::UnifiedRubySDK::Operations::ListCalendarCalendarsRequest](../../models/operations/listcalendarcalendarsrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListCalendarCalendarsResponse)](../../models/operations/listcalendarcalendarsresponse.md)**



## list_calendar_events

List all events

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListCalendarEventsRequest.new(
  connection_id: "<id>",
)
    
res = s.calendar.list_calendar_events(req)

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



## list_calendar_links

List all links

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListCalendarLinksRequest.new(
  connection_id: "<id>",
)
    
res = s.calendar.list_calendar_links(req)

if ! res.calendar_links.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [::UnifiedRubySDK::Operations::ListCalendarLinksRequest](../../models/operations/listcalendarlinksrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListCalendarLinksResponse)](../../models/operations/listcalendarlinksresponse.md)**



## list_calendar_recordings

List all recordings

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListCalendarRecordingsRequest.new(
  connection_id: "<id>",
)
    
res = s.calendar.list_calendar_recordings(req)

if ! res.calendar_recordings.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::UnifiedRubySDK::Operations::ListCalendarRecordingsRequest](../../models/operations/listcalendarrecordingsrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListCalendarRecordingsResponse)](../../models/operations/listcalendarrecordingsresponse.md)**



## patch_calendar_calendar

Update a calendar

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.calendar.patch_calendar_calendar(calendar_calendar=::UnifiedRubySDK::Shared::CalendarCalendar.new(
  name: "<value>",
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.calendar_calendar.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `calendar_calendar`                                                                   | [::UnifiedRubySDK::Shared::CalendarCalendar](../../models/shared/calendarcalendar.md) | :heavy_check_mark:                                                                    | N/A                                                                                   |
| `connection_id`                                                                       | *::String*                                                                            | :heavy_check_mark:                                                                    | ID of the connection                                                                  |
| `id`                                                                                  | *::String*                                                                            | :heavy_check_mark:                                                                    | ID of the Calendar                                                                    |
| `fields_`                                                                             | T::Array<*::String*>                                                                  | :heavy_minus_sign:                                                                    | Comma-delimited fields to return                                                      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchCalendarCalendarResponse)](../../models/operations/patchcalendarcalendarresponse.md)**



## patch_calendar_event

Update an event

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.calendar.patch_calendar_event(calendar_event=::UnifiedRubySDK::Shared::CalendarEvent.new(
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



## patch_calendar_link

Update a link

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.calendar.patch_calendar_link(calendar_link=::UnifiedRubySDK::Shared::CalendarLink.new(
  url: "https://curly-skyline.biz/",
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.calendar_link.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `calendar_link`                                                               | [::UnifiedRubySDK::Shared::CalendarLink](../../models/shared/calendarlink.md) | :heavy_check_mark:                                                            | N/A                                                                           |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `id`                                                                          | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the Link                                                                |
| `fields_`                                                                     | T::Array<*::String*>                                                          | :heavy_minus_sign:                                                            | Comma-delimited fields to return                                              |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchCalendarLinkResponse)](../../models/operations/patchcalendarlinkresponse.md)**



## remove_calendar_calendar

Remove a calendar

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.calendar.remove_calendar_calendar(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Calendar   |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveCalendarCalendarResponse)](../../models/operations/removecalendarcalendarresponse.md)**



## remove_calendar_event

Remove an event

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.calendar.remove_calendar_event(connection_id="<id>", id="<id>")

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



## remove_calendar_link

Remove a link

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.calendar.remove_calendar_link(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Link       |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveCalendarLinkResponse)](../../models/operations/removecalendarlinkresponse.md)**



## update_calendar_calendar

Update a calendar

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.calendar.update_calendar_calendar(calendar_calendar=::UnifiedRubySDK::Shared::CalendarCalendar.new(
  name: "<value>",
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.calendar_calendar.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `calendar_calendar`                                                                   | [::UnifiedRubySDK::Shared::CalendarCalendar](../../models/shared/calendarcalendar.md) | :heavy_check_mark:                                                                    | N/A                                                                                   |
| `connection_id`                                                                       | *::String*                                                                            | :heavy_check_mark:                                                                    | ID of the connection                                                                  |
| `id`                                                                                  | *::String*                                                                            | :heavy_check_mark:                                                                    | ID of the Calendar                                                                    |
| `fields_`                                                                             | T::Array<*::String*>                                                                  | :heavy_minus_sign:                                                                    | Comma-delimited fields to return                                                      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateCalendarCalendarResponse)](../../models/operations/updatecalendarcalendarresponse.md)**



## update_calendar_event

Update an event

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.calendar.update_calendar_event(calendar_event=::UnifiedRubySDK::Shared::CalendarEvent.new(
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



## update_calendar_link

Update a link

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.calendar.update_calendar_link(calendar_link=::UnifiedRubySDK::Shared::CalendarLink.new(
  url: "https://quiet-coordination.name",
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.calendar_link.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `calendar_link`                                                               | [::UnifiedRubySDK::Shared::CalendarLink](../../models/shared/calendarlink.md) | :heavy_check_mark:                                                            | N/A                                                                           |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `id`                                                                          | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the Link                                                                |
| `fields_`                                                                     | T::Array<*::String*>                                                          | :heavy_minus_sign:                                                            | Comma-delimited fields to return                                              |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateCalendarLinkResponse)](../../models/operations/updatecalendarlinkresponse.md)**

