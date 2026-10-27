# Calendar
(*calendar*)

## Overview

### Available Operations

* [create_calendar_calendar](#create_calendar_calendar) - Create a calendar
* [create_calendar_event](#create_calendar_event) - Create an event
* [create_calendar_link](#create_calendar_link) - Create a link
* [create_calendar_webinar](#create_calendar_webinar) - Create a webinar
* [get_calendar_calendar](#get_calendar_calendar) - Retrieve a calendar
* [get_calendar_event](#get_calendar_event) - Retrieve an event
* [get_calendar_link](#get_calendar_link) - Retrieve a link
* [get_calendar_location](#get_calendar_location) - Retrieve a location
* [get_calendar_recording](#get_calendar_recording) - Retrieve a recording
* [get_calendar_room](#get_calendar_room) - Retrieve a room
* [get_calendar_webinar](#get_calendar_webinar) - Retrieve a webinar
* [list_calendar_busies](#list_calendar_busies) - List all busies
* [list_calendar_calendars](#list_calendar_calendars) - List all calendars
* [list_calendar_events](#list_calendar_events) - List all events
* [list_calendar_links](#list_calendar_links) - List all links
* [list_calendar_locations](#list_calendar_locations) - List all locations
* [list_calendar_recordings](#list_calendar_recordings) - List all recordings
* [list_calendar_rooms](#list_calendar_rooms) - List all rooms
* [list_calendar_webinars](#list_calendar_webinars) - List all webinars
* [patch_calendar_calendar](#patch_calendar_calendar) - Update a calendar
* [patch_calendar_event](#patch_calendar_event) - Update an event
* [patch_calendar_link](#patch_calendar_link) - Update a link
* [patch_calendar_webinar](#patch_calendar_webinar) - Update a webinar
* [remove_calendar_calendar](#remove_calendar_calendar) - Remove a calendar
* [remove_calendar_event](#remove_calendar_event) - Remove an event
* [remove_calendar_link](#remove_calendar_link) - Remove a link
* [remove_calendar_webinar](#remove_calendar_webinar) - Remove a webinar
* [update_calendar_calendar](#update_calendar_calendar) - Update a calendar
* [update_calendar_event](#update_calendar_event) - Update an event
* [update_calendar_link](#update_calendar_link) - Update a link
* [update_calendar_webinar](#update_calendar_webinar) - Update a webinar

## create_calendar_calendar

Creates a CalendarCalendar. Provide the unified CalendarCalendar fields in the request body; they are mapped to the provider's API. Returns the created CalendarCalendar.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCalendarCalendar" method="post" path="/calendar/{connection_id}/calendar" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.calendar.create_calendar_calendar(calendar_calendar: Models::Shared::CalendarCalendar.new(
  created_at: DateTime.iso8601('2020-01-09T23:11:34.147Z'),
  description: 'Acer supra vallum suasoria thesaurus.',
  id: 'e52bd483-dfa2-4c65-b5b6-5a852e6bf886',
  is_primary: false,
  metadata: [],
  name: 'Interviews',
  timezone: 'Asia/Kolkata',
  updated_at: DateTime.iso8601('2023-03-30T22:46:35.251Z'),
), connection_id: '<id>')

unless res.calendar_calendar.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `calendar_calendar`                                                                                                                              | [Models::Shared::CalendarCalendar](../../models/shared/calendarcalendar.md)                                                                      | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCalendarCalendarQueryParamFields](../../models/operations/createcalendarcalendarqueryparamfields.md)>        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCalendarCalendarResponse)](../../models/operations/createcalendarcalendarresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_calendar_event

Creates a CalendarEvent. Provide the unified CalendarEvent fields in the request body; they are mapped to the provider's API. Returns the created CalendarEvent.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCalendarEvent" method="post" path="/calendar/{connection_id}/event" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.calendar.create_calendar_event(calendar_event: Models::Shared::CalendarEvent.new(
  attachments: [],
  conference: [],
  created_at: '2019-08-04T14:33:51.814Z',
  end_at: '2020-05-24T22:51:39.673Z',
  has_conference: false,
  id: 'a7dbaca9-320f-4cb3-bcba-e270f5572374',
  is_all_day: false,
  is_free: false,
  is_private: false,
  location: '621 Boehm Prairie',
  metadata: [],
  notes: 'Aegre traho.',
  recurrence: [
    Models::Shared::CalendarEventRecurrence.new(
      count: 4.0,
      end_at: DateTime.iso8601('2025-03-29T06:45:08.739Z'),
      excluded_dates: [
        '2024-02-06T11:23:43.282Z',
      ],
      frequency: Models::Shared::CalendarEventRecurrenceFrequency::YEARLY,
      included_dates: [
        '2023-07-10T06:44:16.402Z',
        '2025-01-28T09:31:06.607Z',
        '2024-04-05T19:30:56.082Z',
      ],
      interval: 7.0,
      on_days: [
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::TU,
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::TH,
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::MO,
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::TH,
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::SA,
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::SA,
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::SA,
      ],
      on_month_days: [
        -3.0,
      ],
      on_months: [
        0.0,
        1.0,
        6.0,
        -10.0,
        9.0,
        0.0,
      ],
      on_weeks: [
        -8.0,
        3.0,
        -7.0,
        51.0,
        -3.0,
        -41.0,
        15.0,
        46.0,
        -1.0,
        46.0,
        42.0,
        11.0,
        12.0,
        -35.0,
        -15.0,
        -3.0,
        -42.0,
        50.0,
        3.0,
        -15.0,
        -10.0,
        6.0,
        -53.0,
        5.0,
        -32.0,
        -22.0,
        43.0,
        -44.0,
        -23.0,
        -21.0,
        -18.0,
        13.0,
        -5.0,
        2.0,
        -49.0,
      ],
      on_year_days: [
        -87.0,
        339.0,
        341.0,
        287.0,
        -17.0,
        319.0,
        -3.0,
        238.0,
        -115.0,
        -116.0,
        283.0,
        -61.0,
        -254.0,
        86.0,
        -163.0,
        5.0,
        -171.0,
        -99.0,
        279.0,
        19.0,
        303.0,
        -106.0,
        90.0,
        109.0,
        -185.0,
        -285.0,
        -83.0,
        -236.0,
        66.0,
        -215.0,
        178.0,
        64.0,
        78.0,
        5.0,
        -251.0,
        -79.0,
        -271.0,
        33.0,
        320.0,
        67.0,
        -84.0,
        -355.0,
        -364.0,
        348.0,
        271.0,
        -304.0,
        -199.0,
        106.0,
        -345.0,
        24.0,
        -89.0,
        -109.0,
        -314.0,
        365.0,
        38.0,
        -42.0,
        123.0,
        56.0,
        -3.0,
        31.0,
        101.0,
        326.0,
        -160.0,
        -101.0,
        -267.0,
        -309.0,
        -363.0,
        125.0,
        -182.0,
        363.0,
        324.0,
        36.0,
        -269.0,
        -79.0,
        -60.0,
        272.0,
        -254.0,
        -160.0,
        -82.0,
        19.0,
        42.0,
        69.0,
        -104.0,
        333.0,
        236.0,
        -287.0,
        296.0,
        261.0,
        241.0,
        348.0,
        -72.0,
        159.0,
        -127.0,
        229.0,
        -158.0,
        190.0,
        -173.0,
        -84.0,
        -96.0,
        176.0,
        339.0,
        -48.0,
        287.0,
        -46.0,
        -101.0,
        246.0,
        -8.0,
        -74.0,
        338.0,
        -51.0,
        -42.0,
        -128.0,
        -169.0,
        -174.0,
        168.0,
        -85.0,
        37.0,
        169.0,
        -105.0,
        231.0,
        -250.0,
        -286.0,
        -7.0,
        -121.0,
        321.0,
        278.0,
        -120.0,
        -96.0,
        360.0,
        337.0,
        -258.0,
        -179.0,
        324.0,
        -204.0,
        327.0,
        15.0,
        365.0,
        191.0,
        -345.0,
        -345.0,
        56.0,
        217.0,
        60.0,
        -264.0,
        -248.0,
        -316.0,
        191.0,
        -189.0,
        -152.0,
        -296.0,
        194.0,
        -42.0,
        -21.0,
        -218.0,
        171.0,
        -15.0,
        301.0,
        37.0,
        -167.0,
        18.0,
        248.0,
        -263.0,
        27.0,
        14.0,
        59.0,
        219.0,
        -284.0,
        221.0,
        -76.0,
        277.0,
        183.0,
        200.0,
        -12.0,
        -28.0,
        -79.0,
        150.0,
        320.0,
        -152.0,
        -15.0,
        -42.0,
        -125.0,
        -4.0,
        269.0,
        290.0,
        52.0,
        320.0,
        344.0,
        13.0,
        -69.0,
        255.0,
        -154.0,
        -281.0,
        158.0,
        25.0,
        240.0,
        -339.0,
        96.0,
        204.0,
        324.0,
        221.0,
        37.0,
        -333.0,
        87.0,
        354.0,
        -365.0,
        -203.0,
        -341.0,
        -79.0,
        -208.0,
        135.0,
        132.0,
        -351.0,
        39.0,
        -87.0,
        -297.0,
        -66.0,
        346.0,
        69.0,
        -177.0,
        235.0,
        295.0,
        -366.0,
        -55.0,
        -297.0,
        -308.0,
        -294.0,
        -208.0,
        141.0,
        267.0,
        64.0,
        100.0,
        -355.0,
        -335.0,
        280.0,
        224.0,
        259.0,
        1.0,
        -146.0,
        48.0,
        335.0,
        363.0,
        308.0,
        -224.0,
        109.0,
        -10.0,
        -89.0,
        -211.0,
        -47.0,
        -130.0,
        341.0,
        -250.0,
        295.0,
        -329.0,
        -205.0,
        231.0,
        247.0,
        -228.0,
        166.0,
        -28.0,
        36.0,
        277.0,
        -115.0,
        100.0,
        2.0,
        81.0,
        -66.0,
        31.0,
        -39.0,
        -319.0,
        -251.0,
        -254.0,
      ],
      timezone: 'Asia/Ho_Chi_Minh',
      week_start: Models::Shared::WeekStart::TU,
    ),
  ],
  start_at: '2020-05-24T13:36:47.788Z',
  status: Models::Shared::CalendarEventStatus::CONFIRMED,
  subject: 'Sunt spargo tepidus bestia vigor credo coadunatio appello.',
  timezone: 'Asia/Bangkok',
  updated_at: '2020-06-30T23:13:48.026Z',
  web_url: 'https://another-pinstripe.com',
), connection_id: '<id>')

unless res.calendar_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `calendar_event`                                                                                                                                 | [Models::Shared::CalendarEvent](../../models/shared/calendarevent.md)                                                                            | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCalendarEventQueryParamFields](../../models/operations/createcalendareventqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCalendarEventResponse)](../../models/operations/createcalendareventresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_calendar_link

Creates a CalendarLink. Provide the unified CalendarLink fields in the request body; they are mapped to the provider's API. Returns the created CalendarLink.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCalendarLink" method="post" path="/calendar/{connection_id}/link" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.calendar.create_calendar_link(calendar_link: Models::Shared::CalendarLink.new(
  created_at: '2023-03-07T13:34:11.959Z',
  description: 'Vitium clibanus laboriosam uxor denuncio.',
  duration: 74.0,
  id: 'cfe539cd-81fd-4305-a701-85719e1fea8b',
  is_active: true,
  metadata: [],
  name: 'Sopor sopor ancilla animus anser dignissimos vito confero utilis.',
  price_amount: 44.0,
  price_currency: 'USD',
  updated_at: '2024-03-17T05:11:18.289Z',
  url: 'https://annual-apricot.info/',
), connection_id: '<id>')

unless res.calendar_link.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `calendar_link`                                                                                                                                  | [Models::Shared::CalendarLink](../../models/shared/calendarlink.md)                                                                              | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCalendarLinkQueryParamFields](../../models/operations/createcalendarlinkqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCalendarLinkResponse)](../../models/operations/createcalendarlinkresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_calendar_webinar

Creates a CalendarWebinar. Provide the unified CalendarWebinar fields in the request body; they are mapped to the provider's API. Returns the created CalendarWebinar.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCalendarWebinar" method="post" path="/calendar/{connection_id}/webinar" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.calendar.create_calendar_webinar(calendar_webinar: Models::Shared::CalendarWebinar.new(
  conference: [],
  created_at: DateTime.iso8601('2022-07-06T11:45:14.631Z'),
  end_at: DateTime.iso8601('2025-11-02T07:04:36.818Z'),
  has_polls: false,
  has_recording: false,
  id: '33137143-d5b5-43f2-aa18-ffb9d96ef459',
  is_auto_approve: false,
  is_enabled: true,
  is_webcast: false,
  join_url: 'https://nutritious-crocodile.com',
  metadata: [],
  notes: 'Curriculum ducimus assentator aspernatur ait.',
  recurrence: [
    Models::Shared::CalendarEventRecurrence.new(
      count: 10.0,
      end_at: DateTime.iso8601('2023-09-02T04:59:07.608Z'),
      excluded_dates: [
        '2025-02-16T14:57:10.692Z',
      ],
      frequency: Models::Shared::CalendarEventRecurrenceFrequency::MONTHLY,
      included_dates: [
        '2024-04-30T18:47:06.193Z',
      ],
      interval: 8.0,
      on_days: [
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::SU,
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::FR,
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::SA,
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::WE,
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::MO,
      ],
      on_month_days: [
        -10.0,
      ],
      on_months: [
        -9.0,
      ],
      on_weeks: [
        10.0,
        30.0,
        -38.0,
        30.0,
        -22.0,
        37.0,
        -12.0,
        27.0,
        2.0,
        15.0,
        26.0,
        18.0,
        -43.0,
        -33.0,
        -27.0,
        38.0,
        28.0,
        47.0,
        -8.0,
        24.0,
        35.0,
        -2.0,
        7.0,
        49.0,
        38.0,
        -41.0,
        46.0,
        -11.0,
        -45.0,
        0.0,
        48.0,
        34.0,
      ],
      on_year_days: [
        345.0,
        -207.0,
        230.0,
        -10.0,
        364.0,
        -256.0,
        -218.0,
        -295.0,
        290.0,
        -250.0,
        -315.0,
        60.0,
        205.0,
        -247.0,
        -318.0,
        -211.0,
        -13.0,
        256.0,
        -200.0,
        -313.0,
        336.0,
        -332.0,
        -90.0,
        287.0,
        -273.0,
        156.0,
        241.0,
        -138.0,
        -363.0,
        -37.0,
        -171.0,
        -62.0,
        -57.0,
        280.0,
        -322.0,
        -79.0,
        -364.0,
        -201.0,
        84.0,
        341.0,
        334.0,
        -75.0,
        332.0,
        207.0,
        337.0,
        -244.0,
        131.0,
        -191.0,
        164.0,
        -235.0,
        285.0,
        -309.0,
        -158.0,
        306.0,
        180.0,
        -130.0,
        -162.0,
        -155.0,
        3.0,
        198.0,
        26.0,
        -366.0,
        -191.0,
        127.0,
        -331.0,
        -11.0,
        -239.0,
        -189.0,
        243.0,
        118.0,
        346.0,
        -174.0,
        -146.0,
        -161.0,
        -330.0,
        327.0,
        192.0,
        310.0,
        316.0,
        313.0,
        -242.0,
        -51.0,
        -264.0,
        -180.0,
        -88.0,
        305.0,
        270.0,
        358.0,
        -173.0,
        -298.0,
        153.0,
        -89.0,
        155.0,
        -45.0,
        248.0,
        -46.0,
        -146.0,
        300.0,
        364.0,
        -335.0,
        356.0,
        -18.0,
        219.0,
        324.0,
        -239.0,
        -106.0,
        -298.0,
        328.0,
        362.0,
        344.0,
        -54.0,
        133.0,
        50.0,
        112.0,
        -212.0,
        -179.0,
        22.0,
        -201.0,
        -62.0,
        -293.0,
        9.0,
        30.0,
        -50.0,
        126.0,
        -72.0,
        264.0,
        28.0,
        -1.0,
        -207.0,
        160.0,
        -168.0,
        3.0,
        -176.0,
        -19.0,
        -157.0,
        349.0,
        100.0,
        -201.0,
        108.0,
        -180.0,
        51.0,
        -73.0,
        366.0,
        74.0,
        -226.0,
        238.0,
        121.0,
        -193.0,
        -125.0,
        -109.0,
        316.0,
        -177.0,
        -307.0,
        31.0,
        -76.0,
        217.0,
        -310.0,
        227.0,
        -360.0,
        71.0,
        255.0,
        -325.0,
        -214.0,
        40.0,
        42.0,
        17.0,
        -241.0,
        -84.0,
        -188.0,
        302.0,
        64.0,
        94.0,
        -362.0,
        23.0,
        166.0,
        85.0,
        71.0,
        -74.0,
        -47.0,
        -119.0,
        98.0,
        40.0,
        158.0,
        -64.0,
        175.0,
        269.0,
        127.0,
        -143.0,
        213.0,
        -196.0,
        121.0,
        81.0,
        -238.0,
        288.0,
        321.0,
        276.0,
        133.0,
        22.0,
        -213.0,
        -157.0,
        -280.0,
        -35.0,
        73.0,
        -194.0,
        65.0,
        -180.0,
        63.0,
        -242.0,
        -117.0,
        148.0,
        157.0,
        -320.0,
        318.0,
        8.0,
        210.0,
        -21.0,
        81.0,
        205.0,
        -258.0,
        -40.0,
        -114.0,
        -253.0,
        -263.0,
        65.0,
        185.0,
        -24.0,
        324.0,
        -172.0,
        25.0,
        260.0,
        211.0,
        342.0,
        -31.0,
        -288.0,
        -159.0,
        -4.0,
        -2.0,
        -107.0,
        -316.0,
        -276.0,
        331.0,
        -114.0,
        -20.0,
        -320.0,
        51.0,
        -176.0,
        -148.0,
        -50.0,
        -201.0,
        -104.0,
        153.0,
        -273.0,
        -189.0,
        67.0,
        209.0,
        149.0,
        49.0,
        -136.0,
        -125.0,
        -169.0,
        -324.0,
        309.0,
        -51.0,
        288.0,
        253.0,
        175.0,
        -146.0,
        171.0,
        -140.0,
        58.0,
        -212.0,
        164.0,
        270.0,
        102.0,
        70.0,
        299.0,
        89.0,
        -280.0,
        252.0,
        -342.0,
        240.0,
        226.0,
        68.0,
        -30.0,
        -232.0,
        -358.0,
        -166.0,
        60.0,
        140.0,
        275.0,
        13.0,
        250.0,
        -328.0,
        -189.0,
        -22.0,
        7.0,
        -235.0,
        -322.0,
        178.0,
        167.0,
        -104.0,
        -61.0,
        282.0,
        -80.0,
        -277.0,
        108.0,
        271.0,
        -237.0,
        297.0,
        -135.0,
        -135.0,
        -323.0,
        342.0,
        -267.0,
        -235.0,
        173.0,
        249.0,
        -288.0,
        257.0,
        139.0,
        -191.0,
        -217.0,
        10.0,
        -117.0,
        -297.0,
        -196.0,
        -206.0,
        341.0,
        166.0,
        181.0,
        129.0,
        -207.0,
        55.0,
        86.0,
      ],
      timezone: 'Africa/Abidjan',
      week_start: Models::Shared::WeekStart::MO,
    ),
    Models::Shared::CalendarEventRecurrence.new(
      count: 3.0,
      end_at: DateTime.iso8601('2022-10-01T00:02:27.303Z'),
      excluded_dates: [
        '2024-09-04T17:33:58.011Z',
        '2024-08-20T03:11:24.034Z',
      ],
      frequency: Models::Shared::CalendarEventRecurrenceFrequency::DAILY,
      included_dates: [
        '2024-03-27T13:06:28.317Z',
        '2026-01-18T06:20:56.147Z',
        '2023-08-15T18:58:36.188Z',
      ],
      interval: 1.0,
      on_days: [
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::WE,
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::SU,
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::MO,
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::FR,
      ],
      on_month_days: [
        -15.0,
      ],
      on_months: [
        5.0,
        12.0,
        3.0,
        12.0,
        8.0,
      ],
      on_weeks: [
        -47.0,
        44.0,
      ],
      on_year_days: [
        -117.0,
        59.0,
        -6.0,
        187.0,
        45.0,
        70.0,
        15.0,
        255.0,
        44.0,
        -2.0,
        25.0,
        -175.0,
        -240.0,
        171.0,
        -294.0,
        19.0,
        38.0,
        -351.0,
        170.0,
        -10.0,
        -269.0,
        18.0,
        -65.0,
        -266.0,
        -31.0,
        328.0,
        -361.0,
        358.0,
        -256.0,
        -4.0,
        -312.0,
        82.0,
        -2.0,
        -75.0,
        -281.0,
        -304.0,
        53.0,
        -295.0,
        366.0,
        322.0,
        -191.0,
        26.0,
        97.0,
        53.0,
        75.0,
        -62.0,
        -109.0,
        66.0,
        177.0,
        -68.0,
        175.0,
        -280.0,
        70.0,
        -238.0,
        109.0,
        -304.0,
        326.0,
        -8.0,
        -71.0,
        -236.0,
        225.0,
        358.0,
        20.0,
        -5.0,
        -102.0,
        -134.0,
        -204.0,
        -116.0,
        -353.0,
        -273.0,
        106.0,
        284.0,
        -137.0,
        -324.0,
        301.0,
        -42.0,
        -229.0,
        271.0,
        -293.0,
        -343.0,
        211.0,
        47.0,
        -254.0,
        -154.0,
        -182.0,
        264.0,
        120.0,
        -11.0,
        -307.0,
        99.0,
        227.0,
        190.0,
        -17.0,
        -77.0,
        -255.0,
        -61.0,
        -249.0,
        -102.0,
        70.0,
        345.0,
        -187.0,
        -308.0,
        194.0,
        221.0,
        268.0,
        -169.0,
        -190.0,
        88.0,
        10.0,
        262.0,
        177.0,
        -314.0,
        -151.0,
        -295.0,
      ],
      timezone: 'Asia/Choibalsan',
      week_start: Models::Shared::WeekStart::TU,
    ),
    Models::Shared::CalendarEventRecurrence.new(
      count: 8.0,
      end_at: DateTime.iso8601('2026-08-01T03:05:19.606Z'),
      excluded_dates: [
        '2023-06-19T21:57:34.080Z',
        '2023-06-08T21:48:24.563Z',
      ],
      frequency: Models::Shared::CalendarEventRecurrenceFrequency::WEEKLY,
      included_dates: [
        '2024-04-04T14:42:29.960Z',
        '2023-08-21T14:55:49.860Z',
        '2024-09-30T00:37:58.099Z',
      ],
      interval: 8.0,
      on_days: [
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::SU,
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::MO,
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::TU,
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::FR,
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::MO,
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::TH,
      ],
      on_month_days: [
        -23.0,
      ],
      on_months: [
        11.0,
        8.0,
        9.0,
        5.0,
        -12.0,
        -7.0,
        -5.0,
        10.0,
        10.0,
        -9.0,
        -10.0,
      ],
      on_weeks: [
        -49.0,
        46.0,
        35.0,
        -26.0,
        2.0,
        15.0,
        15.0,
        -26.0,
        24.0,
        -53.0,
        36.0,
        -43.0,
        51.0,
        -19.0,
        -7.0,
        -12.0,
        28.0,
        27.0,
        35.0,
        12.0,
        -28.0,
        -8.0,
        -4.0,
        -45.0,
      ],
      on_year_days: [
        84.0,
        -251.0,
        71.0,
        181.0,
        -163.0,
        158.0,
        301.0,
        -299.0,
        -184.0,
        -331.0,
        -152.0,
        -129.0,
        -237.0,
        -303.0,
        -24.0,
        126.0,
        -103.0,
        146.0,
        -346.0,
        86.0,
        -296.0,
        -337.0,
        -185.0,
        16.0,
        -270.0,
        -126.0,
        -295.0,
        -231.0,
        356.0,
        -293.0,
        115.0,
        -265.0,
        -293.0,
        -34.0,
        357.0,
        313.0,
        -343.0,
        180.0,
        -22.0,
        -161.0,
        350.0,
        177.0,
        190.0,
        223.0,
        -152.0,
        -360.0,
        -225.0,
        -60.0,
        -35.0,
        353.0,
        117.0,
        -171.0,
        -315.0,
        -321.0,
        -202.0,
        345.0,
        -1.0,
        -148.0,
        -168.0,
        181.0,
        -17.0,
        282.0,
        234.0,
        31.0,
        47.0,
        -236.0,
        366.0,
        -251.0,
        -232.0,
        -308.0,
        76.0,
        -199.0,
        184.0,
        198.0,
        225.0,
        75.0,
        6.0,
        227.0,
        -148.0,
        259.0,
        -146.0,
        49.0,
        -254.0,
        341.0,
        93.0,
        138.0,
        -164.0,
        237.0,
        4.0,
        -287.0,
        161.0,
      ],
      timezone: 'Asia/Krasnoyarsk',
      week_start: Models::Shared::WeekStart::WE,
    ),
  ],
  registrant_password: 'W7J6DhkM',
  require_address: false,
  require_job_title: false,
  start_at: DateTime.iso8601('2025-05-04T11:06:25.082Z'),
  status: Models::Shared::CalendarWebinarStatus::TENTATIVE,
  subject: 'Harum culpa decipio ex cubo ancilla cresco.',
  timezone: 'Europe/Kaliningrad',
  updated_at: DateTime.iso8601('2026-10-06T08:20:20.291Z'),
  web_url: 'https://quiet-permafrost.name',
), connection_id: '<id>')

unless res.calendar_webinar.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `calendar_webinar`                                                                                                                               | [Models::Shared::CalendarWebinar](../../models/shared/calendarwebinar.md)                                                                        | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCalendarWebinarQueryParamFields](../../models/operations/createcalendarwebinarqueryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCalendarWebinarResponse)](../../models/operations/createcalendarwebinarresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_calendar_calendar

Retrieves a single CalendarCalendar by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCalendarCalendar" method="get" path="/calendar/{connection_id}/calendar/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.calendar.get_calendar_calendar(connection_id: '<id>', id: '<id>')

unless res.calendar_calendar.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Calendar                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCalendarCalendarQueryParamFields](../../models/operations/getcalendarcalendarqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCalendarCalendarResponse)](../../models/operations/getcalendarcalendarresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_calendar_event

Retrieves a single CalendarEvent by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCalendarEvent" method="get" path="/calendar/{connection_id}/event/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.calendar.get_calendar_event(connection_id: '<id>', id: '<id>')

unless res.calendar_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Event                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCalendarEventQueryParamFields](../../models/operations/getcalendareventqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCalendarEventResponse)](../../models/operations/getcalendareventresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_calendar_link

Retrieves a single CalendarLink by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCalendarLink" method="get" path="/calendar/{connection_id}/link/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.calendar.get_calendar_link(connection_id: '<id>', id: '<id>')

unless res.calendar_link.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Link                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCalendarLinkQueryParamFields](../../models/operations/getcalendarlinkqueryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCalendarLinkResponse)](../../models/operations/getcalendarlinkresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_calendar_location

Retrieves a single CalendarLocation by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCalendarLocation" method="get" path="/calendar/{connection_id}/location/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.calendar.get_calendar_location(connection_id: '<id>', id: '<id>')

unless res.calendar_location.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Location                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCalendarLocationQueryParamFields](../../models/operations/getcalendarlocationqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCalendarLocationResponse)](../../models/operations/getcalendarlocationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_calendar_recording

Retrieves a single CalendarRecording by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCalendarRecording" method="get" path="/calendar/{connection_id}/recording/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.calendar.get_calendar_recording(connection_id: '<id>', id: '<id>')

unless res.calendar_recording.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Recording                                                                                                                              |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCalendarRecordingQueryParamFields](../../models/operations/getcalendarrecordingqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCalendarRecordingResponse)](../../models/operations/getcalendarrecordingresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_calendar_room

Retrieves a single CalendarRoom by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCalendarRoom" method="get" path="/calendar/{connection_id}/room/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.calendar.get_calendar_room(connection_id: '<id>', id: '<id>')

unless res.calendar_room.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Room                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCalendarRoomQueryParamFields](../../models/operations/getcalendarroomqueryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCalendarRoomResponse)](../../models/operations/getcalendarroomresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_calendar_webinar

Retrieves a single CalendarWebinar by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCalendarWebinar" method="get" path="/calendar/{connection_id}/webinar/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.calendar.get_calendar_webinar(connection_id: '<id>', id: '<id>')

unless res.calendar_webinar.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Webinar                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCalendarWebinarQueryParamFields](../../models/operations/getcalendarwebinarqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCalendarWebinarResponse)](../../models/operations/getcalendarwebinarresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_calendar_busies

Returns a list of CalendarBusies. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCalendarBusies" method="get" path="/calendar/{connection_id}/busy" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCalendarBusiesRequest.new(
  connection_id: '<id>',
)

res = s.calendar.list_calendar_busies(request: req)

unless res.calendar_busies.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListCalendarBusiesRequest](../../models/operations/listcalendarbusiesrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListCalendarBusiesResponse)](../../models/operations/listcalendarbusiesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_calendar_calendars

Returns a list of CalendarCalendars. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCalendarCalendars" method="get" path="/calendar/{connection_id}/calendar" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCalendarCalendarsRequest.new(
  connection_id: '<id>',
)

res = s.calendar.list_calendar_calendars(request: req)

unless res.calendar_calendars.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::ListCalendarCalendarsRequest](../../models/operations/listcalendarcalendarsrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::ListCalendarCalendarsResponse)](../../models/operations/listcalendarcalendarsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_calendar_events

Returns a list of CalendarEvents. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCalendarEvents" method="get" path="/calendar/{connection_id}/event" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCalendarEventsRequest.new(
  connection_id: '<id>',
)

res = s.calendar.list_calendar_events(request: req)

unless res.calendar_events.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListCalendarEventsRequest](../../models/operations/listcalendareventsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListCalendarEventsResponse)](../../models/operations/listcalendareventsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_calendar_links

Returns a list of CalendarLinks. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCalendarLinks" method="get" path="/calendar/{connection_id}/link" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCalendarLinksRequest.new(
  connection_id: '<id>',
)

res = s.calendar.list_calendar_links(request: req)

unless res.calendar_links.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListCalendarLinksRequest](../../models/operations/listcalendarlinksrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListCalendarLinksResponse)](../../models/operations/listcalendarlinksresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_calendar_locations

Returns a list of CalendarLocations. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCalendarLocations" method="get" path="/calendar/{connection_id}/location" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCalendarLocationsRequest.new(
  connection_id: '<id>',
)

res = s.calendar.list_calendar_locations(request: req)

unless res.calendar_locations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::ListCalendarLocationsRequest](../../models/operations/listcalendarlocationsrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::ListCalendarLocationsResponse)](../../models/operations/listcalendarlocationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_calendar_recordings

Returns a list of CalendarRecordings. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCalendarRecordings" method="get" path="/calendar/{connection_id}/recording" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCalendarRecordingsRequest.new(
  connection_id: '<id>',
)

res = s.calendar.list_calendar_recordings(request: req)

unless res.calendar_recordings.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListCalendarRecordingsRequest](../../models/operations/listcalendarrecordingsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListCalendarRecordingsResponse)](../../models/operations/listcalendarrecordingsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_calendar_rooms

Returns a list of CalendarRooms. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCalendarRooms" method="get" path="/calendar/{connection_id}/room" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCalendarRoomsRequest.new(
  connection_id: '<id>',
)

res = s.calendar.list_calendar_rooms(request: req)

unless res.calendar_rooms.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListCalendarRoomsRequest](../../models/operations/listcalendarroomsrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListCalendarRoomsResponse)](../../models/operations/listcalendarroomsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_calendar_webinars

Returns a list of CalendarWebinars. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCalendarWebinars" method="get" path="/calendar/{connection_id}/webinar" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCalendarWebinarsRequest.new(
  connection_id: '<id>',
)

res = s.calendar.list_calendar_webinars(request: req)

unless res.calendar_webinars.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListCalendarWebinarsRequest](../../models/operations/listcalendarwebinarsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListCalendarWebinarsResponse)](../../models/operations/listcalendarwebinarsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_calendar_calendar

Updates the CalendarCalendar identified by `id`. Provide the unified CalendarCalendar fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCalendarCalendar" method="patch" path="/calendar/{connection_id}/calendar/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCalendarCalendarRequest.new(
  calendar_calendar: Models::Shared::CalendarCalendar.new(
    created_at: DateTime.iso8601('2020-01-09T23:11:34.147Z'),
    description: 'Acer supra vallum suasoria thesaurus.',
    id: 'd3a1c444-6f07-49f2-b048-26158cdf7ef4',
    is_primary: false,
    metadata: [],
    name: 'Interviews',
    timezone: 'Asia/Kolkata',
    updated_at: DateTime.iso8601('2023-03-30T22:46:35.256Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.calendar.patch_calendar_calendar(request: req)

unless res.calendar_calendar.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::PatchCalendarCalendarRequest](../../models/operations/patchcalendarcalendarrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::PatchCalendarCalendarResponse)](../../models/operations/patchcalendarcalendarresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_calendar_event

Updates the CalendarEvent identified by `id`. Provide the unified CalendarEvent fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCalendarEvent" method="patch" path="/calendar/{connection_id}/event/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCalendarEventRequest.new(
  calendar_event: Models::Shared::CalendarEvent.new(
    attachments: [],
    conference: [],
    created_at: '2019-08-04T14:33:51.814Z',
    end_at: '2020-05-24T22:51:39.677Z',
    has_conference: false,
    id: 'fcf2a3d6-aed0-4d81-97bf-ac7b471c22d4',
    is_all_day: false,
    is_free: false,
    is_private: false,
    location: '621 Boehm Prairie',
    metadata: [],
    notes: 'Aegre traho.',
    recurrence: [
      Models::Shared::CalendarEventRecurrence.new(
        count: 4.0,
        end_at: DateTime.iso8601('2025-03-29T06:45:08.769Z'),
        excluded_dates: [
          '2024-02-06T11:23:43.306Z',
        ],
        frequency: Models::Shared::CalendarEventRecurrenceFrequency::YEARLY,
        included_dates: [
          '2023-07-10T06:44:16.423Z',
          '2025-01-28T09:31:06.637Z',
          '2024-04-05T19:30:56.107Z',
        ],
        interval: 7.0,
        on_days: [
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::TU,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::TH,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::MO,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::TH,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::SA,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::SA,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::SA,
        ],
        on_month_days: [
          -3.0,
        ],
        on_months: [
          0.0,
          1.0,
          6.0,
          -10.0,
          9.0,
          0.0,
        ],
        on_weeks: [
          -8.0,
          3.0,
          -7.0,
          51.0,
          -3.0,
          -41.0,
          15.0,
          46.0,
          -1.0,
          46.0,
          42.0,
          11.0,
          12.0,
          -35.0,
          -15.0,
          -3.0,
          -42.0,
          50.0,
          3.0,
          -15.0,
          -10.0,
          6.0,
          -53.0,
          5.0,
          -32.0,
          -22.0,
          43.0,
          -44.0,
          -23.0,
          -21.0,
          -18.0,
          13.0,
          -5.0,
          2.0,
          -49.0,
        ],
        on_year_days: [
          -87.0,
          339.0,
          341.0,
          287.0,
          -17.0,
          319.0,
          -3.0,
          238.0,
          -115.0,
          -116.0,
          283.0,
          -61.0,
          -254.0,
          86.0,
          -163.0,
          5.0,
          -171.0,
          -99.0,
          279.0,
          19.0,
          303.0,
          -106.0,
          90.0,
          109.0,
          -185.0,
          -285.0,
          -83.0,
          -236.0,
          66.0,
          -215.0,
          178.0,
          64.0,
          78.0,
          5.0,
          -251.0,
          -79.0,
          -271.0,
          33.0,
          320.0,
          67.0,
          -84.0,
          -355.0,
          -364.0,
          348.0,
          271.0,
          -304.0,
          -199.0,
          106.0,
          -345.0,
          24.0,
          -89.0,
          -109.0,
          -314.0,
          365.0,
          38.0,
          -42.0,
          123.0,
          56.0,
          -3.0,
          31.0,
          101.0,
          326.0,
          -160.0,
          -101.0,
          -267.0,
          -309.0,
          -363.0,
          125.0,
          -182.0,
          363.0,
          324.0,
          36.0,
          -269.0,
          -79.0,
          -60.0,
          272.0,
          -254.0,
          -160.0,
          -82.0,
          19.0,
          42.0,
          69.0,
          -104.0,
          333.0,
          236.0,
          -287.0,
          296.0,
          261.0,
          241.0,
          348.0,
          -72.0,
          159.0,
          -127.0,
          229.0,
          -158.0,
          190.0,
          -173.0,
          -84.0,
          -96.0,
          176.0,
          339.0,
          -48.0,
          287.0,
          -46.0,
          -101.0,
          246.0,
          -8.0,
          -74.0,
          338.0,
          -51.0,
          -42.0,
          -128.0,
          -169.0,
          -174.0,
          168.0,
          -85.0,
          37.0,
          169.0,
          -105.0,
          231.0,
          -250.0,
          -286.0,
          -7.0,
          -121.0,
          321.0,
          278.0,
          -120.0,
          -96.0,
          360.0,
          337.0,
          -258.0,
          -179.0,
          324.0,
          -204.0,
          327.0,
          15.0,
          365.0,
          191.0,
          -345.0,
          -345.0,
          56.0,
          217.0,
          60.0,
          -264.0,
          -248.0,
          -316.0,
          191.0,
          -189.0,
          -152.0,
          -296.0,
          194.0,
          -42.0,
          -21.0,
          -218.0,
          171.0,
          -15.0,
          301.0,
          37.0,
          -167.0,
          18.0,
          248.0,
          -263.0,
          27.0,
          14.0,
          59.0,
          219.0,
          -284.0,
          221.0,
          -76.0,
          277.0,
          183.0,
          200.0,
          -12.0,
          -28.0,
          -79.0,
          150.0,
          320.0,
          -152.0,
          -15.0,
          -42.0,
          -125.0,
          -4.0,
          269.0,
          290.0,
          52.0,
          320.0,
          344.0,
          13.0,
          -69.0,
          255.0,
          -154.0,
          -281.0,
          158.0,
          25.0,
          240.0,
          -339.0,
          96.0,
          204.0,
          324.0,
          221.0,
          37.0,
          -333.0,
          87.0,
          354.0,
          -365.0,
          -203.0,
          -341.0,
          -79.0,
          -208.0,
          135.0,
          132.0,
          -351.0,
          39.0,
          -87.0,
          -297.0,
          -66.0,
          346.0,
          69.0,
          -177.0,
          235.0,
          295.0,
          -366.0,
          -55.0,
          -297.0,
          -308.0,
          -294.0,
          -208.0,
          141.0,
          267.0,
          64.0,
          100.0,
          -355.0,
          -335.0,
          280.0,
          224.0,
          259.0,
          1.0,
          -146.0,
          48.0,
          335.0,
          363.0,
          308.0,
          -224.0,
          109.0,
          -10.0,
          -89.0,
          -211.0,
          -47.0,
          -130.0,
          341.0,
          -250.0,
          295.0,
          -329.0,
          -205.0,
          231.0,
          247.0,
          -228.0,
          166.0,
          -28.0,
          36.0,
          277.0,
          -115.0,
          100.0,
          2.0,
          81.0,
          -66.0,
          31.0,
          -39.0,
          -319.0,
          -251.0,
          -254.0,
        ],
        timezone: 'Asia/Ho_Chi_Minh',
        week_start: Models::Shared::WeekStart::TU,
      ),
    ],
    start_at: '2020-05-24T13:36:47.792Z',
    status: Models::Shared::CalendarEventStatus::CONFIRMED,
    subject: 'Sunt spargo tepidus bestia vigor credo coadunatio appello.',
    timezone: 'Asia/Bangkok',
    updated_at: '2020-06-30T23:13:48.031Z',
    web_url: 'https://another-pinstripe.com',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.calendar.patch_calendar_event(request: req)

unless res.calendar_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::PatchCalendarEventRequest](../../models/operations/patchcalendareventrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::PatchCalendarEventResponse)](../../models/operations/patchcalendareventresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_calendar_link

Updates the CalendarLink identified by `id`. Provide the unified CalendarLink fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCalendarLink" method="patch" path="/calendar/{connection_id}/link/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCalendarLinkRequest.new(
  calendar_link: Models::Shared::CalendarLink.new(
    created_at: '2023-03-07T13:34:11.959Z',
    description: 'Vitium clibanus laboriosam uxor denuncio.',
    duration: 74.0,
    id: 'bf15a688-9a3b-4979-b7a1-47da8b4a3041',
    is_active: true,
    metadata: [],
    name: 'Sopor sopor ancilla animus anser dignissimos vito confero utilis.',
    price_amount: 44.0,
    price_currency: 'USD',
    updated_at: '2024-03-17T05:11:18.292Z',
    url: 'https://annual-apricot.info/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.calendar.patch_calendar_link(request: req)

unless res.calendar_link.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::PatchCalendarLinkRequest](../../models/operations/patchcalendarlinkrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::PatchCalendarLinkResponse)](../../models/operations/patchcalendarlinkresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_calendar_webinar

Updates the CalendarWebinar identified by `id`. Provide the unified CalendarWebinar fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCalendarWebinar" method="patch" path="/calendar/{connection_id}/webinar/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCalendarWebinarRequest.new(
  calendar_webinar: Models::Shared::CalendarWebinar.new(
    conference: [],
    created_at: DateTime.iso8601('2022-07-06T11:45:14.631Z'),
    end_at: DateTime.iso8601('2025-11-02T07:04:36.858Z'),
    has_polls: false,
    has_recording: false,
    id: '112e424b-7fb2-43d1-b355-43aa5bf43409',
    is_auto_approve: false,
    is_enabled: true,
    is_webcast: false,
    join_url: 'https://nutritious-crocodile.com',
    metadata: [],
    notes: 'Curriculum ducimus assentator aspernatur ait.',
    recurrence: [
      Models::Shared::CalendarEventRecurrence.new(
        count: 10.0,
        end_at: DateTime.iso8601('2023-09-02T04:59:07.622Z'),
        excluded_dates: [
          '2025-02-16T14:57:10.723Z',
        ],
        frequency: Models::Shared::CalendarEventRecurrenceFrequency::MONTHLY,
        included_dates: [
          '2024-04-30T18:47:06.215Z',
        ],
        interval: 8.0,
        on_days: [
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::SU,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::FR,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::SA,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::WE,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::MO,
        ],
        on_month_days: [
          -10.0,
        ],
        on_months: [
          -9.0,
        ],
        on_weeks: [
          10.0,
          30.0,
          -38.0,
          30.0,
          -22.0,
          37.0,
          -12.0,
          27.0,
          2.0,
          15.0,
          26.0,
          18.0,
          -43.0,
          -33.0,
          -27.0,
          38.0,
          28.0,
          47.0,
          -8.0,
          24.0,
          35.0,
          -2.0,
          7.0,
          49.0,
          38.0,
          -41.0,
          46.0,
          -11.0,
          -45.0,
          0.0,
          48.0,
          34.0,
        ],
        on_year_days: [
          345.0,
          -207.0,
          230.0,
          -10.0,
          364.0,
          -256.0,
          -218.0,
          -295.0,
          290.0,
          -250.0,
          -315.0,
          60.0,
          205.0,
          -247.0,
          -318.0,
          -211.0,
          -13.0,
          256.0,
          -200.0,
          -313.0,
          336.0,
          -332.0,
          -90.0,
          287.0,
          -273.0,
          156.0,
          241.0,
          -138.0,
          -363.0,
          -37.0,
          -171.0,
          -62.0,
          -57.0,
          280.0,
          -322.0,
          -79.0,
          -364.0,
          -201.0,
          84.0,
          341.0,
          334.0,
          -75.0,
          332.0,
          207.0,
          337.0,
          -244.0,
          131.0,
          -191.0,
          164.0,
          -235.0,
          285.0,
          -309.0,
          -158.0,
          306.0,
          180.0,
          -130.0,
          -162.0,
          -155.0,
          3.0,
          198.0,
          26.0,
          -366.0,
          -191.0,
          127.0,
          -331.0,
          -11.0,
          -239.0,
          -189.0,
          243.0,
          118.0,
          346.0,
          -174.0,
          -146.0,
          -161.0,
          -330.0,
          327.0,
          192.0,
          310.0,
          316.0,
          313.0,
          -242.0,
          -51.0,
          -264.0,
          -180.0,
          -88.0,
          305.0,
          270.0,
          358.0,
          -173.0,
          -298.0,
          153.0,
          -89.0,
          155.0,
          -45.0,
          248.0,
          -46.0,
          -146.0,
          300.0,
          364.0,
          -335.0,
          356.0,
          -18.0,
          219.0,
          324.0,
          -239.0,
          -106.0,
          -298.0,
          328.0,
          362.0,
          344.0,
          -54.0,
          133.0,
          50.0,
          112.0,
          -212.0,
          -179.0,
          22.0,
          -201.0,
          -62.0,
          -293.0,
          9.0,
          30.0,
          -50.0,
          126.0,
          -72.0,
          264.0,
          28.0,
          -1.0,
          -207.0,
          160.0,
          -168.0,
          3.0,
          -176.0,
          -19.0,
          -157.0,
          349.0,
          100.0,
          -201.0,
          108.0,
          -180.0,
          51.0,
          -73.0,
          366.0,
          74.0,
          -226.0,
          238.0,
          121.0,
          -193.0,
          -125.0,
          -109.0,
          316.0,
          -177.0,
          -307.0,
          31.0,
          -76.0,
          217.0,
          -310.0,
          227.0,
          -360.0,
          71.0,
          255.0,
          -325.0,
          -214.0,
          40.0,
          42.0,
          17.0,
          -241.0,
          -84.0,
          -188.0,
          302.0,
          64.0,
          94.0,
          -362.0,
          23.0,
          166.0,
          85.0,
          71.0,
          -74.0,
          -47.0,
          -119.0,
          98.0,
          40.0,
          158.0,
          -64.0,
          175.0,
          269.0,
          127.0,
          -143.0,
          213.0,
          -196.0,
          121.0,
          81.0,
          -238.0,
          288.0,
          321.0,
          276.0,
          133.0,
          22.0,
          -213.0,
          -157.0,
          -280.0,
          -35.0,
          73.0,
          -194.0,
          65.0,
          -180.0,
          63.0,
          -242.0,
          -117.0,
          148.0,
          157.0,
          -320.0,
          318.0,
          8.0,
          210.0,
          -21.0,
          81.0,
          205.0,
          -258.0,
          -40.0,
          -114.0,
          -253.0,
          -263.0,
          65.0,
          185.0,
          -24.0,
          324.0,
          -172.0,
          25.0,
          260.0,
          211.0,
          342.0,
          -31.0,
          -288.0,
          -159.0,
          -4.0,
          -2.0,
          -107.0,
          -316.0,
          -276.0,
          331.0,
          -114.0,
          -20.0,
          -320.0,
          51.0,
          -176.0,
          -148.0,
          -50.0,
          -201.0,
          -104.0,
          153.0,
          -273.0,
          -189.0,
          67.0,
          209.0,
          149.0,
          49.0,
          -136.0,
          -125.0,
          -169.0,
          -324.0,
          309.0,
          -51.0,
          288.0,
          253.0,
          175.0,
          -146.0,
          171.0,
          -140.0,
          58.0,
          -212.0,
          164.0,
          270.0,
          102.0,
          70.0,
          299.0,
          89.0,
          -280.0,
          252.0,
          -342.0,
          240.0,
          226.0,
          68.0,
          -30.0,
          -232.0,
          -358.0,
          -166.0,
          60.0,
          140.0,
          275.0,
          13.0,
          250.0,
          -328.0,
          -189.0,
          -22.0,
          7.0,
          -235.0,
          -322.0,
          178.0,
          167.0,
          -104.0,
          -61.0,
          282.0,
          -80.0,
          -277.0,
          108.0,
          271.0,
          -237.0,
          297.0,
          -135.0,
          -135.0,
          -323.0,
          342.0,
          -267.0,
          -235.0,
          173.0,
          249.0,
          -288.0,
          257.0,
          139.0,
          -191.0,
          -217.0,
          10.0,
          -117.0,
          -297.0,
          -196.0,
          -206.0,
          341.0,
          166.0,
          181.0,
          129.0,
          -207.0,
          55.0,
          86.0,
        ],
        timezone: 'Africa/Abidjan',
        week_start: Models::Shared::WeekStart::MO,
      ),
      Models::Shared::CalendarEventRecurrence.new(
        count: 3.0,
        end_at: DateTime.iso8601('2022-10-01T00:02:27.306Z'),
        excluded_dates: [
          '2024-09-04T17:33:58.037Z',
          '2024-08-20T03:11:24.060Z',
        ],
        frequency: Models::Shared::CalendarEventRecurrenceFrequency::DAILY,
        included_dates: [
          '2024-03-27T13:06:28.338Z',
          '2026-01-18T06:20:56.189Z',
          '2023-08-15T18:58:36.201Z',
        ],
        interval: 1.0,
        on_days: [
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::WE,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::SU,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::MO,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::FR,
        ],
        on_month_days: [
          -15.0,
        ],
        on_months: [
          5.0,
          12.0,
          3.0,
          12.0,
          8.0,
        ],
        on_weeks: [
          -47.0,
          44.0,
        ],
        on_year_days: [
          -117.0,
          59.0,
          -6.0,
          187.0,
          45.0,
          70.0,
          15.0,
          255.0,
          44.0,
          -2.0,
          25.0,
          -175.0,
          -240.0,
          171.0,
          -294.0,
          19.0,
          38.0,
          -351.0,
          170.0,
          -10.0,
          -269.0,
          18.0,
          -65.0,
          -266.0,
          -31.0,
          328.0,
          -361.0,
          358.0,
          -256.0,
          -4.0,
          -312.0,
          82.0,
          -2.0,
          -75.0,
          -281.0,
          -304.0,
          53.0,
          -295.0,
          366.0,
          322.0,
          -191.0,
          26.0,
          97.0,
          53.0,
          75.0,
          -62.0,
          -109.0,
          66.0,
          177.0,
          -68.0,
          175.0,
          -280.0,
          70.0,
          -238.0,
          109.0,
          -304.0,
          326.0,
          -8.0,
          -71.0,
          -236.0,
          225.0,
          358.0,
          20.0,
          -5.0,
          -102.0,
          -134.0,
          -204.0,
          -116.0,
          -353.0,
          -273.0,
          106.0,
          284.0,
          -137.0,
          -324.0,
          301.0,
          -42.0,
          -229.0,
          271.0,
          -293.0,
          -343.0,
          211.0,
          47.0,
          -254.0,
          -154.0,
          -182.0,
          264.0,
          120.0,
          -11.0,
          -307.0,
          99.0,
          227.0,
          190.0,
          -17.0,
          -77.0,
          -255.0,
          -61.0,
          -249.0,
          -102.0,
          70.0,
          345.0,
          -187.0,
          -308.0,
          194.0,
          221.0,
          268.0,
          -169.0,
          -190.0,
          88.0,
          10.0,
          262.0,
          177.0,
          -314.0,
          -151.0,
          -295.0,
        ],
        timezone: 'Asia/Choibalsan',
        week_start: Models::Shared::WeekStart::TU,
      ),
      Models::Shared::CalendarEventRecurrence.new(
        count: 8.0,
        end_at: DateTime.iso8601('2026-08-01T03:05:19.655Z'),
        excluded_dates: [
          '2023-06-19T21:57:34.091Z',
          '2023-06-08T21:48:24.575Z',
        ],
        frequency: Models::Shared::CalendarEventRecurrenceFrequency::WEEKLY,
        included_dates: [
          '2024-04-04T14:42:29.981Z',
          '2023-08-21T14:55:49.873Z',
          '2024-09-30T00:37:58.126Z',
        ],
        interval: 8.0,
        on_days: [
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::SU,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::MO,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::TU,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::FR,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::MO,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::TH,
        ],
        on_month_days: [
          -23.0,
        ],
        on_months: [
          11.0,
          8.0,
          9.0,
          5.0,
          -12.0,
          -7.0,
          -5.0,
          10.0,
          10.0,
          -9.0,
          -10.0,
        ],
        on_weeks: [
          -49.0,
          46.0,
          35.0,
          -26.0,
          2.0,
          15.0,
          15.0,
          -26.0,
          24.0,
          -53.0,
          36.0,
          -43.0,
          51.0,
          -19.0,
          -7.0,
          -12.0,
          28.0,
          27.0,
          35.0,
          12.0,
          -28.0,
          -8.0,
          -4.0,
          -45.0,
        ],
        on_year_days: [
          84.0,
          -251.0,
          71.0,
          181.0,
          -163.0,
          158.0,
          301.0,
          -299.0,
          -184.0,
          -331.0,
          -152.0,
          -129.0,
          -237.0,
          -303.0,
          -24.0,
          126.0,
          -103.0,
          146.0,
          -346.0,
          86.0,
          -296.0,
          -337.0,
          -185.0,
          16.0,
          -270.0,
          -126.0,
          -295.0,
          -231.0,
          356.0,
          -293.0,
          115.0,
          -265.0,
          -293.0,
          -34.0,
          357.0,
          313.0,
          -343.0,
          180.0,
          -22.0,
          -161.0,
          350.0,
          177.0,
          190.0,
          223.0,
          -152.0,
          -360.0,
          -225.0,
          -60.0,
          -35.0,
          353.0,
          117.0,
          -171.0,
          -315.0,
          -321.0,
          -202.0,
          345.0,
          -1.0,
          -148.0,
          -168.0,
          181.0,
          -17.0,
          282.0,
          234.0,
          31.0,
          47.0,
          -236.0,
          366.0,
          -251.0,
          -232.0,
          -308.0,
          76.0,
          -199.0,
          184.0,
          198.0,
          225.0,
          75.0,
          6.0,
          227.0,
          -148.0,
          259.0,
          -146.0,
          49.0,
          -254.0,
          341.0,
          93.0,
          138.0,
          -164.0,
          237.0,
          4.0,
          -287.0,
          161.0,
        ],
        timezone: 'Asia/Krasnoyarsk',
        week_start: Models::Shared::WeekStart::WE,
      ),
    ],
    registrant_password: 'W7J6DhkM',
    require_address: false,
    require_job_title: false,
    start_at: DateTime.iso8601('2025-05-04T11:06:25.116Z'),
    status: Models::Shared::CalendarWebinarStatus::TENTATIVE,
    subject: 'Harum culpa decipio ex cubo ancilla cresco.',
    timezone: 'Europe/Kaliningrad',
    updated_at: DateTime.iso8601('2026-10-06T08:20:20.343Z'),
    web_url: 'https://quiet-permafrost.name',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.calendar.patch_calendar_webinar(request: req)

unless res.calendar_webinar.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::PatchCalendarWebinarRequest](../../models/operations/patchcalendarwebinarrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::PatchCalendarWebinarResponse)](../../models/operations/patchcalendarwebinarresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_calendar_calendar

Deletes the CalendarCalendar identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCalendarCalendar" method="delete" path="/calendar/{connection_id}/calendar/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.calendar.remove_calendar_calendar(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveCalendarCalendarResponse)](../../models/operations/removecalendarcalendarresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_calendar_event

Deletes the CalendarEvent identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCalendarEvent" method="delete" path="/calendar/{connection_id}/event/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.calendar.remove_calendar_event(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveCalendarEventResponse)](../../models/operations/removecalendareventresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_calendar_link

Deletes the CalendarLink identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCalendarLink" method="delete" path="/calendar/{connection_id}/link/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.calendar.remove_calendar_link(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveCalendarLinkResponse)](../../models/operations/removecalendarlinkresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_calendar_webinar

Deletes the CalendarWebinar identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCalendarWebinar" method="delete" path="/calendar/{connection_id}/webinar/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.calendar.remove_calendar_webinar(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Webinar    |

### Response

**[T.nilable(Models::Operations::RemoveCalendarWebinarResponse)](../../models/operations/removecalendarwebinarresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_calendar_calendar

Updates the CalendarCalendar identified by `id`. Provide the unified CalendarCalendar fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCalendarCalendar" method="put" path="/calendar/{connection_id}/calendar/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCalendarCalendarRequest.new(
  calendar_calendar: Models::Shared::CalendarCalendar.new(
    created_at: DateTime.iso8601('2020-01-09T23:11:34.147Z'),
    description: 'Acer supra vallum suasoria thesaurus.',
    id: 'd3a1c444-6f07-49f2-b048-26158cdf7ef4',
    is_primary: false,
    metadata: [],
    name: 'Interviews',
    timezone: 'Asia/Kolkata',
    updated_at: DateTime.iso8601('2023-03-30T22:46:35.256Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.calendar.update_calendar_calendar(request: req)

unless res.calendar_calendar.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::UpdateCalendarCalendarRequest](../../models/operations/updatecalendarcalendarrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::UpdateCalendarCalendarResponse)](../../models/operations/updatecalendarcalendarresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_calendar_event

Updates the CalendarEvent identified by `id`. Provide the unified CalendarEvent fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCalendarEvent" method="put" path="/calendar/{connection_id}/event/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCalendarEventRequest.new(
  calendar_event: Models::Shared::CalendarEvent.new(
    attachments: [],
    conference: [],
    created_at: '2019-08-04T14:33:51.814Z',
    end_at: '2020-05-24T22:51:39.677Z',
    has_conference: false,
    id: 'fcf2a3d6-aed0-4d81-97bf-ac7b471c22d4',
    is_all_day: false,
    is_free: false,
    is_private: false,
    location: '621 Boehm Prairie',
    metadata: [],
    notes: 'Aegre traho.',
    recurrence: [
      Models::Shared::CalendarEventRecurrence.new(
        count: 4.0,
        end_at: DateTime.iso8601('2025-03-29T06:45:08.769Z'),
        excluded_dates: [
          '2024-02-06T11:23:43.306Z',
        ],
        frequency: Models::Shared::CalendarEventRecurrenceFrequency::YEARLY,
        included_dates: [
          '2023-07-10T06:44:16.423Z',
          '2025-01-28T09:31:06.637Z',
          '2024-04-05T19:30:56.107Z',
        ],
        interval: 7.0,
        on_days: [
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::TU,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::TH,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::MO,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::TH,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::SA,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::SA,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::SA,
        ],
        on_month_days: [
          -3.0,
        ],
        on_months: [
          0.0,
          1.0,
          6.0,
          -10.0,
          9.0,
          0.0,
        ],
        on_weeks: [
          -8.0,
          3.0,
          -7.0,
          51.0,
          -3.0,
          -41.0,
          15.0,
          46.0,
          -1.0,
          46.0,
          42.0,
          11.0,
          12.0,
          -35.0,
          -15.0,
          -3.0,
          -42.0,
          50.0,
          3.0,
          -15.0,
          -10.0,
          6.0,
          -53.0,
          5.0,
          -32.0,
          -22.0,
          43.0,
          -44.0,
          -23.0,
          -21.0,
          -18.0,
          13.0,
          -5.0,
          2.0,
          -49.0,
        ],
        on_year_days: [
          -87.0,
          339.0,
          341.0,
          287.0,
          -17.0,
          319.0,
          -3.0,
          238.0,
          -115.0,
          -116.0,
          283.0,
          -61.0,
          -254.0,
          86.0,
          -163.0,
          5.0,
          -171.0,
          -99.0,
          279.0,
          19.0,
          303.0,
          -106.0,
          90.0,
          109.0,
          -185.0,
          -285.0,
          -83.0,
          -236.0,
          66.0,
          -215.0,
          178.0,
          64.0,
          78.0,
          5.0,
          -251.0,
          -79.0,
          -271.0,
          33.0,
          320.0,
          67.0,
          -84.0,
          -355.0,
          -364.0,
          348.0,
          271.0,
          -304.0,
          -199.0,
          106.0,
          -345.0,
          24.0,
          -89.0,
          -109.0,
          -314.0,
          365.0,
          38.0,
          -42.0,
          123.0,
          56.0,
          -3.0,
          31.0,
          101.0,
          326.0,
          -160.0,
          -101.0,
          -267.0,
          -309.0,
          -363.0,
          125.0,
          -182.0,
          363.0,
          324.0,
          36.0,
          -269.0,
          -79.0,
          -60.0,
          272.0,
          -254.0,
          -160.0,
          -82.0,
          19.0,
          42.0,
          69.0,
          -104.0,
          333.0,
          236.0,
          -287.0,
          296.0,
          261.0,
          241.0,
          348.0,
          -72.0,
          159.0,
          -127.0,
          229.0,
          -158.0,
          190.0,
          -173.0,
          -84.0,
          -96.0,
          176.0,
          339.0,
          -48.0,
          287.0,
          -46.0,
          -101.0,
          246.0,
          -8.0,
          -74.0,
          338.0,
          -51.0,
          -42.0,
          -128.0,
          -169.0,
          -174.0,
          168.0,
          -85.0,
          37.0,
          169.0,
          -105.0,
          231.0,
          -250.0,
          -286.0,
          -7.0,
          -121.0,
          321.0,
          278.0,
          -120.0,
          -96.0,
          360.0,
          337.0,
          -258.0,
          -179.0,
          324.0,
          -204.0,
          327.0,
          15.0,
          365.0,
          191.0,
          -345.0,
          -345.0,
          56.0,
          217.0,
          60.0,
          -264.0,
          -248.0,
          -316.0,
          191.0,
          -189.0,
          -152.0,
          -296.0,
          194.0,
          -42.0,
          -21.0,
          -218.0,
          171.0,
          -15.0,
          301.0,
          37.0,
          -167.0,
          18.0,
          248.0,
          -263.0,
          27.0,
          14.0,
          59.0,
          219.0,
          -284.0,
          221.0,
          -76.0,
          277.0,
          183.0,
          200.0,
          -12.0,
          -28.0,
          -79.0,
          150.0,
          320.0,
          -152.0,
          -15.0,
          -42.0,
          -125.0,
          -4.0,
          269.0,
          290.0,
          52.0,
          320.0,
          344.0,
          13.0,
          -69.0,
          255.0,
          -154.0,
          -281.0,
          158.0,
          25.0,
          240.0,
          -339.0,
          96.0,
          204.0,
          324.0,
          221.0,
          37.0,
          -333.0,
          87.0,
          354.0,
          -365.0,
          -203.0,
          -341.0,
          -79.0,
          -208.0,
          135.0,
          132.0,
          -351.0,
          39.0,
          -87.0,
          -297.0,
          -66.0,
          346.0,
          69.0,
          -177.0,
          235.0,
          295.0,
          -366.0,
          -55.0,
          -297.0,
          -308.0,
          -294.0,
          -208.0,
          141.0,
          267.0,
          64.0,
          100.0,
          -355.0,
          -335.0,
          280.0,
          224.0,
          259.0,
          1.0,
          -146.0,
          48.0,
          335.0,
          363.0,
          308.0,
          -224.0,
          109.0,
          -10.0,
          -89.0,
          -211.0,
          -47.0,
          -130.0,
          341.0,
          -250.0,
          295.0,
          -329.0,
          -205.0,
          231.0,
          247.0,
          -228.0,
          166.0,
          -28.0,
          36.0,
          277.0,
          -115.0,
          100.0,
          2.0,
          81.0,
          -66.0,
          31.0,
          -39.0,
          -319.0,
          -251.0,
          -254.0,
        ],
        timezone: 'Asia/Ho_Chi_Minh',
        week_start: Models::Shared::WeekStart::TU,
      ),
    ],
    start_at: '2020-05-24T13:36:47.792Z',
    status: Models::Shared::CalendarEventStatus::CONFIRMED,
    subject: 'Sunt spargo tepidus bestia vigor credo coadunatio appello.',
    timezone: 'Asia/Bangkok',
    updated_at: '2020-06-30T23:13:48.031Z',
    web_url: 'https://another-pinstripe.com',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.calendar.update_calendar_event(request: req)

unless res.calendar_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::UpdateCalendarEventRequest](../../models/operations/updatecalendareventrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::UpdateCalendarEventResponse)](../../models/operations/updatecalendareventresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_calendar_link

Updates the CalendarLink identified by `id`. Provide the unified CalendarLink fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCalendarLink" method="put" path="/calendar/{connection_id}/link/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCalendarLinkRequest.new(
  calendar_link: Models::Shared::CalendarLink.new(
    created_at: '2023-03-07T13:34:11.959Z',
    description: 'Vitium clibanus laboriosam uxor denuncio.',
    duration: 74.0,
    id: 'bf15a688-9a3b-4979-b7a1-47da8b4a3041',
    is_active: true,
    metadata: [],
    name: 'Sopor sopor ancilla animus anser dignissimos vito confero utilis.',
    price_amount: 44.0,
    price_currency: 'USD',
    updated_at: '2024-03-17T05:11:18.292Z',
    url: 'https://annual-apricot.info/',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.calendar.update_calendar_link(request: req)

unless res.calendar_link.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::UpdateCalendarLinkRequest](../../models/operations/updatecalendarlinkrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::UpdateCalendarLinkResponse)](../../models/operations/updatecalendarlinkresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_calendar_webinar

Updates the CalendarWebinar identified by `id`. Provide the unified CalendarWebinar fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCalendarWebinar" method="put" path="/calendar/{connection_id}/webinar/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCalendarWebinarRequest.new(
  calendar_webinar: Models::Shared::CalendarWebinar.new(
    conference: [],
    created_at: DateTime.iso8601('2022-07-06T11:45:14.631Z'),
    end_at: DateTime.iso8601('2025-11-02T07:04:36.858Z'),
    has_polls: false,
    has_recording: false,
    id: '112e424b-7fb2-43d1-b355-43aa5bf43409',
    is_auto_approve: false,
    is_enabled: true,
    is_webcast: false,
    join_url: 'https://nutritious-crocodile.com',
    metadata: [],
    notes: 'Curriculum ducimus assentator aspernatur ait.',
    recurrence: [
      Models::Shared::CalendarEventRecurrence.new(
        count: 10.0,
        end_at: DateTime.iso8601('2023-09-02T04:59:07.622Z'),
        excluded_dates: [
          '2025-02-16T14:57:10.723Z',
        ],
        frequency: Models::Shared::CalendarEventRecurrenceFrequency::MONTHLY,
        included_dates: [
          '2024-04-30T18:47:06.215Z',
        ],
        interval: 8.0,
        on_days: [
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::SU,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::FR,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::SA,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::WE,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::MO,
        ],
        on_month_days: [
          -10.0,
        ],
        on_months: [
          -9.0,
        ],
        on_weeks: [
          10.0,
          30.0,
          -38.0,
          30.0,
          -22.0,
          37.0,
          -12.0,
          27.0,
          2.0,
          15.0,
          26.0,
          18.0,
          -43.0,
          -33.0,
          -27.0,
          38.0,
          28.0,
          47.0,
          -8.0,
          24.0,
          35.0,
          -2.0,
          7.0,
          49.0,
          38.0,
          -41.0,
          46.0,
          -11.0,
          -45.0,
          0.0,
          48.0,
          34.0,
        ],
        on_year_days: [
          345.0,
          -207.0,
          230.0,
          -10.0,
          364.0,
          -256.0,
          -218.0,
          -295.0,
          290.0,
          -250.0,
          -315.0,
          60.0,
          205.0,
          -247.0,
          -318.0,
          -211.0,
          -13.0,
          256.0,
          -200.0,
          -313.0,
          336.0,
          -332.0,
          -90.0,
          287.0,
          -273.0,
          156.0,
          241.0,
          -138.0,
          -363.0,
          -37.0,
          -171.0,
          -62.0,
          -57.0,
          280.0,
          -322.0,
          -79.0,
          -364.0,
          -201.0,
          84.0,
          341.0,
          334.0,
          -75.0,
          332.0,
          207.0,
          337.0,
          -244.0,
          131.0,
          -191.0,
          164.0,
          -235.0,
          285.0,
          -309.0,
          -158.0,
          306.0,
          180.0,
          -130.0,
          -162.0,
          -155.0,
          3.0,
          198.0,
          26.0,
          -366.0,
          -191.0,
          127.0,
          -331.0,
          -11.0,
          -239.0,
          -189.0,
          243.0,
          118.0,
          346.0,
          -174.0,
          -146.0,
          -161.0,
          -330.0,
          327.0,
          192.0,
          310.0,
          316.0,
          313.0,
          -242.0,
          -51.0,
          -264.0,
          -180.0,
          -88.0,
          305.0,
          270.0,
          358.0,
          -173.0,
          -298.0,
          153.0,
          -89.0,
          155.0,
          -45.0,
          248.0,
          -46.0,
          -146.0,
          300.0,
          364.0,
          -335.0,
          356.0,
          -18.0,
          219.0,
          324.0,
          -239.0,
          -106.0,
          -298.0,
          328.0,
          362.0,
          344.0,
          -54.0,
          133.0,
          50.0,
          112.0,
          -212.0,
          -179.0,
          22.0,
          -201.0,
          -62.0,
          -293.0,
          9.0,
          30.0,
          -50.0,
          126.0,
          -72.0,
          264.0,
          28.0,
          -1.0,
          -207.0,
          160.0,
          -168.0,
          3.0,
          -176.0,
          -19.0,
          -157.0,
          349.0,
          100.0,
          -201.0,
          108.0,
          -180.0,
          51.0,
          -73.0,
          366.0,
          74.0,
          -226.0,
          238.0,
          121.0,
          -193.0,
          -125.0,
          -109.0,
          316.0,
          -177.0,
          -307.0,
          31.0,
          -76.0,
          217.0,
          -310.0,
          227.0,
          -360.0,
          71.0,
          255.0,
          -325.0,
          -214.0,
          40.0,
          42.0,
          17.0,
          -241.0,
          -84.0,
          -188.0,
          302.0,
          64.0,
          94.0,
          -362.0,
          23.0,
          166.0,
          85.0,
          71.0,
          -74.0,
          -47.0,
          -119.0,
          98.0,
          40.0,
          158.0,
          -64.0,
          175.0,
          269.0,
          127.0,
          -143.0,
          213.0,
          -196.0,
          121.0,
          81.0,
          -238.0,
          288.0,
          321.0,
          276.0,
          133.0,
          22.0,
          -213.0,
          -157.0,
          -280.0,
          -35.0,
          73.0,
          -194.0,
          65.0,
          -180.0,
          63.0,
          -242.0,
          -117.0,
          148.0,
          157.0,
          -320.0,
          318.0,
          8.0,
          210.0,
          -21.0,
          81.0,
          205.0,
          -258.0,
          -40.0,
          -114.0,
          -253.0,
          -263.0,
          65.0,
          185.0,
          -24.0,
          324.0,
          -172.0,
          25.0,
          260.0,
          211.0,
          342.0,
          -31.0,
          -288.0,
          -159.0,
          -4.0,
          -2.0,
          -107.0,
          -316.0,
          -276.0,
          331.0,
          -114.0,
          -20.0,
          -320.0,
          51.0,
          -176.0,
          -148.0,
          -50.0,
          -201.0,
          -104.0,
          153.0,
          -273.0,
          -189.0,
          67.0,
          209.0,
          149.0,
          49.0,
          -136.0,
          -125.0,
          -169.0,
          -324.0,
          309.0,
          -51.0,
          288.0,
          253.0,
          175.0,
          -146.0,
          171.0,
          -140.0,
          58.0,
          -212.0,
          164.0,
          270.0,
          102.0,
          70.0,
          299.0,
          89.0,
          -280.0,
          252.0,
          -342.0,
          240.0,
          226.0,
          68.0,
          -30.0,
          -232.0,
          -358.0,
          -166.0,
          60.0,
          140.0,
          275.0,
          13.0,
          250.0,
          -328.0,
          -189.0,
          -22.0,
          7.0,
          -235.0,
          -322.0,
          178.0,
          167.0,
          -104.0,
          -61.0,
          282.0,
          -80.0,
          -277.0,
          108.0,
          271.0,
          -237.0,
          297.0,
          -135.0,
          -135.0,
          -323.0,
          342.0,
          -267.0,
          -235.0,
          173.0,
          249.0,
          -288.0,
          257.0,
          139.0,
          -191.0,
          -217.0,
          10.0,
          -117.0,
          -297.0,
          -196.0,
          -206.0,
          341.0,
          166.0,
          181.0,
          129.0,
          -207.0,
          55.0,
          86.0,
        ],
        timezone: 'Africa/Abidjan',
        week_start: Models::Shared::WeekStart::MO,
      ),
      Models::Shared::CalendarEventRecurrence.new(
        count: 3.0,
        end_at: DateTime.iso8601('2022-10-01T00:02:27.306Z'),
        excluded_dates: [
          '2024-09-04T17:33:58.037Z',
          '2024-08-20T03:11:24.060Z',
        ],
        frequency: Models::Shared::CalendarEventRecurrenceFrequency::DAILY,
        included_dates: [
          '2024-03-27T13:06:28.338Z',
          '2026-01-18T06:20:56.189Z',
          '2023-08-15T18:58:36.201Z',
        ],
        interval: 1.0,
        on_days: [
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::WE,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::SU,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::MO,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::FR,
        ],
        on_month_days: [
          -15.0,
        ],
        on_months: [
          5.0,
          12.0,
          3.0,
          12.0,
          8.0,
        ],
        on_weeks: [
          -47.0,
          44.0,
        ],
        on_year_days: [
          -117.0,
          59.0,
          -6.0,
          187.0,
          45.0,
          70.0,
          15.0,
          255.0,
          44.0,
          -2.0,
          25.0,
          -175.0,
          -240.0,
          171.0,
          -294.0,
          19.0,
          38.0,
          -351.0,
          170.0,
          -10.0,
          -269.0,
          18.0,
          -65.0,
          -266.0,
          -31.0,
          328.0,
          -361.0,
          358.0,
          -256.0,
          -4.0,
          -312.0,
          82.0,
          -2.0,
          -75.0,
          -281.0,
          -304.0,
          53.0,
          -295.0,
          366.0,
          322.0,
          -191.0,
          26.0,
          97.0,
          53.0,
          75.0,
          -62.0,
          -109.0,
          66.0,
          177.0,
          -68.0,
          175.0,
          -280.0,
          70.0,
          -238.0,
          109.0,
          -304.0,
          326.0,
          -8.0,
          -71.0,
          -236.0,
          225.0,
          358.0,
          20.0,
          -5.0,
          -102.0,
          -134.0,
          -204.0,
          -116.0,
          -353.0,
          -273.0,
          106.0,
          284.0,
          -137.0,
          -324.0,
          301.0,
          -42.0,
          -229.0,
          271.0,
          -293.0,
          -343.0,
          211.0,
          47.0,
          -254.0,
          -154.0,
          -182.0,
          264.0,
          120.0,
          -11.0,
          -307.0,
          99.0,
          227.0,
          190.0,
          -17.0,
          -77.0,
          -255.0,
          -61.0,
          -249.0,
          -102.0,
          70.0,
          345.0,
          -187.0,
          -308.0,
          194.0,
          221.0,
          268.0,
          -169.0,
          -190.0,
          88.0,
          10.0,
          262.0,
          177.0,
          -314.0,
          -151.0,
          -295.0,
        ],
        timezone: 'Asia/Choibalsan',
        week_start: Models::Shared::WeekStart::TU,
      ),
      Models::Shared::CalendarEventRecurrence.new(
        count: 8.0,
        end_at: DateTime.iso8601('2026-08-01T03:05:19.655Z'),
        excluded_dates: [
          '2023-06-19T21:57:34.091Z',
          '2023-06-08T21:48:24.575Z',
        ],
        frequency: Models::Shared::CalendarEventRecurrenceFrequency::WEEKLY,
        included_dates: [
          '2024-04-04T14:42:29.981Z',
          '2023-08-21T14:55:49.873Z',
          '2024-09-30T00:37:58.126Z',
        ],
        interval: 8.0,
        on_days: [
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::SU,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::MO,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::TU,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::FR,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::MO,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::TH,
        ],
        on_month_days: [
          -23.0,
        ],
        on_months: [
          11.0,
          8.0,
          9.0,
          5.0,
          -12.0,
          -7.0,
          -5.0,
          10.0,
          10.0,
          -9.0,
          -10.0,
        ],
        on_weeks: [
          -49.0,
          46.0,
          35.0,
          -26.0,
          2.0,
          15.0,
          15.0,
          -26.0,
          24.0,
          -53.0,
          36.0,
          -43.0,
          51.0,
          -19.0,
          -7.0,
          -12.0,
          28.0,
          27.0,
          35.0,
          12.0,
          -28.0,
          -8.0,
          -4.0,
          -45.0,
        ],
        on_year_days: [
          84.0,
          -251.0,
          71.0,
          181.0,
          -163.0,
          158.0,
          301.0,
          -299.0,
          -184.0,
          -331.0,
          -152.0,
          -129.0,
          -237.0,
          -303.0,
          -24.0,
          126.0,
          -103.0,
          146.0,
          -346.0,
          86.0,
          -296.0,
          -337.0,
          -185.0,
          16.0,
          -270.0,
          -126.0,
          -295.0,
          -231.0,
          356.0,
          -293.0,
          115.0,
          -265.0,
          -293.0,
          -34.0,
          357.0,
          313.0,
          -343.0,
          180.0,
          -22.0,
          -161.0,
          350.0,
          177.0,
          190.0,
          223.0,
          -152.0,
          -360.0,
          -225.0,
          -60.0,
          -35.0,
          353.0,
          117.0,
          -171.0,
          -315.0,
          -321.0,
          -202.0,
          345.0,
          -1.0,
          -148.0,
          -168.0,
          181.0,
          -17.0,
          282.0,
          234.0,
          31.0,
          47.0,
          -236.0,
          366.0,
          -251.0,
          -232.0,
          -308.0,
          76.0,
          -199.0,
          184.0,
          198.0,
          225.0,
          75.0,
          6.0,
          227.0,
          -148.0,
          259.0,
          -146.0,
          49.0,
          -254.0,
          341.0,
          93.0,
          138.0,
          -164.0,
          237.0,
          4.0,
          -287.0,
          161.0,
        ],
        timezone: 'Asia/Krasnoyarsk',
        week_start: Models::Shared::WeekStart::WE,
      ),
    ],
    registrant_password: 'W7J6DhkM',
    require_address: false,
    require_job_title: false,
    start_at: DateTime.iso8601('2025-05-04T11:06:25.116Z'),
    status: Models::Shared::CalendarWebinarStatus::TENTATIVE,
    subject: 'Harum culpa decipio ex cubo ancilla cresco.',
    timezone: 'Europe/Kaliningrad',
    updated_at: DateTime.iso8601('2026-10-06T08:20:20.343Z'),
    web_url: 'https://quiet-permafrost.name',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.calendar.update_calendar_webinar(request: req)

unless res.calendar_webinar.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::UpdateCalendarWebinarRequest](../../models/operations/updatecalendarwebinarrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::UpdateCalendarWebinarResponse)](../../models/operations/updatecalendarwebinarresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |