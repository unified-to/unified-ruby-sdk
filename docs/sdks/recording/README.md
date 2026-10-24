# Recording
(*recording*)

## Overview

### Available Operations

* [create_uc_recording](#create_uc_recording) - Create a recording
* [get_calendar_recording](#get_calendar_recording) - Retrieve a recording
* [get_uc_recording](#get_uc_recording) - Retrieve a recording
* [list_calendar_recordings](#list_calendar_recordings) - List all recordings
* [list_uc_recordings](#list_uc_recordings) - List all recordings
* [patch_uc_recording](#patch_uc_recording) - Update a recording
* [remove_uc_recording](#remove_uc_recording) - Remove a recording
* [update_uc_recording](#update_uc_recording) - Update a recording

## create_uc_recording

Creates a UcRecording. Provide the unified UcRecording fields in the request body; they are mapped to the provider's API. Returns the created UcRecording.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createUcRecording" method="post" path="/uc/{connection_id}/recording" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.recording.create_uc_recording(uc_recording: Models::Shared::UcRecording.new(
  contacts: [],
  conversation_identifier: 'cb99940b-4397-4f19-b392-d57f35aaf8f5',
  created_at: DateTime.iso8601('2022-09-17T19:41:46.956Z'),
  end_at: DateTime.iso8601('2024-05-06T04:53:54.724Z'),
  expires_at: DateTime.iso8601('2026-04-29T10:34:48.627Z'),
  id: 'cb99940b-4397-4f19-b392-d57f35aaf8f5',
  media: [
    Models::Shared::UcRecordingMedia.new(
      end_at: DateTime.iso8601('2024-04-02T22:57:06.624Z'),
      language: 'en',
      recording_download_url: 'https://parched-wasabi.com/',
      start_at: DateTime.iso8601('2026-05-18T03:33:14.165Z'),
      transcript_download_url: 'https://colossal-cuckoo.name',
      transcripts: [
        Models::Shared::UcRecordingTranscript.new(
          end_at: DateTime.iso8601('2026-02-27T01:25:15.330Z'),
          start_at: DateTime.iso8601('2024-06-03T12:24:59.020Z'),
          text: 'Turpis maiores ducimus tero speculum.',
        ),
        Models::Shared::UcRecordingTranscript.new(
          end_at: DateTime.iso8601('2024-10-14T01:59:34.066Z'),
          start_at: DateTime.iso8601('2026-08-05T17:59:59.019Z'),
          text: 'Magnam consuasor uxor tergiversatio subseco.',
        ),
      ],
    ),
  ],
  metadata: [],
  start_at: DateTime.iso8601('2023-04-28T04:52:25.538Z'),
  type: Models::Shared::UcRecordingType::OUTBOUND,
  updated_at: DateTime.iso8601('2025-03-18T07:27:44.077Z'),
  user_phone: '1-915-327-0429 x509',
  web_url: 'https://spherical-comparison.org',
), connection_id: '<id>')

unless res.uc_recording.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `uc_recording`                                                                                                                                   | [Models::Shared::UcRecording](../../models/shared/ucrecording.md)                                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateUcRecordingQueryParamFields](../../models/operations/createucrecordingqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateUcRecordingResponse)](../../models/operations/createucrecordingresponse.md)**

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

res = s.recording.get_calendar_recording(connection_id: '<id>', id: '<id>')

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

## get_uc_recording

Retrieves a single UcRecording by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getUcRecording" method="get" path="/uc/{connection_id}/recording/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.recording.get_uc_recording(connection_id: '<id>', id: '<id>')

unless res.uc_recording.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Recording                                                                                                                              |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetUcRecordingQueryParamFields](../../models/operations/getucrecordingqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetUcRecordingResponse)](../../models/operations/getucrecordingresponse.md)**

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

res = s.recording.list_calendar_recordings(request: req)

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

## list_uc_recordings

Returns a list of UcRecordings. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUcRecordings" method="get" path="/uc/{connection_id}/recording" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListUcRecordingsRequest.new(
  connection_id: '<id>',
)

res = s.recording.list_uc_recordings(request: req)

unless res.uc_recordings.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListUcRecordingsRequest](../../models/operations/listucrecordingsrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListUcRecordingsResponse)](../../models/operations/listucrecordingsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_uc_recording

Updates the UcRecording identified by `id`. Provide the unified UcRecording fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchUcRecording" method="patch" path="/uc/{connection_id}/recording/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchUcRecordingRequest.new(
  uc_recording: Models::Shared::UcRecording.new(
    contacts: [],
    conversation_identifier: '384d9728-9a4d-4a40-89ba-c94c5f0dc091',
    created_at: DateTime.iso8601('2022-09-17T19:41:46.956Z'),
    end_at: DateTime.iso8601('2024-05-06T04:53:54.737Z'),
    expires_at: DateTime.iso8601('2026-04-29T10:34:48.656Z'),
    id: '384d9728-9a4d-4a40-89ba-c94c5f0dc091',
    media: [
      Models::Shared::UcRecordingMedia.new(
        end_at: DateTime.iso8601('2024-04-02T22:57:06.636Z'),
        language: 'en',
        recording_download_url: 'https://parched-wasabi.com/',
        start_at: DateTime.iso8601('2026-05-18T03:33:14.194Z'),
        transcript_download_url: 'https://colossal-cuckoo.name',
        transcripts: [
          Models::Shared::UcRecordingTranscript.new(
            end_at: DateTime.iso8601('2026-02-27T01:25:15.357Z'),
            start_at: DateTime.iso8601('2024-06-03T12:24:59.034Z'),
            text: 'Turpis maiores ducimus tero speculum.',
          ),
          Models::Shared::UcRecordingTranscript.new(
            end_at: DateTime.iso8601('2024-10-14T01:59:34.083Z'),
            start_at: DateTime.iso8601('2026-08-05T17:59:59.050Z'),
            text: 'Magnam consuasor uxor tergiversatio subseco.',
          ),
        ],
      ),
    ],
    metadata: [],
    start_at: DateTime.iso8601('2023-04-28T04:52:25.543Z'),
    type: Models::Shared::UcRecordingType::OUTBOUND,
    updated_at: DateTime.iso8601('2025-03-18T07:27:44.097Z'),
    user_phone: '1-915-327-0429 x509',
    web_url: 'https://spherical-comparison.org',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.recording.patch_uc_recording(request: req)

unless res.uc_recording.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::PatchUcRecordingRequest](../../models/operations/patchucrecordingrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::PatchUcRecordingResponse)](../../models/operations/patchucrecordingresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_uc_recording

Deletes the UcRecording identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeUcRecording" method="delete" path="/uc/{connection_id}/recording/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.recording.remove_uc_recording(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Recording  |

### Response

**[T.nilable(Models::Operations::RemoveUcRecordingResponse)](../../models/operations/removeucrecordingresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_uc_recording

Updates the UcRecording identified by `id`. Provide the unified UcRecording fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateUcRecording" method="put" path="/uc/{connection_id}/recording/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateUcRecordingRequest.new(
  uc_recording: Models::Shared::UcRecording.new(
    contacts: [],
    conversation_identifier: '384d9728-9a4d-4a40-89ba-c94c5f0dc091',
    created_at: DateTime.iso8601('2022-09-17T19:41:46.956Z'),
    end_at: DateTime.iso8601('2024-05-06T04:53:54.737Z'),
    expires_at: DateTime.iso8601('2026-04-29T10:34:48.656Z'),
    id: '384d9728-9a4d-4a40-89ba-c94c5f0dc091',
    media: [
      Models::Shared::UcRecordingMedia.new(
        end_at: DateTime.iso8601('2024-04-02T22:57:06.636Z'),
        language: 'en',
        recording_download_url: 'https://parched-wasabi.com/',
        start_at: DateTime.iso8601('2026-05-18T03:33:14.194Z'),
        transcript_download_url: 'https://colossal-cuckoo.name',
        transcripts: [
          Models::Shared::UcRecordingTranscript.new(
            end_at: DateTime.iso8601('2026-02-27T01:25:15.357Z'),
            start_at: DateTime.iso8601('2024-06-03T12:24:59.034Z'),
            text: 'Turpis maiores ducimus tero speculum.',
          ),
          Models::Shared::UcRecordingTranscript.new(
            end_at: DateTime.iso8601('2024-10-14T01:59:34.083Z'),
            start_at: DateTime.iso8601('2026-08-05T17:59:59.050Z'),
            text: 'Magnam consuasor uxor tergiversatio subseco.',
          ),
        ],
      ),
    ],
    metadata: [],
    start_at: DateTime.iso8601('2023-04-28T04:52:25.543Z'),
    type: Models::Shared::UcRecordingType::OUTBOUND,
    updated_at: DateTime.iso8601('2025-03-18T07:27:44.097Z'),
    user_phone: '1-915-327-0429 x509',
    web_url: 'https://spherical-comparison.org',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.recording.update_uc_recording(request: req)

unless res.uc_recording.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::UpdateUcRecordingRequest](../../models/operations/updateucrecordingrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::UpdateUcRecordingResponse)](../../models/operations/updateucrecordingresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |