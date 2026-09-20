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
* [get_calendar_recording](#get_calendar_recording) - Retrieve a recording
* [get_calendar_webinar](#get_calendar_webinar) - Retrieve a webinar
* [list_calendar_busies](#list_calendar_busies) - List all busies
* [list_calendar_calendars](#list_calendar_calendars) - List all calendars
* [list_calendar_events](#list_calendar_events) - List all events
* [list_calendar_links](#list_calendar_links) - List all links
* [list_calendar_recordings](#list_calendar_recordings) - List all recordings
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

Create a calendar

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
  description: 'Socius catena auxilium.',
  id: '1576bbf3-7098-42b1-9bc2-37b45be03b9e',
  is_primary: false,
  name: 'Acer supra vallum suasoria thesaurus omnis condico cognomen accendo vehemens.',
  timezone: 'America/Dawson_Creek',
  updated_at: DateTime.iso8601('2023-03-13T10:45:03.071Z'),
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

Create an event

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
  end_at: '2020-05-20T20:02:06.557Z',
  id: '14e0863e-a392-4acd-8261-9677d371a8ae',
  is_all_day: false,
  is_free: false,
  is_private: false,
  location: '621 Boehm Prairie',
  notes: 'Aegre traho.',
  recurrence: [
    Models::Shared::CalendarEventRecurrence.new(
      count: 8.0,
      end_at: DateTime.iso8601('2025-12-27T05:19:21.214Z'),
      excluded_dates: [
        '2025-10-01T20:36:45.930Z',
        '2023-10-10T03:06:00.387Z',
        '2024-02-16T05:27:46.959Z',
      ],
      frequency: Models::Shared::CalendarEventRecurrenceFrequency::MONTHLY,
      included_dates: [
        '2021-02-17T03:32:31.935Z',
      ],
      interval: 4.0,
      on_days: [
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::TH,
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::MO,
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::TH,
      ],
      on_month_days: [
        -26.0,
      ],
      on_months: [
        12.0,
        9.0,
        -1.0,
        0.0,
        1.0,
        6.0,
        -10.0,
        9.0,
        0.0,
        4.0,
        -2.0,
      ],
      on_weeks: [
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
      ],
      on_year_days: [
        -35.0,
        14.0,
        -338.0,
        175.0,
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
      ],
      timezone: 'Asia/Ho_Chi_Minh',
      week_start: Models::Shared::WeekStart::SU,
    ),
    Models::Shared::CalendarEventRecurrence.new(
      count: 9.0,
      end_at: DateTime.iso8601('2025-05-01T02:16:53.539Z'),
      excluded_dates: [
        '2020-04-29T03:20:09.978Z',
      ],
      frequency: Models::Shared::CalendarEventRecurrenceFrequency::DAILY,
      included_dates: [
        '2020-09-11T06:30:00.901Z',
        '2021-11-29T09:42:57.135Z',
        '2019-12-22T19:27:57.829Z',
      ],
      interval: 1.0,
      on_days: [
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::WE,
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::TU,
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::WE,
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::SA,
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::SA,
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::SA,
      ],
      on_month_days: [
        1.0,
      ],
      on_months: [
        4.0,
        0.0,
        -3.0,
      ],
      on_weeks: [
        -7.0,
        -19.0,
        50.0,
        -37.0,
        43.0,
        -48.0,
        -30.0,
        34.0,
        36.0,
        -33.0,
        24.0,
        -4.0,
      ],
      on_year_days: [
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
        -35.0,
        -121.0,
        262.0,
        32.0,
        190.0,
        107.0,
        -145.0,
        91.0,
        313.0,
        -48.0,
        277.0,
        104.0,
        342.0,
        297.0,
        -216.0,
        346.0,
        -257.0,
        307.0,
        -44.0,
        264.0,
        -153.0,
        -268.0,
        92.0,
        152.0,
        -182.0,
        -334.0,
        89.0,
        343.0,
        -320.0,
        -36.0,
        84.0,
        340.0,
        -88.0,
        -278.0,
        202.0,
        291.0,
        95.0,
        -234.0,
        -304.0,
        -157.0,
        -82.0,
        -339.0,
        83.0,
        2.0,
        -238.0,
        -204.0,
        206.0,
        -273.0,
        -78.0,
        -21.0,
        270.0,
        -266.0,
        -276.0,
        154.0,
        -97.0,
        -43.0,
        -3.0,
        191.0,
        -302.0,
        290.0,
        -118.0,
        -125.0,
        -294.0,
        115.0,
        -73.0,
        -244.0,
        127.0,
        26.0,
        251.0,
        47.0,
        -157.0,
        22.0,
        -361.0,
        318.0,
        352.0,
        358.0,
        167.0,
        210.0,
        -185.0,
        327.0,
        117.0,
        350.0,
        -170.0,
        -144.0,
        -14.0,
        -37.0,
        318.0,
        243.0,
        33.0,
        90.0,
        319.0,
        -270.0,
        229.0,
        122.0,
        287.0,
        -90.0,
        -69.0,
        -134.0,
        -184.0,
        25.0,
        -178.0,
        -89.0,
        -273.0,
        -49.0,
        -362.0,
        -9.0,
        -71.0,
        -347.0,
        353.0,
        342.0,
        133.0,
        -116.0,
        231.0,
        -231.0,
        51.0,
        288.0,
        186.0,
        -328.0,
        275.0,
        81.0,
        94.0,
        -263.0,
        114.0,
        13.0,
        -357.0,
        171.0,
        -242.0,
        -85.0,
        -362.0,
        108.0,
        164.0,
        69.0,
        15.0,
        57.0,
        -287.0,
        100.0,
        165.0,
        205.0,
        204.0,
        -78.0,
        360.0,
        -80.0,
        -120.0,
        -255.0,
        -77.0,
        110.0,
        -26.0,
        -149.0,
        -254.0,
        95.0,
        32.0,
        -57.0,
        -195.0,
        100.0,
        221.0,
        74.0,
        274.0,
        15.0,
        353.0,
        204.0,
        -365.0,
        315.0,
        344.0,
        199.0,
        -59.0,
        272.0,
        173.0,
        -40.0,
        -318.0,
        -330.0,
        -365.0,
        -272.0,
        -149.0,
        -27.0,
        -334.0,
        -277.0,
        344.0,
        351.0,
        -310.0,
        264.0,
        281.0,
        176.0,
        191.0,
        -183.0,
        288.0,
        -112.0,
        -55.0,
        -166.0,
        258.0,
        194.0,
        59.0,
      ],
      timezone: 'America/Guadeloupe',
      week_start: Models::Shared::WeekStart::TU,
    ),
    Models::Shared::CalendarEventRecurrence.new(
      count: 1.0,
      end_at: DateTime.iso8601('2020-11-04T22:21:34.626Z'),
      excluded_dates: [
        '2023-01-12T09:48:31.530Z',
        '2021-09-07T20:48:34.188Z',
      ],
      frequency: Models::Shared::CalendarEventRecurrenceFrequency::WEEKLY,
      included_dates: [
        '2024-09-01T05:01:42.985Z',
      ],
      interval: 9.0,
      on_days: [
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::TU,
        Models::Shared::PropertyCalendarEventRecurrenceOnDays::SA,
      ],
      on_month_days: [
        -2.0,
      ],
      on_months: [
        -4.0,
        8.0,
        0.0,
        9.0,
        4.0,
        -11.0,
        7.0,
        1.0,
        -5.0,
      ],
      on_weeks: [
        -36.0,
        -31.0,
        -16.0,
        -6.0,
        44.0,
        -37.0,
        14.0,
        38.0,
        -27.0,
        -22.0,
        -2.0,
        24.0,
        7.0,
        50.0,
        46.0,
        52.0,
        20.0,
        37.0,
        31.0,
        48.0,
        35.0,
        -46.0,
        13.0,
        22.0,
        53.0,
        20.0,
        -28.0,
        -2.0,
        39.0,
        13.0,
        4.0,
        0.0,
        7.0,
        -38.0,
        -35.0,
        41.0,
        49.0,
        12.0,
        17.0,
        8.0,
        49.0,
        -47.0,
        46.0,
        25.0,
        14.0,
        -26.0,
        -37.0,
        -25.0,
        -41.0,
        27.0,
        28.0,
        -19.0,
      ],
      on_year_days: [
        -256.0,
        -328.0,
        -312.0,
        50.0,
        -251.0,
        -338.0,
        -315.0,
        214.0,
        129.0,
        -263.0,
        -108.0,
        -11.0,
        206.0,
        -29.0,
        -159.0,
        -29.0,
        -264.0,
        295.0,
        -231.0,
        53.0,
        34.0,
        -366.0,
        326.0,
        -202.0,
        151.0,
        79.0,
        -66.0,
        11.0,
        -42.0,
        73.0,
        338.0,
        -155.0,
        197.0,
        260.0,
        356.0,
        -323.0,
        -213.0,
        -332.0,
        -305.0,
        -182.0,
        -253.0,
        -276.0,
        -285.0,
        96.0,
        -336.0,
        269.0,
        -233.0,
        250.0,
        -112.0,
        -307.0,
        -96.0,
        54.0,
        267.0,
        318.0,
        -66.0,
        11.0,
        -303.0,
        231.0,
        165.0,
        -297.0,
        -348.0,
        -355.0,
        364.0,
        312.0,
        -26.0,
        111.0,
        162.0,
        280.0,
        312.0,
        337.0,
        235.0,
        68.0,
        -282.0,
        363.0,
        212.0,
        -328.0,
        9.0,
        -24.0,
        -163.0,
        -101.0,
        -79.0,
        -264.0,
        -157.0,
        188.0,
        290.0,
        51.0,
        -213.0,
        216.0,
        230.0,
        -270.0,
        -211.0,
        -156.0,
        -165.0,
        -305.0,
        -45.0,
        224.0,
        -248.0,
        65.0,
        9.0,
        274.0,
        -299.0,
        -228.0,
        33.0,
        -42.0,
        356.0,
        -311.0,
        241.0,
        261.0,
        -136.0,
        -252.0,
        166.0,
        208.0,
        -126.0,
        64.0,
        323.0,
        -104.0,
        -106.0,
        -248.0,
        -41.0,
        -109.0,
        245.0,
        47.0,
        205.0,
        358.0,
        -296.0,
        214.0,
        -157.0,
        -313.0,
        -303.0,
        -54.0,
        -229.0,
        231.0,
        -94.0,
        -198.0,
        338.0,
        199.0,
        5.0,
        42.0,
        309.0,
        73.0,
        56.0,
        -120.0,
        351.0,
        6.0,
        -193.0,
        21.0,
        78.0,
        57.0,
        -269.0,
        -76.0,
        -299.0,
        295.0,
        -278.0,
        11.0,
        121.0,
        -323.0,
        156.0,
        67.0,
        152.0,
        284.0,
        108.0,
        -7.0,
        329.0,
        -32.0,
        333.0,
        -338.0,
        148.0,
        -42.0,
        151.0,
        145.0,
        -34.0,
        -36.0,
        296.0,
        -198.0,
        -317.0,
        -161.0,
        -253.0,
        328.0,
        -57.0,
        134.0,
        -289.0,
        229.0,
        44.0,
        16.0,
        -256.0,
        289.0,
        -234.0,
        197.0,
        333.0,
        228.0,
        -143.0,
        -202.0,
        -172.0,
        -262.0,
        -203.0,
        -83.0,
        -242.0,
        -173.0,
        336.0,
        298.0,
        -319.0,
        66.0,
        254.0,
        214.0,
        -118.0,
        -216.0,
        -168.0,
        44.0,
        -243.0,
        207.0,
        -28.0,
        -4.0,
        -272.0,
        79.0,
      ],
      timezone: 'Atlantic/Reykjavik',
      week_start: Models::Shared::WeekStart::TU,
    ),
  ],
  recurring_event_id: 'fd7d1734-8fa9-4bb3-a839-f97e8353be38',
  send_notifications: false,
  start_at: '2020-05-20T10:55:00.408Z',
  status: Models::Shared::CalendarEventStatus::CONFIRMED,
  subject: 'Sunt spargo tepidus bestia vigor credo coadunatio appello.',
  timezone: 'Asia/Bangkok',
  updated_at: '2020-06-26T07:58:34.744Z',
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

Create a link

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
  id: '9c25c3f0-dc17-4f27-b9c8-17761fb93b62',
  is_active: true,
  name: 'Sopor sopor ancilla animus anser dignissimos vito confero utilis.',
  price_amount: 44.0,
  price_currency: 'USD',
  updated_at: '2024-03-06T18:41:05.445Z',
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

Create a webinar

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
  end_at: DateTime.iso8601('2025-10-04T18:38:49.395Z'),
  has_polls: false,
  has_recording: false,
  id: '0b579690-ef6a-4260-8976-bd97b84f5075',
  is_auto_approve: false,
  is_enabled: true,
  is_webcast: false,
  join_url: 'https://robust-bathhouse.biz',
  notes: 'Curriculum ducimus assentator aspernatur ait.',
  organizer: Models::Shared::PropertyCalendarWebinarOrganizer.new(
    email: 'Kelton_Dicki@yahoo.com',
    name: 'Walter Greenfelder',
  ),
  recurrence: [
    Models::Shared::CalendarEventRecurrence.new(
      count: 10.0,
      end_at: DateTime.iso8601('2023-08-23T06:49:23.285Z'),
      excluded_dates: [
        '2025-01-25T04:15:38.442Z',
      ],
      frequency: Models::Shared::CalendarEventRecurrenceFrequency::MONTHLY,
      included_dates: [
        '2024-04-15T04:31:03.643Z',
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
      timezone: 'Asia/Ust-Nera',
      week_start: Models::Shared::WeekStart::MO,
    ),
    Models::Shared::CalendarEventRecurrence.new(
      count: 3.0,
      end_at: DateTime.iso8601('2022-09-28T23:17:58.087Z'),
      excluded_dates: [
        '2024-08-17T03:46:28.744Z',
        '2024-08-01T22:11:13.691Z',
      ],
      frequency: Models::Shared::CalendarEventRecurrenceFrequency::DAILY,
      included_dates: [
        '2024-03-12T18:07:46.582Z',
        '2025-12-18T22:33:13.794Z',
        '2023-08-06T06:37:38.228Z',
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
      timezone: 'Pacific/Wake',
      week_start: Models::Shared::WeekStart::TU,
    ),
    Models::Shared::CalendarEventRecurrence.new(
      count: 8.0,
      end_at: DateTime.iso8601('2026-06-27T05:30:20.981Z'),
      excluded_dates: [
        '2023-06-11T17:39:15.184Z',
        '2023-05-31T23:42:09.489Z',
      ],
      frequency: Models::Shared::CalendarEventRecurrenceFrequency::WEEKLY,
      included_dates: [
        '2024-03-20T15:11:06.844Z',
        '2023-08-11T23:17:44.255Z',
        '2024-09-10T20:35:24.978Z',
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
      timezone: 'Africa/Bissau',
      week_start: Models::Shared::WeekStart::WE,
    ),
  ],
  registrant_password: 'OxwWzr0C',
  require_address: false,
  require_job_title: false,
  start_at: DateTime.iso8601('2025-04-10T05:07:21.411Z'),
  status: Models::Shared::CalendarWebinarStatus::TENTATIVE,
  subject: 'Harum culpa decipio ex cubo ancilla cresco.',
  timezone: 'Europe/Kaliningrad',
  updated_at: DateTime.iso8601('2026-08-30T21:26:52.438Z'),
  web_url: 'https://classic-recovery.biz',
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

Retrieve a calendar

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

Retrieve an event

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

Retrieve a link

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

## get_calendar_recording

Retrieve a recording

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

## get_calendar_webinar

Retrieve a webinar

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

List all busies

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

List all calendars

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

List all events

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

List all links

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

## list_calendar_recordings

List all recordings

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

## list_calendar_webinars

List all webinars

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

Update a calendar

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
    description: 'Socius catena auxilium.',
    id: '7413343a-b2d6-4195-a5ee-98b4d23f77a3',
    is_primary: false,
    name: 'Acer supra vallum suasoria thesaurus omnis condico cognomen accendo vehemens.',
    timezone: 'America/Dawson_Creek',
    updated_at: DateTime.iso8601('2023-03-13T10:45:03.075Z'),
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

Update an event

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
    end_at: '2020-05-20T20:02:06.562Z',
    id: 'c5fb61e8-fdc7-47e4-9967-3c96230c7e8b',
    is_all_day: false,
    is_free: false,
    is_private: false,
    location: '621 Boehm Prairie',
    notes: 'Aegre traho.',
    recurrence: [
      Models::Shared::CalendarEventRecurrence.new(
        count: 8.0,
        end_at: DateTime.iso8601('2025-12-27T05:19:21.258Z'),
        excluded_dates: [
          '2025-10-01T20:36:45.972Z',
          '2023-10-10T03:06:00.415Z',
          '2024-02-16T05:27:46.989Z',
        ],
        frequency: Models::Shared::CalendarEventRecurrenceFrequency::MONTHLY,
        included_dates: [
          '2021-02-17T03:32:31.946Z',
        ],
        interval: 4.0,
        on_days: [
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::TH,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::MO,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::TH,
        ],
        on_month_days: [
          -26.0,
        ],
        on_months: [
          12.0,
          9.0,
          -1.0,
          0.0,
          1.0,
          6.0,
          -10.0,
          9.0,
          0.0,
          4.0,
          -2.0,
        ],
        on_weeks: [
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
        ],
        on_year_days: [
          -35.0,
          14.0,
          -338.0,
          175.0,
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
        ],
        timezone: 'Asia/Ho_Chi_Minh',
        week_start: Models::Shared::WeekStart::SU,
      ),
      Models::Shared::CalendarEventRecurrence.new(
        count: 9.0,
        end_at: DateTime.iso8601('2025-05-01T02:16:53.577Z'),
        excluded_dates: [
          '2020-04-29T03:20:09.983Z',
        ],
        frequency: Models::Shared::CalendarEventRecurrenceFrequency::DAILY,
        included_dates: [
          '2020-09-11T06:30:00.908Z',
          '2021-11-29T09:42:57.151Z',
          '2019-12-22T19:27:57.832Z',
        ],
        interval: 1.0,
        on_days: [
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::WE,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::TU,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::WE,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::SA,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::SA,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::SA,
        ],
        on_month_days: [
          1.0,
        ],
        on_months: [
          4.0,
          0.0,
          -3.0,
        ],
        on_weeks: [
          -7.0,
          -19.0,
          50.0,
          -37.0,
          43.0,
          -48.0,
          -30.0,
          34.0,
          36.0,
          -33.0,
          24.0,
          -4.0,
        ],
        on_year_days: [
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
          -35.0,
          -121.0,
          262.0,
          32.0,
          190.0,
          107.0,
          -145.0,
          91.0,
          313.0,
          -48.0,
          277.0,
          104.0,
          342.0,
          297.0,
          -216.0,
          346.0,
          -257.0,
          307.0,
          -44.0,
          264.0,
          -153.0,
          -268.0,
          92.0,
          152.0,
          -182.0,
          -334.0,
          89.0,
          343.0,
          -320.0,
          -36.0,
          84.0,
          340.0,
          -88.0,
          -278.0,
          202.0,
          291.0,
          95.0,
          -234.0,
          -304.0,
          -157.0,
          -82.0,
          -339.0,
          83.0,
          2.0,
          -238.0,
          -204.0,
          206.0,
          -273.0,
          -78.0,
          -21.0,
          270.0,
          -266.0,
          -276.0,
          154.0,
          -97.0,
          -43.0,
          -3.0,
          191.0,
          -302.0,
          290.0,
          -118.0,
          -125.0,
          -294.0,
          115.0,
          -73.0,
          -244.0,
          127.0,
          26.0,
          251.0,
          47.0,
          -157.0,
          22.0,
          -361.0,
          318.0,
          352.0,
          358.0,
          167.0,
          210.0,
          -185.0,
          327.0,
          117.0,
          350.0,
          -170.0,
          -144.0,
          -14.0,
          -37.0,
          318.0,
          243.0,
          33.0,
          90.0,
          319.0,
          -270.0,
          229.0,
          122.0,
          287.0,
          -90.0,
          -69.0,
          -134.0,
          -184.0,
          25.0,
          -178.0,
          -89.0,
          -273.0,
          -49.0,
          -362.0,
          -9.0,
          -71.0,
          -347.0,
          353.0,
          342.0,
          133.0,
          -116.0,
          231.0,
          -231.0,
          51.0,
          288.0,
          186.0,
          -328.0,
          275.0,
          81.0,
          94.0,
          -263.0,
          114.0,
          13.0,
          -357.0,
          171.0,
          -242.0,
          -85.0,
          -362.0,
          108.0,
          164.0,
          69.0,
          15.0,
          57.0,
          -287.0,
          100.0,
          165.0,
          205.0,
          204.0,
          -78.0,
          360.0,
          -80.0,
          -120.0,
          -255.0,
          -77.0,
          110.0,
          -26.0,
          -149.0,
          -254.0,
          95.0,
          32.0,
          -57.0,
          -195.0,
          100.0,
          221.0,
          74.0,
          274.0,
          15.0,
          353.0,
          204.0,
          -365.0,
          315.0,
          344.0,
          199.0,
          -59.0,
          272.0,
          173.0,
          -40.0,
          -318.0,
          -330.0,
          -365.0,
          -272.0,
          -149.0,
          -27.0,
          -334.0,
          -277.0,
          344.0,
          351.0,
          -310.0,
          264.0,
          281.0,
          176.0,
          191.0,
          -183.0,
          288.0,
          -112.0,
          -55.0,
          -166.0,
          258.0,
          194.0,
          59.0,
        ],
        timezone: 'America/Guadeloupe',
        week_start: Models::Shared::WeekStart::TU,
      ),
      Models::Shared::CalendarEventRecurrence.new(
        count: 1.0,
        end_at: DateTime.iso8601('2020-11-04T22:21:34.635Z'),
        excluded_dates: [
          '2023-01-12T09:48:31.553Z',
          '2021-09-07T20:48:34.202Z',
        ],
        frequency: Models::Shared::CalendarEventRecurrenceFrequency::WEEKLY,
        included_dates: [
          '2024-09-01T05:01:43.018Z',
        ],
        interval: 9.0,
        on_days: [
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::TU,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::SA,
        ],
        on_month_days: [
          -2.0,
        ],
        on_months: [
          -4.0,
          8.0,
          0.0,
          9.0,
          4.0,
          -11.0,
          7.0,
          1.0,
          -5.0,
        ],
        on_weeks: [
          -36.0,
          -31.0,
          -16.0,
          -6.0,
          44.0,
          -37.0,
          14.0,
          38.0,
          -27.0,
          -22.0,
          -2.0,
          24.0,
          7.0,
          50.0,
          46.0,
          52.0,
          20.0,
          37.0,
          31.0,
          48.0,
          35.0,
          -46.0,
          13.0,
          22.0,
          53.0,
          20.0,
          -28.0,
          -2.0,
          39.0,
          13.0,
          4.0,
          0.0,
          7.0,
          -38.0,
          -35.0,
          41.0,
          49.0,
          12.0,
          17.0,
          8.0,
          49.0,
          -47.0,
          46.0,
          25.0,
          14.0,
          -26.0,
          -37.0,
          -25.0,
          -41.0,
          27.0,
          28.0,
          -19.0,
        ],
        on_year_days: [
          -256.0,
          -328.0,
          -312.0,
          50.0,
          -251.0,
          -338.0,
          -315.0,
          214.0,
          129.0,
          -263.0,
          -108.0,
          -11.0,
          206.0,
          -29.0,
          -159.0,
          -29.0,
          -264.0,
          295.0,
          -231.0,
          53.0,
          34.0,
          -366.0,
          326.0,
          -202.0,
          151.0,
          79.0,
          -66.0,
          11.0,
          -42.0,
          73.0,
          338.0,
          -155.0,
          197.0,
          260.0,
          356.0,
          -323.0,
          -213.0,
          -332.0,
          -305.0,
          -182.0,
          -253.0,
          -276.0,
          -285.0,
          96.0,
          -336.0,
          269.0,
          -233.0,
          250.0,
          -112.0,
          -307.0,
          -96.0,
          54.0,
          267.0,
          318.0,
          -66.0,
          11.0,
          -303.0,
          231.0,
          165.0,
          -297.0,
          -348.0,
          -355.0,
          364.0,
          312.0,
          -26.0,
          111.0,
          162.0,
          280.0,
          312.0,
          337.0,
          235.0,
          68.0,
          -282.0,
          363.0,
          212.0,
          -328.0,
          9.0,
          -24.0,
          -163.0,
          -101.0,
          -79.0,
          -264.0,
          -157.0,
          188.0,
          290.0,
          51.0,
          -213.0,
          216.0,
          230.0,
          -270.0,
          -211.0,
          -156.0,
          -165.0,
          -305.0,
          -45.0,
          224.0,
          -248.0,
          65.0,
          9.0,
          274.0,
          -299.0,
          -228.0,
          33.0,
          -42.0,
          356.0,
          -311.0,
          241.0,
          261.0,
          -136.0,
          -252.0,
          166.0,
          208.0,
          -126.0,
          64.0,
          323.0,
          -104.0,
          -106.0,
          -248.0,
          -41.0,
          -109.0,
          245.0,
          47.0,
          205.0,
          358.0,
          -296.0,
          214.0,
          -157.0,
          -313.0,
          -303.0,
          -54.0,
          -229.0,
          231.0,
          -94.0,
          -198.0,
          338.0,
          199.0,
          5.0,
          42.0,
          309.0,
          73.0,
          56.0,
          -120.0,
          351.0,
          6.0,
          -193.0,
          21.0,
          78.0,
          57.0,
          -269.0,
          -76.0,
          -299.0,
          295.0,
          -278.0,
          11.0,
          121.0,
          -323.0,
          156.0,
          67.0,
          152.0,
          284.0,
          108.0,
          -7.0,
          329.0,
          -32.0,
          333.0,
          -338.0,
          148.0,
          -42.0,
          151.0,
          145.0,
          -34.0,
          -36.0,
          296.0,
          -198.0,
          -317.0,
          -161.0,
          -253.0,
          328.0,
          -57.0,
          134.0,
          -289.0,
          229.0,
          44.0,
          16.0,
          -256.0,
          289.0,
          -234.0,
          197.0,
          333.0,
          228.0,
          -143.0,
          -202.0,
          -172.0,
          -262.0,
          -203.0,
          -83.0,
          -242.0,
          -173.0,
          336.0,
          298.0,
          -319.0,
          66.0,
          254.0,
          214.0,
          -118.0,
          -216.0,
          -168.0,
          44.0,
          -243.0,
          207.0,
          -28.0,
          -4.0,
          -272.0,
          79.0,
        ],
        timezone: 'Atlantic/Reykjavik',
        week_start: Models::Shared::WeekStart::TU,
      ),
    ],
    recurring_event_id: '892d0b90-62fb-44a9-ab72-93756ddbda5d',
    send_notifications: false,
    start_at: '2020-05-20T10:55:00.413Z',
    status: Models::Shared::CalendarEventStatus::CONFIRMED,
    subject: 'Sunt spargo tepidus bestia vigor credo coadunatio appello.',
    timezone: 'Asia/Bangkok',
    updated_at: '2020-06-26T07:58:34.750Z',
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

Update a link

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
    id: '5e216c43-8c58-43fb-9824-8ca34d792486',
    is_active: true,
    name: 'Sopor sopor ancilla animus anser dignissimos vito confero utilis.',
    price_amount: 44.0,
    price_currency: 'USD',
    updated_at: '2024-03-06T18:41:05.448Z',
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

Update a webinar

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
    end_at: DateTime.iso8601('2025-10-04T18:38:49.441Z'),
    has_polls: false,
    has_recording: false,
    id: 'e9fd6c7f-99cb-4a9d-a672-e1efeed88a85',
    is_auto_approve: false,
    is_enabled: true,
    is_webcast: false,
    join_url: 'https://robust-bathhouse.biz',
    notes: 'Curriculum ducimus assentator aspernatur ait.',
    organizer: Models::Shared::PropertyCalendarWebinarOrganizer.new(
      email: 'Kelton_Dicki@yahoo.com',
      name: 'Walter Greenfelder',
    ),
    recurrence: [
      Models::Shared::CalendarEventRecurrence.new(
        count: 10.0,
        end_at: DateTime.iso8601('2023-08-23T06:49:23.301Z'),
        excluded_dates: [
          '2025-01-25T04:15:38.478Z',
        ],
        frequency: Models::Shared::CalendarEventRecurrenceFrequency::MONTHLY,
        included_dates: [
          '2024-04-15T04:31:03.667Z',
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
        timezone: 'Asia/Ust-Nera',
        week_start: Models::Shared::WeekStart::MO,
      ),
      Models::Shared::CalendarEventRecurrence.new(
        count: 3.0,
        end_at: DateTime.iso8601('2022-09-28T23:17:58.090Z'),
        excluded_dates: [
          '2024-08-17T03:46:28.774Z',
          '2024-08-01T22:11:13.721Z',
        ],
        frequency: Models::Shared::CalendarEventRecurrenceFrequency::DAILY,
        included_dates: [
          '2024-03-12T18:07:46.606Z',
          '2025-12-18T22:33:13.842Z',
          '2023-08-06T06:37:38.244Z',
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
        timezone: 'Pacific/Wake',
        week_start: Models::Shared::WeekStart::TU,
      ),
      Models::Shared::CalendarEventRecurrence.new(
        count: 8.0,
        end_at: DateTime.iso8601('2026-06-27T05:30:21.038Z'),
        excluded_dates: [
          '2023-06-11T17:39:15.197Z',
          '2023-05-31T23:42:09.502Z',
        ],
        frequency: Models::Shared::CalendarEventRecurrenceFrequency::WEEKLY,
        included_dates: [
          '2024-03-20T15:11:06.868Z',
          '2023-08-11T23:17:44.271Z',
          '2024-09-10T20:35:25.009Z',
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
        timezone: 'Africa/Bissau',
        week_start: Models::Shared::WeekStart::WE,
      ),
    ],
    registrant_password: 'OxwWzr0C',
    require_address: false,
    require_job_title: false,
    start_at: DateTime.iso8601('2025-04-10T05:07:21.450Z'),
    status: Models::Shared::CalendarWebinarStatus::TENTATIVE,
    subject: 'Harum culpa decipio ex cubo ancilla cresco.',
    timezone: 'Europe/Kaliningrad',
    updated_at: DateTime.iso8601('2026-08-30T21:26:52.497Z'),
    web_url: 'https://classic-recovery.biz',
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

Remove a calendar

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

Remove an event

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

Remove a link

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

Remove a webinar

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

Update a calendar

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
    description: 'Socius catena auxilium.',
    id: '7413343a-b2d6-4195-a5ee-98b4d23f77a3',
    is_primary: false,
    name: 'Acer supra vallum suasoria thesaurus omnis condico cognomen accendo vehemens.',
    timezone: 'America/Dawson_Creek',
    updated_at: DateTime.iso8601('2023-03-13T10:45:03.075Z'),
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

Update an event

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
    end_at: '2020-05-20T20:02:06.562Z',
    id: 'c5fb61e8-fdc7-47e4-9967-3c96230c7e8b',
    is_all_day: false,
    is_free: false,
    is_private: false,
    location: '621 Boehm Prairie',
    notes: 'Aegre traho.',
    recurrence: [
      Models::Shared::CalendarEventRecurrence.new(
        count: 8.0,
        end_at: DateTime.iso8601('2025-12-27T05:19:21.258Z'),
        excluded_dates: [
          '2025-10-01T20:36:45.972Z',
          '2023-10-10T03:06:00.415Z',
          '2024-02-16T05:27:46.989Z',
        ],
        frequency: Models::Shared::CalendarEventRecurrenceFrequency::MONTHLY,
        included_dates: [
          '2021-02-17T03:32:31.946Z',
        ],
        interval: 4.0,
        on_days: [
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::TH,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::MO,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::TH,
        ],
        on_month_days: [
          -26.0,
        ],
        on_months: [
          12.0,
          9.0,
          -1.0,
          0.0,
          1.0,
          6.0,
          -10.0,
          9.0,
          0.0,
          4.0,
          -2.0,
        ],
        on_weeks: [
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
        ],
        on_year_days: [
          -35.0,
          14.0,
          -338.0,
          175.0,
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
        ],
        timezone: 'Asia/Ho_Chi_Minh',
        week_start: Models::Shared::WeekStart::SU,
      ),
      Models::Shared::CalendarEventRecurrence.new(
        count: 9.0,
        end_at: DateTime.iso8601('2025-05-01T02:16:53.577Z'),
        excluded_dates: [
          '2020-04-29T03:20:09.983Z',
        ],
        frequency: Models::Shared::CalendarEventRecurrenceFrequency::DAILY,
        included_dates: [
          '2020-09-11T06:30:00.908Z',
          '2021-11-29T09:42:57.151Z',
          '2019-12-22T19:27:57.832Z',
        ],
        interval: 1.0,
        on_days: [
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::WE,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::TU,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::WE,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::SA,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::SA,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::SA,
        ],
        on_month_days: [
          1.0,
        ],
        on_months: [
          4.0,
          0.0,
          -3.0,
        ],
        on_weeks: [
          -7.0,
          -19.0,
          50.0,
          -37.0,
          43.0,
          -48.0,
          -30.0,
          34.0,
          36.0,
          -33.0,
          24.0,
          -4.0,
        ],
        on_year_days: [
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
          -35.0,
          -121.0,
          262.0,
          32.0,
          190.0,
          107.0,
          -145.0,
          91.0,
          313.0,
          -48.0,
          277.0,
          104.0,
          342.0,
          297.0,
          -216.0,
          346.0,
          -257.0,
          307.0,
          -44.0,
          264.0,
          -153.0,
          -268.0,
          92.0,
          152.0,
          -182.0,
          -334.0,
          89.0,
          343.0,
          -320.0,
          -36.0,
          84.0,
          340.0,
          -88.0,
          -278.0,
          202.0,
          291.0,
          95.0,
          -234.0,
          -304.0,
          -157.0,
          -82.0,
          -339.0,
          83.0,
          2.0,
          -238.0,
          -204.0,
          206.0,
          -273.0,
          -78.0,
          -21.0,
          270.0,
          -266.0,
          -276.0,
          154.0,
          -97.0,
          -43.0,
          -3.0,
          191.0,
          -302.0,
          290.0,
          -118.0,
          -125.0,
          -294.0,
          115.0,
          -73.0,
          -244.0,
          127.0,
          26.0,
          251.0,
          47.0,
          -157.0,
          22.0,
          -361.0,
          318.0,
          352.0,
          358.0,
          167.0,
          210.0,
          -185.0,
          327.0,
          117.0,
          350.0,
          -170.0,
          -144.0,
          -14.0,
          -37.0,
          318.0,
          243.0,
          33.0,
          90.0,
          319.0,
          -270.0,
          229.0,
          122.0,
          287.0,
          -90.0,
          -69.0,
          -134.0,
          -184.0,
          25.0,
          -178.0,
          -89.0,
          -273.0,
          -49.0,
          -362.0,
          -9.0,
          -71.0,
          -347.0,
          353.0,
          342.0,
          133.0,
          -116.0,
          231.0,
          -231.0,
          51.0,
          288.0,
          186.0,
          -328.0,
          275.0,
          81.0,
          94.0,
          -263.0,
          114.0,
          13.0,
          -357.0,
          171.0,
          -242.0,
          -85.0,
          -362.0,
          108.0,
          164.0,
          69.0,
          15.0,
          57.0,
          -287.0,
          100.0,
          165.0,
          205.0,
          204.0,
          -78.0,
          360.0,
          -80.0,
          -120.0,
          -255.0,
          -77.0,
          110.0,
          -26.0,
          -149.0,
          -254.0,
          95.0,
          32.0,
          -57.0,
          -195.0,
          100.0,
          221.0,
          74.0,
          274.0,
          15.0,
          353.0,
          204.0,
          -365.0,
          315.0,
          344.0,
          199.0,
          -59.0,
          272.0,
          173.0,
          -40.0,
          -318.0,
          -330.0,
          -365.0,
          -272.0,
          -149.0,
          -27.0,
          -334.0,
          -277.0,
          344.0,
          351.0,
          -310.0,
          264.0,
          281.0,
          176.0,
          191.0,
          -183.0,
          288.0,
          -112.0,
          -55.0,
          -166.0,
          258.0,
          194.0,
          59.0,
        ],
        timezone: 'America/Guadeloupe',
        week_start: Models::Shared::WeekStart::TU,
      ),
      Models::Shared::CalendarEventRecurrence.new(
        count: 1.0,
        end_at: DateTime.iso8601('2020-11-04T22:21:34.635Z'),
        excluded_dates: [
          '2023-01-12T09:48:31.553Z',
          '2021-09-07T20:48:34.202Z',
        ],
        frequency: Models::Shared::CalendarEventRecurrenceFrequency::WEEKLY,
        included_dates: [
          '2024-09-01T05:01:43.018Z',
        ],
        interval: 9.0,
        on_days: [
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::TU,
          Models::Shared::PropertyCalendarEventRecurrenceOnDays::SA,
        ],
        on_month_days: [
          -2.0,
        ],
        on_months: [
          -4.0,
          8.0,
          0.0,
          9.0,
          4.0,
          -11.0,
          7.0,
          1.0,
          -5.0,
        ],
        on_weeks: [
          -36.0,
          -31.0,
          -16.0,
          -6.0,
          44.0,
          -37.0,
          14.0,
          38.0,
          -27.0,
          -22.0,
          -2.0,
          24.0,
          7.0,
          50.0,
          46.0,
          52.0,
          20.0,
          37.0,
          31.0,
          48.0,
          35.0,
          -46.0,
          13.0,
          22.0,
          53.0,
          20.0,
          -28.0,
          -2.0,
          39.0,
          13.0,
          4.0,
          0.0,
          7.0,
          -38.0,
          -35.0,
          41.0,
          49.0,
          12.0,
          17.0,
          8.0,
          49.0,
          -47.0,
          46.0,
          25.0,
          14.0,
          -26.0,
          -37.0,
          -25.0,
          -41.0,
          27.0,
          28.0,
          -19.0,
        ],
        on_year_days: [
          -256.0,
          -328.0,
          -312.0,
          50.0,
          -251.0,
          -338.0,
          -315.0,
          214.0,
          129.0,
          -263.0,
          -108.0,
          -11.0,
          206.0,
          -29.0,
          -159.0,
          -29.0,
          -264.0,
          295.0,
          -231.0,
          53.0,
          34.0,
          -366.0,
          326.0,
          -202.0,
          151.0,
          79.0,
          -66.0,
          11.0,
          -42.0,
          73.0,
          338.0,
          -155.0,
          197.0,
          260.0,
          356.0,
          -323.0,
          -213.0,
          -332.0,
          -305.0,
          -182.0,
          -253.0,
          -276.0,
          -285.0,
          96.0,
          -336.0,
          269.0,
          -233.0,
          250.0,
          -112.0,
          -307.0,
          -96.0,
          54.0,
          267.0,
          318.0,
          -66.0,
          11.0,
          -303.0,
          231.0,
          165.0,
          -297.0,
          -348.0,
          -355.0,
          364.0,
          312.0,
          -26.0,
          111.0,
          162.0,
          280.0,
          312.0,
          337.0,
          235.0,
          68.0,
          -282.0,
          363.0,
          212.0,
          -328.0,
          9.0,
          -24.0,
          -163.0,
          -101.0,
          -79.0,
          -264.0,
          -157.0,
          188.0,
          290.0,
          51.0,
          -213.0,
          216.0,
          230.0,
          -270.0,
          -211.0,
          -156.0,
          -165.0,
          -305.0,
          -45.0,
          224.0,
          -248.0,
          65.0,
          9.0,
          274.0,
          -299.0,
          -228.0,
          33.0,
          -42.0,
          356.0,
          -311.0,
          241.0,
          261.0,
          -136.0,
          -252.0,
          166.0,
          208.0,
          -126.0,
          64.0,
          323.0,
          -104.0,
          -106.0,
          -248.0,
          -41.0,
          -109.0,
          245.0,
          47.0,
          205.0,
          358.0,
          -296.0,
          214.0,
          -157.0,
          -313.0,
          -303.0,
          -54.0,
          -229.0,
          231.0,
          -94.0,
          -198.0,
          338.0,
          199.0,
          5.0,
          42.0,
          309.0,
          73.0,
          56.0,
          -120.0,
          351.0,
          6.0,
          -193.0,
          21.0,
          78.0,
          57.0,
          -269.0,
          -76.0,
          -299.0,
          295.0,
          -278.0,
          11.0,
          121.0,
          -323.0,
          156.0,
          67.0,
          152.0,
          284.0,
          108.0,
          -7.0,
          329.0,
          -32.0,
          333.0,
          -338.0,
          148.0,
          -42.0,
          151.0,
          145.0,
          -34.0,
          -36.0,
          296.0,
          -198.0,
          -317.0,
          -161.0,
          -253.0,
          328.0,
          -57.0,
          134.0,
          -289.0,
          229.0,
          44.0,
          16.0,
          -256.0,
          289.0,
          -234.0,
          197.0,
          333.0,
          228.0,
          -143.0,
          -202.0,
          -172.0,
          -262.0,
          -203.0,
          -83.0,
          -242.0,
          -173.0,
          336.0,
          298.0,
          -319.0,
          66.0,
          254.0,
          214.0,
          -118.0,
          -216.0,
          -168.0,
          44.0,
          -243.0,
          207.0,
          -28.0,
          -4.0,
          -272.0,
          79.0,
        ],
        timezone: 'Atlantic/Reykjavik',
        week_start: Models::Shared::WeekStart::TU,
      ),
    ],
    recurring_event_id: '892d0b90-62fb-44a9-ab72-93756ddbda5d',
    send_notifications: false,
    start_at: '2020-05-20T10:55:00.413Z',
    status: Models::Shared::CalendarEventStatus::CONFIRMED,
    subject: 'Sunt spargo tepidus bestia vigor credo coadunatio appello.',
    timezone: 'Asia/Bangkok',
    updated_at: '2020-06-26T07:58:34.750Z',
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

Update a link

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
    id: '5e216c43-8c58-43fb-9824-8ca34d792486',
    is_active: true,
    name: 'Sopor sopor ancilla animus anser dignissimos vito confero utilis.',
    price_amount: 44.0,
    price_currency: 'USD',
    updated_at: '2024-03-06T18:41:05.448Z',
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

Update a webinar

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
    end_at: DateTime.iso8601('2025-10-04T18:38:49.441Z'),
    has_polls: false,
    has_recording: false,
    id: 'e9fd6c7f-99cb-4a9d-a672-e1efeed88a85',
    is_auto_approve: false,
    is_enabled: true,
    is_webcast: false,
    join_url: 'https://robust-bathhouse.biz',
    notes: 'Curriculum ducimus assentator aspernatur ait.',
    organizer: Models::Shared::PropertyCalendarWebinarOrganizer.new(
      email: 'Kelton_Dicki@yahoo.com',
      name: 'Walter Greenfelder',
    ),
    recurrence: [
      Models::Shared::CalendarEventRecurrence.new(
        count: 10.0,
        end_at: DateTime.iso8601('2023-08-23T06:49:23.301Z'),
        excluded_dates: [
          '2025-01-25T04:15:38.478Z',
        ],
        frequency: Models::Shared::CalendarEventRecurrenceFrequency::MONTHLY,
        included_dates: [
          '2024-04-15T04:31:03.667Z',
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
        timezone: 'Asia/Ust-Nera',
        week_start: Models::Shared::WeekStart::MO,
      ),
      Models::Shared::CalendarEventRecurrence.new(
        count: 3.0,
        end_at: DateTime.iso8601('2022-09-28T23:17:58.090Z'),
        excluded_dates: [
          '2024-08-17T03:46:28.774Z',
          '2024-08-01T22:11:13.721Z',
        ],
        frequency: Models::Shared::CalendarEventRecurrenceFrequency::DAILY,
        included_dates: [
          '2024-03-12T18:07:46.606Z',
          '2025-12-18T22:33:13.842Z',
          '2023-08-06T06:37:38.244Z',
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
        timezone: 'Pacific/Wake',
        week_start: Models::Shared::WeekStart::TU,
      ),
      Models::Shared::CalendarEventRecurrence.new(
        count: 8.0,
        end_at: DateTime.iso8601('2026-06-27T05:30:21.038Z'),
        excluded_dates: [
          '2023-06-11T17:39:15.197Z',
          '2023-05-31T23:42:09.502Z',
        ],
        frequency: Models::Shared::CalendarEventRecurrenceFrequency::WEEKLY,
        included_dates: [
          '2024-03-20T15:11:06.868Z',
          '2023-08-11T23:17:44.271Z',
          '2024-09-10T20:35:25.009Z',
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
        timezone: 'Africa/Bissau',
        week_start: Models::Shared::WeekStart::WE,
      ),
    ],
    registrant_password: 'OxwWzr0C',
    require_address: false,
    require_job_title: false,
    start_at: DateTime.iso8601('2025-04-10T05:07:21.450Z'),
    status: Models::Shared::CalendarWebinarStatus::TENTATIVE,
    subject: 'Harum culpa decipio ex cubo ancilla cresco.',
    timezone: 'Europe/Kaliningrad',
    updated_at: DateTime.iso8601('2026-08-30T21:26:52.497Z'),
    web_url: 'https://classic-recovery.biz',
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