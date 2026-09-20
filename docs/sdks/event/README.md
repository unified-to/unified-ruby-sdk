# Event
(*event*)

## Overview

### Available Operations

* [create_analytics_event](#create_analytics_event) - Create an event
* [create_calendar_event](#create_calendar_event) - Create an event
* [create_cdp_event](#create_cdp_event) - Create an event
* [create_crm_event](#create_crm_event) - Create an event
* [get_analytics_event](#get_analytics_event) - Retrieve an event
* [get_calendar_event](#get_calendar_event) - Retrieve an event
* [get_cdp_event](#get_cdp_event) - Retrieve an event
* [get_clubs_event](#get_clubs_event) - Retrieve an event
* [get_crm_event](#get_crm_event) - Retrieve an event
* [list_analytics_events](#list_analytics_events) - List all events
* [list_calendar_events](#list_calendar_events) - List all events
* [list_cdp_events](#list_cdp_events) - List all events
* [list_clubs_events](#list_clubs_events) - List all events
* [list_crm_events](#list_crm_events) - List all events
* [patch_calendar_event](#patch_calendar_event) - Update an event
* [patch_cdp_event](#patch_cdp_event) - Update an event
* [patch_crm_event](#patch_crm_event) - Update an event
* [patch_messaging_event](#patch_messaging_event) - Update an event
* [remove_calendar_event](#remove_calendar_event) - Remove an event
* [remove_cdp_event](#remove_cdp_event) - Remove an event
* [remove_crm_event](#remove_crm_event) - Remove an event
* [update_calendar_event](#update_calendar_event) - Update an event
* [update_cdp_event](#update_cdp_event) - Update an event
* [update_crm_event](#update_crm_event) - Update an event
* [update_messaging_event](#update_messaging_event) - Update an event

## create_analytics_event

Create an event

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAnalyticsEvent" method="post" path="/analytics/{connection_id}/event" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.event.create_analytics_event(analytics_event: Models::Shared::AnalyticsEvent.new(
  created_at: DateTime.iso8601('2023-06-21T03:13:22.954Z'),
  event_type: Models::Shared::EventType::SCREEN_VIEW,
  id: 'cc009eba-90d5-48e8-9b48-0560df82bb5f',
  metadata: {
    "key": Models::Shared::PropertyAnalyticsEventMetadata.new(),
  },
  name: 'Xk707ttsb51v',
  updated_at: DateTime.iso8601('2023-09-22T05:59:00.637Z'),
), connection_id: '<id>')

unless res.analytics_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `analytics_event`                                                                                                                                | [Models::Shared::AnalyticsEvent](../../models/shared/analyticsevent.md)                                                                          | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAnalyticsEventQueryParamFields](../../models/operations/createanalyticseventqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAnalyticsEventResponse)](../../models/operations/createanalyticseventresponse.md)**

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

res = s.event.create_calendar_event(calendar_event: Models::Shared::CalendarEvent.new(
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

## create_cdp_event

Create an event

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCdpEvent" method="post" path="/cdp/{connection_id}/event" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.event.create_cdp_event(cdp_event: Models::Shared::CdpEvent.new(), connection_id: '<id>')

unless res.cdp_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `cdp_event`                                                                                                                                      | [Models::Shared::CdpEvent](../../models/shared/cdpevent.md)                                                                                      | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCdpEventQueryParamFields](../../models/operations/createcdpeventqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCdpEventResponse)](../../models/operations/createcdpeventresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_crm_event

Create an event

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCrmEvent" method="post" path="/crm/{connection_id}/event" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.event.create_crm_event(crm_event: Models::Shared::CrmEvent.new(
  call: Models::Shared::PropertyCrmEventCall.new(
    description: 'Arbitro aptus.',
    duration: 64.0,
    start_at: DateTime.iso8601('2024-11-19T05:09:01.052Z'),
  ),
  created_at: DateTime.iso8601('2020-07-14T04:53:23.784Z'),
  id: 'af980fd8-c69b-43f3-a0ef-04e8e4edd7c1',
  type: Models::Shared::CrmEventType::CALL,
  updated_at: DateTime.iso8601('2026-09-10T15:37:41.064Z'),
), connection_id: '<id>')

unless res.crm_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `crm_event`                                                                                                                                      | [Models::Shared::CrmEvent](../../models/shared/crmevent.md)                                                                                      | :heavy_check_mark:                                                                                                                               | An event represents an event, activity, or engagement and is always associated with a deal, contact, or company                                  |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCrmEventQueryParamFields](../../models/operations/createcrmeventqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCrmEventResponse)](../../models/operations/createcrmeventresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_analytics_event

Retrieve an event

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAnalyticsEvent" method="get" path="/analytics/{connection_id}/event/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.event.get_analytics_event(connection_id: '<id>', id: '<id>')

unless res.analytics_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Event                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAnalyticsEventQueryParamFields](../../models/operations/getanalyticseventqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAnalyticsEventResponse)](../../models/operations/getanalyticseventresponse.md)**

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

res = s.event.get_calendar_event(connection_id: '<id>', id: '<id>')

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

## get_cdp_event

Retrieve an event

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCdpEvent" method="get" path="/cdp/{connection_id}/event/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.event.get_cdp_event(connection_id: '<id>', id: '<id>')

unless res.cdp_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Event                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCdpEventQueryParamFields](../../models/operations/getcdpeventqueryparamfields.md)>                              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCdpEventResponse)](../../models/operations/getcdpeventresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_clubs_event

Retrieve an event

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getClubsEvent" method="get" path="/clubs/{connection_id}/event/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.event.get_clubs_event(connection_id: '<id>', id: '<id>')

unless res.clubs_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Event                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetClubsEventQueryParamFields](../../models/operations/getclubseventqueryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetClubsEventResponse)](../../models/operations/getclubseventresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_crm_event

Retrieve an event

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCrmEvent" method="get" path="/crm/{connection_id}/event/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.event.get_crm_event(connection_id: '<id>', id: '<id>')

unless res.crm_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Event                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCrmEventQueryParamFields](../../models/operations/getcrmeventqueryparamfields.md)>                              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCrmEventResponse)](../../models/operations/getcrmeventresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_analytics_events

List all events

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAnalyticsEvents" method="get" path="/analytics/{connection_id}/event" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAnalyticsEventsRequest.new(
  connection_id: '<id>',
)

res = s.event.list_analytics_events(request: req)

unless res.analytics_events.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListAnalyticsEventsRequest](../../models/operations/listanalyticseventsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListAnalyticsEventsResponse)](../../models/operations/listanalyticseventsresponse.md)**

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

res = s.event.list_calendar_events(request: req)

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

## list_cdp_events

List all events

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCdpEvents" method="get" path="/cdp/{connection_id}/event" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCdpEventsRequest.new(
  connection_id: '<id>',
)

res = s.event.list_cdp_events(request: req)

unless res.cdp_events.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::ListCdpEventsRequest](../../models/operations/listcdpeventsrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::ListCdpEventsResponse)](../../models/operations/listcdpeventsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_clubs_events

List all events

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listClubsEvents" method="get" path="/clubs/{connection_id}/event" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListClubsEventsRequest.new(
  connection_id: '<id>',
)

res = s.event.list_clubs_events(request: req)

unless res.clubs_events.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::ListClubsEventsRequest](../../models/operations/listclubseventsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::ListClubsEventsResponse)](../../models/operations/listclubseventsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_crm_events

List all events

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCrmEvents" method="get" path="/crm/{connection_id}/event" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCrmEventsRequest.new(
  connection_id: '<id>',
)

res = s.event.list_crm_events(request: req)

unless res.crm_events.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::ListCrmEventsRequest](../../models/operations/listcrmeventsrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::ListCrmEventsResponse)](../../models/operations/listcrmeventsresponse.md)**

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

res = s.event.patch_calendar_event(request: req)

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

## patch_cdp_event

Update an event

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCdpEvent" method="patch" path="/cdp/{connection_id}/event/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCdpEventRequest.new(
  cdp_event: Models::Shared::CdpEvent.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.event.patch_cdp_event(request: req)

unless res.cdp_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::PatchCdpEventRequest](../../models/operations/patchcdpeventrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::PatchCdpEventResponse)](../../models/operations/patchcdpeventresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_crm_event

Update an event

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCrmEvent" method="patch" path="/crm/{connection_id}/event/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCrmEventRequest.new(
  crm_event: Models::Shared::CrmEvent.new(
    call: Models::Shared::PropertyCrmEventCall.new(
      description: 'Arbitro aptus.',
      duration: 64.0,
      start_at: DateTime.iso8601('2024-11-19T05:09:01.089Z'),
    ),
    created_at: DateTime.iso8601('2020-07-14T04:53:23.784Z'),
    id: '9fd48e84-ce19-4830-a40a-0079f0159f3b',
    type: Models::Shared::CrmEventType::CALL,
    updated_at: DateTime.iso8601('2026-09-10T15:37:41.116Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.event.patch_crm_event(request: req)

unless res.crm_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::PatchCrmEventRequest](../../models/operations/patchcrmeventrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::PatchCrmEventResponse)](../../models/operations/patchcrmeventresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_messaging_event

Update an event

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
    id: '44fc5d26-2200-4680-b259-751a3c513b19',
    is_replacing_original: false,
    type: Models::Shared::MessagingEventType::BUTTON_CLICK,
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.event.patch_messaging_event(request: req)

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

res = s.event.remove_calendar_event(connection_id: '<id>', id: '<id>')

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

## remove_cdp_event

Remove an event

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCdpEvent" method="delete" path="/cdp/{connection_id}/event/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.event.remove_cdp_event(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveCdpEventResponse)](../../models/operations/removecdpeventresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_crm_event

Remove an event

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCrmEvent" method="delete" path="/crm/{connection_id}/event/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.event.remove_crm_event(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveCrmEventResponse)](../../models/operations/removecrmeventresponse.md)**

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

res = s.event.update_calendar_event(request: req)

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

## update_cdp_event

Update an event

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCdpEvent" method="put" path="/cdp/{connection_id}/event/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCdpEventRequest.new(
  cdp_event: Models::Shared::CdpEvent.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.event.update_cdp_event(request: req)

unless res.cdp_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::UpdateCdpEventRequest](../../models/operations/updatecdpeventrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::UpdateCdpEventResponse)](../../models/operations/updatecdpeventresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_crm_event

Update an event

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCrmEvent" method="put" path="/crm/{connection_id}/event/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCrmEventRequest.new(
  crm_event: Models::Shared::CrmEvent.new(
    call: Models::Shared::PropertyCrmEventCall.new(
      description: 'Arbitro aptus.',
      duration: 64.0,
      start_at: DateTime.iso8601('2024-11-19T05:09:01.089Z'),
    ),
    created_at: DateTime.iso8601('2020-07-14T04:53:23.784Z'),
    id: '9fd48e84-ce19-4830-a40a-0079f0159f3b',
    type: Models::Shared::CrmEventType::CALL,
    updated_at: DateTime.iso8601('2026-09-10T15:37:41.116Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.event.update_crm_event(request: req)

unless res.crm_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::UpdateCrmEventRequest](../../models/operations/updatecrmeventrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::UpdateCrmEventResponse)](../../models/operations/updatecrmeventresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_messaging_event

Update an event

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
    id: '44fc5d26-2200-4680-b259-751a3c513b19',
    is_replacing_original: false,
    type: Models::Shared::MessagingEventType::BUTTON_CLICK,
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.event.update_messaging_event(request: req)

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