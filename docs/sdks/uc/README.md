# Uc
(*uc*)

## Overview

### Available Operations

* [create_uc_call](#create_uc_call) - Create a call
* [create_uc_comment](#create_uc_comment) - Create a comment
* [create_uc_contact](#create_uc_contact) - Create a contact
* [create_uc_recording](#create_uc_recording) - Create a recording
* [get_uc_call](#get_uc_call) - Retrieve a call
* [get_uc_comment](#get_uc_comment) - Retrieve a comment
* [get_uc_contact](#get_uc_contact) - Retrieve a contact
* [get_uc_recording](#get_uc_recording) - Retrieve a recording
* [get_uc_scorecard](#get_uc_scorecard) - Retrieve a scorecard
* [get_uc_scorecardtemplate](#get_uc_scorecardtemplate) - Retrieve a scorecardtemplate
* [list_uc_calls](#list_uc_calls) - List all calls
* [list_uc_comments](#list_uc_comments) - List all comments
* [list_uc_contacts](#list_uc_contacts) - List all contacts
* [list_uc_recordings](#list_uc_recordings) - List all recordings
* [list_uc_scorecards](#list_uc_scorecards) - List all scorecards
* [list_uc_scorecardtemplates](#list_uc_scorecardtemplates) - List all scorecardtemplates
* [patch_uc_call](#patch_uc_call) - Update a call
* [patch_uc_comment](#patch_uc_comment) - Update a comment
* [patch_uc_contact](#patch_uc_contact) - Update a contact
* [patch_uc_recording](#patch_uc_recording) - Update a recording
* [remove_uc_comment](#remove_uc_comment) - Remove a comment
* [remove_uc_contact](#remove_uc_contact) - Remove a contact
* [remove_uc_recording](#remove_uc_recording) - Remove a recording
* [update_uc_call](#update_uc_call) - Update a call
* [update_uc_comment](#update_uc_comment) - Update a comment
* [update_uc_contact](#update_uc_contact) - Update a contact
* [update_uc_recording](#update_uc_recording) - Update a recording

## create_uc_call

Creates a UcCall. Provide the unified UcCall fields in the request body; they are mapped to the provider's API. Returns the created UcCall.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createUcCall" method="post" path="/uc/{connection_id}/call" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.uc.create_uc_call(uc_call: Models::Shared::UcCall.new(
  answer_at: DateTime.iso8601('2025-05-20T02:40:17.272Z'),
  contacts: [],
  conversation_identifier: '815f8125-468d-452a-89fd-15b89ba7a91b',
  cost_amount: 1.564,
  created_at: DateTime.iso8601('2023-04-22T19:05:34.882Z'),
  currency: 'USD',
  duration_seconds: 2556.0,
  end_at: DateTime.iso8601('2024-06-02T12:53:43.746Z'),
  id: '815f8125-468d-452a-89fd-15b89ba7a91b',
  is_private: false,
  metadata: [
    Models::Shared::UcMetadata.new(
      extra_data: {

      },
      format: Models::Shared::UcMetadataFormat::PRICE,
      id: '62a97eb3-68de-4358-8fb9-f68230b5d535',
      namespace: 'custom',
      slug: 'custom_field',
      value: 'tui',
    ),
  ],
  start_at: DateTime.iso8601('2023-12-19T11:19:24.102Z'),
  status: Models::Shared::UcCallStatus::IN_PROGRESS,
  telephone: Models::Shared::PropertyUcCallTelephone.new(
    telephone: '(493) 534-0768',
    type: Models::Shared::PropertyUcCallTelephoneType::MOBILE,
  ),
  type: Models::Shared::UcCallType::INBOUND,
  updated_at: DateTime.iso8601('2023-08-04T05:45:57.919Z'),
  user_phone: '819-894-3317 x163',
), connection_id: '<id>')

unless res.uc_call.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `uc_call`                                                                                                                                        | [Models::Shared::UcCall](../../models/shared/uccall.md)                                                                                          | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateUcCallQueryParamFields](../../models/operations/createuccallqueryparamfields.md)>                            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateUcCallResponse)](../../models/operations/createuccallresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_uc_comment

Creates a UcComment. Provide the unified UcComment fields in the request body; they are mapped to the provider's API. Returns the created UcComment.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createUcComment" method="post" path="/uc/{connection_id}/comment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.uc.create_uc_comment(uc_comment: Models::Shared::UcComment.new(
  content: 'Vociferor vitiosus.',
  created_at: '2023-04-02T23:42:31.571Z',
  id: 'f4ec874a-a853-4f8c-9abb-ced9a29f07b2',
  metadata: [],
  updated_at: '2024-02-12T10:08:00.544Z',
), connection_id: '<id>')

unless res.uc_comment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `uc_comment`                                                                                                                                     | [Models::Shared::UcComment](../../models/shared/uccomment.md)                                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateUcCommentQueryParamFields](../../models/operations/createuccommentqueryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateUcCommentResponse)](../../models/operations/createuccommentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_uc_contact

Creates a UcContact. Provide the unified UcContact fields in the request body; they are mapped to the provider's API. Returns the created UcContact.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createUcContact" method="post" path="/uc/{connection_id}/contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.uc.create_uc_contact(uc_contact: Models::Shared::UcContact.new(
  company: 'Tillman Group',
  created_at: DateTime.iso8601('2019-10-28T11:06:56.460Z'),
  emails: [
    Models::Shared::UcEmail.new(
      email: 'Luther_Rogahn32@yahoo.com',
      type: Models::Shared::UcEmailType::WORK,
    ),
  ],
  first_name: 'Luther',
  id: 'd44231c3-8140-4270-b673-faef2008814b',
  last_name: 'Rogahn',
  metadata: [],
  name: 'Luther Rogahn',
  telephones: [
    Models::Shared::UcTelephone.new(
      telephone: '(809) 992-1681',
      type: Models::Shared::UcTelephoneType::FAX,
    ),
    Models::Shared::UcTelephone.new(
      telephone: '(868) 238-2746',
      type: Models::Shared::UcTelephoneType::HOME,
    ),
    Models::Shared::UcTelephone.new(
      telephone: '(219) 736-0357',
      type: Models::Shared::UcTelephoneType::MOBILE,
    ),
  ],
  title: 'Chief Optimization Executive',
  updated_at: DateTime.iso8601('2023-12-14T20:33:02.193Z'),
), connection_id: '<id>')

unless res.uc_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `uc_contact`                                                                                                                                     | [Models::Shared::UcContact](../../models/shared/uccontact.md)                                                                                    | :heavy_check_mark:                                                                                                                               | A contact represents a person that optionally is associated with a call                                                                          |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateUcContactQueryParamFields](../../models/operations/createuccontactqueryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateUcContactResponse)](../../models/operations/createuccontactresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

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

res = s.uc.create_uc_recording(uc_recording: Models::Shared::UcRecording.new(
  contacts: [],
  conversation_identifier: 'cc2473f6-bcfc-46ad-962e-23b88aabbc03',
  created_at: DateTime.iso8601('2022-09-17T19:41:46.956Z'),
  end_at: DateTime.iso8601('2024-05-09T09:02:03.645Z'),
  expires_at: DateTime.iso8601('2026-05-06T11:02:46.358Z'),
  id: 'cc2473f6-bcfc-46ad-962e-23b88aabbc03',
  media: [
    Models::Shared::UcRecordingMedia.new(
      end_at: DateTime.iso8601('2024-04-05T22:50:35.362Z'),
      language: 'en',
      recording_download_url: 'https://parched-wasabi.com/',
      start_at: DateTime.iso8601('2026-05-25T06:24:29.464Z'),
      transcript_download_url: 'https://colossal-cuckoo.name',
      transcripts: [
        Models::Shared::UcRecordingTranscript.new(
          end_at: DateTime.iso8601('2026-03-05T18:03:02.978Z'),
          start_at: DateTime.iso8601('2024-06-06T20:10:00.286Z'),
          text: 'Turpis maiores ducimus tero speculum.',
        ),
        Models::Shared::UcRecordingTranscript.new(
          end_at: DateTime.iso8601('2024-10-18T02:40:00.542Z'),
          start_at: DateTime.iso8601('2026-08-13T07:00:58.168Z'),
          text: 'Magnam consuasor uxor tergiversatio subseco.',
        ),
      ],
    ),
  ],
  metadata: [],
  start_at: DateTime.iso8601('2023-04-29T09:15:49.166Z'),
  type: Models::Shared::UcRecordingType::OUTBOUND,
  updated_at: DateTime.iso8601('2025-03-23T03:57:10.976Z'),
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

## get_uc_call

Retrieves a single UcCall by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getUcCall" method="get" path="/uc/{connection_id}/call/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.uc.get_uc_call(connection_id: '<id>', id: '<id>')

unless res.uc_call.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Call                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetUcCallQueryParamFields](../../models/operations/getuccallqueryparamfields.md)>                                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetUcCallResponse)](../../models/operations/getuccallresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_uc_comment

Retrieves a single UcComment by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getUcComment" method="get" path="/uc/{connection_id}/comment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.uc.get_uc_comment(connection_id: '<id>', id: '<id>')

unless res.uc_comment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Comment                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetUcCommentQueryParamFields](../../models/operations/getuccommentqueryparamfields.md)>                            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetUcCommentResponse)](../../models/operations/getuccommentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_uc_contact

Retrieves a single UcContact by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getUcContact" method="get" path="/uc/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.uc.get_uc_contact(connection_id: '<id>', id: '<id>')

unless res.uc_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Contact                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetUcContactQueryParamFields](../../models/operations/getuccontactqueryparamfields.md)>                            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetUcContactResponse)](../../models/operations/getuccontactresponse.md)**

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

res = s.uc.get_uc_recording(connection_id: '<id>', id: '<id>')

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

## get_uc_scorecard

Retrieves a single UcScorecard by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getUcScorecard" method="get" path="/uc/{connection_id}/scorecard/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.uc.get_uc_scorecard(connection_id: '<id>', id: '<id>')

unless res.uc_scorecard.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Scorecard                                                                                                                              |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetUcScorecardQueryParamFields](../../models/operations/getucscorecardqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetUcScorecardResponse)](../../models/operations/getucscorecardresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_uc_scorecardtemplate

Retrieves a single UcScorecardtemplate by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getUcScorecardtemplate" method="get" path="/uc/{connection_id}/scorecardtemplate/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.uc.get_uc_scorecardtemplate(connection_id: '<id>', id: '<id>')

unless res.uc_scorecardtemplate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Scorecardtemplate                                                                                                                      |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetUcScorecardtemplateQueryParamFields](../../models/operations/getucscorecardtemplatequeryparamfields.md)>        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetUcScorecardtemplateResponse)](../../models/operations/getucscorecardtemplateresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_uc_calls

Returns a list of UcCalls. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUcCalls" method="get" path="/uc/{connection_id}/call" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListUcCallsRequest.new(
  connection_id: '<id>',
)

res = s.uc.list_uc_calls(request: req)

unless res.uc_calls.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Models::Operations::ListUcCallsRequest](../../models/operations/listuccallsrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |

### Response

**[T.nilable(Models::Operations::ListUcCallsResponse)](../../models/operations/listuccallsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_uc_comments

Returns a list of UcComments. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUcComments" method="get" path="/uc/{connection_id}/comment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListUcCommentsRequest.new(
  connection_id: '<id>',
)

res = s.uc.list_uc_comments(request: req)

unless res.uc_comments.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::ListUcCommentsRequest](../../models/operations/listuccommentsrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::ListUcCommentsResponse)](../../models/operations/listuccommentsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_uc_contacts

Returns a list of UcContacts. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUcContacts" method="get" path="/uc/{connection_id}/contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListUcContactsRequest.new(
  connection_id: '<id>',
)

res = s.uc.list_uc_contacts(request: req)

unless res.uc_contacts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::ListUcContactsRequest](../../models/operations/listuccontactsrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::ListUcContactsResponse)](../../models/operations/listuccontactsresponse.md)**

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

res = s.uc.list_uc_recordings(request: req)

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

## list_uc_scorecards

Returns a list of UcScorecards. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUcScorecards" method="get" path="/uc/{connection_id}/scorecard" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListUcScorecardsRequest.new(
  connection_id: '<id>',
)

res = s.uc.list_uc_scorecards(request: req)

unless res.uc_scorecards.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListUcScorecardsRequest](../../models/operations/listucscorecardsrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListUcScorecardsResponse)](../../models/operations/listucscorecardsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_uc_scorecardtemplates

Returns a list of UcScorecardtemplates. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUcScorecardtemplates" method="get" path="/uc/{connection_id}/scorecardtemplate" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListUcScorecardtemplatesRequest.new(
  connection_id: '<id>',
)

res = s.uc.list_uc_scorecardtemplates(request: req)

unless res.uc_scorecardtemplates.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::ListUcScorecardtemplatesRequest](../../models/operations/listucscorecardtemplatesrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::ListUcScorecardtemplatesResponse)](../../models/operations/listucscorecardtemplatesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_uc_call

Updates the UcCall identified by `id`. Provide the unified UcCall fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchUcCall" method="patch" path="/uc/{connection_id}/call/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchUcCallRequest.new(
  uc_call: Models::Shared::UcCall.new(
    answer_at: DateTime.iso8601('2025-05-20T02:40:17.296Z'),
    contacts: [],
    conversation_identifier: '828207fc-d0ee-480b-9ce3-a7fbd991324f',
    cost_amount: 1.564,
    created_at: DateTime.iso8601('2023-04-22T19:05:34.882Z'),
    currency: 'USD',
    duration_seconds: 2556.0,
    end_at: DateTime.iso8601('2024-06-02T12:53:43.758Z'),
    id: '828207fc-d0ee-480b-9ce3-a7fbd991324f',
    is_private: false,
    metadata: [
      Models::Shared::UcMetadata.new(
        extra_data: {

        },
        format: Models::Shared::UcMetadataFormat::PRICE,
        id: '9e41cc05-e712-4648-a605-1c2123bcd8e2',
        namespace: 'custom',
        slug: 'custom_field',
        value: 'tui',
      ),
    ],
    start_at: DateTime.iso8601('2023-12-19T11:19:24.109Z'),
    status: Models::Shared::UcCallStatus::IN_PROGRESS,
    telephone: Models::Shared::PropertyUcCallTelephone.new(
      telephone: '(493) 534-0768',
      type: Models::Shared::PropertyUcCallTelephoneType::MOBILE,
    ),
    type: Models::Shared::UcCallType::INBOUND,
    updated_at: DateTime.iso8601('2023-08-04T05:45:57.922Z'),
    user_phone: '819-894-3317 x163',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.uc.patch_uc_call(request: req)

unless res.uc_call.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Models::Operations::PatchUcCallRequest](../../models/operations/patchuccallrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |

### Response

**[T.nilable(Models::Operations::PatchUcCallResponse)](../../models/operations/patchuccallresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_uc_comment

Updates the UcComment identified by `id`. Provide the unified UcComment fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchUcComment" method="patch" path="/uc/{connection_id}/comment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchUcCommentRequest.new(
  uc_comment: Models::Shared::UcComment.new(
    content: 'Vociferor vitiosus.',
    created_at: '2023-04-02T23:42:31.571Z',
    id: 'c90f4ac1-9740-46d7-9108-94c86a6980eb',
    metadata: [],
    updated_at: '2024-02-12T10:08:00.546Z',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.uc.patch_uc_comment(request: req)

unless res.uc_comment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::PatchUcCommentRequest](../../models/operations/patchuccommentrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::PatchUcCommentResponse)](../../models/operations/patchuccommentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_uc_contact

Updates the UcContact identified by `id`. Provide the unified UcContact fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchUcContact" method="patch" path="/uc/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchUcContactRequest.new(
  uc_contact: Models::Shared::UcContact.new(
    company: 'Tillman Group',
    created_at: DateTime.iso8601('2019-10-28T11:06:56.460Z'),
    emails: [
      Models::Shared::UcEmail.new(
        email: 'Luther_Rogahn32@yahoo.com',
        type: Models::Shared::UcEmailType::WORK,
      ),
    ],
    first_name: 'Luther',
    id: '9b0a3e29-eb8b-4778-896b-82184ce62571',
    last_name: 'Rogahn',
    metadata: [],
    name: 'Luther Rogahn',
    telephones: [
      Models::Shared::UcTelephone.new(
        telephone: '(809) 992-1681',
        type: Models::Shared::UcTelephoneType::FAX,
      ),
      Models::Shared::UcTelephone.new(
        telephone: '(868) 238-2746',
        type: Models::Shared::UcTelephoneType::HOME,
      ),
      Models::Shared::UcTelephone.new(
        telephone: '(219) 736-0357',
        type: Models::Shared::UcTelephoneType::MOBILE,
      ),
    ],
    title: 'Chief Optimization Executive',
    updated_at: DateTime.iso8601('2023-12-14T20:33:02.203Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.uc.patch_uc_contact(request: req)

unless res.uc_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::PatchUcContactRequest](../../models/operations/patchuccontactrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::PatchUcContactResponse)](../../models/operations/patchuccontactresponse.md)**

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
    conversation_identifier: '317f4b1a-05cc-41fc-858b-3cafbce9fb0a',
    created_at: DateTime.iso8601('2022-09-17T19:41:46.956Z'),
    end_at: DateTime.iso8601('2024-05-09T09:02:03.657Z'),
    expires_at: DateTime.iso8601('2026-05-06T11:02:46.386Z'),
    id: '317f4b1a-05cc-41fc-858b-3cafbce9fb0a',
    media: [
      Models::Shared::UcRecordingMedia.new(
        end_at: DateTime.iso8601('2024-04-05T22:50:35.374Z'),
        language: 'en',
        recording_download_url: 'https://parched-wasabi.com/',
        start_at: DateTime.iso8601('2026-05-25T06:24:29.492Z'),
        transcript_download_url: 'https://colossal-cuckoo.name',
        transcripts: [
          Models::Shared::UcRecordingTranscript.new(
            end_at: DateTime.iso8601('2026-03-05T18:03:03.004Z'),
            start_at: DateTime.iso8601('2024-06-06T20:10:00.299Z'),
            text: 'Turpis maiores ducimus tero speculum.',
          ),
          Models::Shared::UcRecordingTranscript.new(
            end_at: DateTime.iso8601('2024-10-18T02:40:00.558Z'),
            start_at: DateTime.iso8601('2026-08-13T07:00:58.197Z'),
            text: 'Magnam consuasor uxor tergiversatio subseco.',
          ),
        ],
      ),
    ],
    metadata: [],
    start_at: DateTime.iso8601('2023-04-29T09:15:49.170Z'),
    type: Models::Shared::UcRecordingType::OUTBOUND,
    updated_at: DateTime.iso8601('2025-03-23T03:57:10.995Z'),
    user_phone: '1-915-327-0429 x509',
    web_url: 'https://spherical-comparison.org',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.uc.patch_uc_recording(request: req)

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

## remove_uc_comment

Deletes the UcComment identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeUcComment" method="delete" path="/uc/{connection_id}/comment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.uc.remove_uc_comment(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Comment    |

### Response

**[T.nilable(Models::Operations::RemoveUcCommentResponse)](../../models/operations/removeuccommentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_uc_contact

Deletes the UcContact identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeUcContact" method="delete" path="/uc/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.uc.remove_uc_contact(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Contact    |

### Response

**[T.nilable(Models::Operations::RemoveUcContactResponse)](../../models/operations/removeuccontactresponse.md)**

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

res = s.uc.remove_uc_recording(connection_id: '<id>', id: '<id>')

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

## update_uc_call

Updates the UcCall identified by `id`. Provide the unified UcCall fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateUcCall" method="put" path="/uc/{connection_id}/call/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateUcCallRequest.new(
  uc_call: Models::Shared::UcCall.new(
    answer_at: DateTime.iso8601('2025-05-20T02:40:17.296Z'),
    contacts: [],
    conversation_identifier: '828207fc-d0ee-480b-9ce3-a7fbd991324f',
    cost_amount: 1.564,
    created_at: DateTime.iso8601('2023-04-22T19:05:34.882Z'),
    currency: 'USD',
    duration_seconds: 2556.0,
    end_at: DateTime.iso8601('2024-06-02T12:53:43.758Z'),
    id: '828207fc-d0ee-480b-9ce3-a7fbd991324f',
    is_private: false,
    metadata: [
      Models::Shared::UcMetadata.new(
        extra_data: {

        },
        format: Models::Shared::UcMetadataFormat::PRICE,
        id: '9e41cc05-e712-4648-a605-1c2123bcd8e2',
        namespace: 'custom',
        slug: 'custom_field',
        value: 'tui',
      ),
    ],
    start_at: DateTime.iso8601('2023-12-19T11:19:24.109Z'),
    status: Models::Shared::UcCallStatus::IN_PROGRESS,
    telephone: Models::Shared::PropertyUcCallTelephone.new(
      telephone: '(493) 534-0768',
      type: Models::Shared::PropertyUcCallTelephoneType::MOBILE,
    ),
    type: Models::Shared::UcCallType::INBOUND,
    updated_at: DateTime.iso8601('2023-08-04T05:45:57.922Z'),
    user_phone: '819-894-3317 x163',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.uc.update_uc_call(request: req)

unless res.uc_call.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::UpdateUcCallRequest](../../models/operations/updateuccallrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::UpdateUcCallResponse)](../../models/operations/updateuccallresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_uc_comment

Updates the UcComment identified by `id`. Provide the unified UcComment fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateUcComment" method="put" path="/uc/{connection_id}/comment/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateUcCommentRequest.new(
  uc_comment: Models::Shared::UcComment.new(
    content: 'Vociferor vitiosus.',
    created_at: '2023-04-02T23:42:31.571Z',
    id: 'c90f4ac1-9740-46d7-9108-94c86a6980eb',
    metadata: [],
    updated_at: '2024-02-12T10:08:00.546Z',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.uc.update_uc_comment(request: req)

unless res.uc_comment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::UpdateUcCommentRequest](../../models/operations/updateuccommentrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::UpdateUcCommentResponse)](../../models/operations/updateuccommentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_uc_contact

Updates the UcContact identified by `id`. Provide the unified UcContact fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateUcContact" method="put" path="/uc/{connection_id}/contact/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateUcContactRequest.new(
  uc_contact: Models::Shared::UcContact.new(
    company: 'Tillman Group',
    created_at: DateTime.iso8601('2019-10-28T11:06:56.460Z'),
    emails: [
      Models::Shared::UcEmail.new(
        email: 'Luther_Rogahn32@yahoo.com',
        type: Models::Shared::UcEmailType::WORK,
      ),
    ],
    first_name: 'Luther',
    id: '9b0a3e29-eb8b-4778-896b-82184ce62571',
    last_name: 'Rogahn',
    metadata: [],
    name: 'Luther Rogahn',
    telephones: [
      Models::Shared::UcTelephone.new(
        telephone: '(809) 992-1681',
        type: Models::Shared::UcTelephoneType::FAX,
      ),
      Models::Shared::UcTelephone.new(
        telephone: '(868) 238-2746',
        type: Models::Shared::UcTelephoneType::HOME,
      ),
      Models::Shared::UcTelephone.new(
        telephone: '(219) 736-0357',
        type: Models::Shared::UcTelephoneType::MOBILE,
      ),
    ],
    title: 'Chief Optimization Executive',
    updated_at: DateTime.iso8601('2023-12-14T20:33:02.203Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.uc.update_uc_contact(request: req)

unless res.uc_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::UpdateUcContactRequest](../../models/operations/updateuccontactrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::UpdateUcContactResponse)](../../models/operations/updateuccontactresponse.md)**

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
    conversation_identifier: '317f4b1a-05cc-41fc-858b-3cafbce9fb0a',
    created_at: DateTime.iso8601('2022-09-17T19:41:46.956Z'),
    end_at: DateTime.iso8601('2024-05-09T09:02:03.657Z'),
    expires_at: DateTime.iso8601('2026-05-06T11:02:46.386Z'),
    id: '317f4b1a-05cc-41fc-858b-3cafbce9fb0a',
    media: [
      Models::Shared::UcRecordingMedia.new(
        end_at: DateTime.iso8601('2024-04-05T22:50:35.374Z'),
        language: 'en',
        recording_download_url: 'https://parched-wasabi.com/',
        start_at: DateTime.iso8601('2026-05-25T06:24:29.492Z'),
        transcript_download_url: 'https://colossal-cuckoo.name',
        transcripts: [
          Models::Shared::UcRecordingTranscript.new(
            end_at: DateTime.iso8601('2026-03-05T18:03:03.004Z'),
            start_at: DateTime.iso8601('2024-06-06T20:10:00.299Z'),
            text: 'Turpis maiores ducimus tero speculum.',
          ),
          Models::Shared::UcRecordingTranscript.new(
            end_at: DateTime.iso8601('2024-10-18T02:40:00.558Z'),
            start_at: DateTime.iso8601('2026-08-13T07:00:58.197Z'),
            text: 'Magnam consuasor uxor tergiversatio subseco.',
          ),
        ],
      ),
    ],
    metadata: [],
    start_at: DateTime.iso8601('2023-04-29T09:15:49.170Z'),
    type: Models::Shared::UcRecordingType::OUTBOUND,
    updated_at: DateTime.iso8601('2025-03-23T03:57:10.995Z'),
    user_phone: '1-915-327-0429 x509',
    web_url: 'https://spherical-comparison.org',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.uc.update_uc_recording(request: req)

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