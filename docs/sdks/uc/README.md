# Uc

## Overview

### Available Operations

* [create_uc_call](#create_uc_call) - Create a call
* [create_uc_comment](#create_uc_comment) - Create a comment
* [create_uc_contact](#create_uc_contact) - Create a contact
* [create_uc_fax](#create_uc_fax) - Create a fax
* [create_uc_recording](#create_uc_recording) - Create a recording
* [get_uc_call](#get_uc_call) - Retrieve a call
* [get_uc_comment](#get_uc_comment) - Retrieve a comment
* [get_uc_contact](#get_uc_contact) - Retrieve a contact
* [get_uc_fax](#get_uc_fax) - Retrieve a fax
* [get_uc_recording](#get_uc_recording) - Retrieve a recording
* [get_uc_scorecard](#get_uc_scorecard) - Retrieve a scorecard
* [get_uc_scorecardtemplate](#get_uc_scorecardtemplate) - Retrieve a scorecardtemplate
* [list_uc_calls](#list_uc_calls) - List all calls
* [list_uc_comments](#list_uc_comments) - List all comments
* [list_uc_contacts](#list_uc_contacts) - List all contacts
* [list_uc_faxes](#list_uc_faxes) - List all faxes
* [list_uc_recordings](#list_uc_recordings) - List all recordings
* [list_uc_scorecards](#list_uc_scorecards) - List all scorecards
* [list_uc_scorecardtemplates](#list_uc_scorecardtemplates) - List all scorecardtemplates
* [patch_uc_call](#patch_uc_call) - Update a call
* [patch_uc_comment](#patch_uc_comment) - Update a comment
* [patch_uc_contact](#patch_uc_contact) - Update a contact
* [patch_uc_recording](#patch_uc_recording) - Update a recording
* [remove_uc_comment](#remove_uc_comment) - Remove a comment
* [remove_uc_contact](#remove_uc_contact) - Remove a contact
* [remove_uc_fax](#remove_uc_fax) - Remove a fax
* [remove_uc_recording](#remove_uc_recording) - Remove a recording
* [update_uc_call](#update_uc_call) - Update a call
* [update_uc_comment](#update_uc_comment) - Update a comment
* [update_uc_contact](#update_uc_contact) - Update a contact
* [update_uc_recording](#update_uc_recording) - Update a recording

## create_uc_call

Creates a UcCall. Provide the unified UcCall fields in the request body; they are mapped to the provider's API. Returns the created UcCall.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createUcCall" method="post" path="/uc/{connection_id}/call" example="uc_call" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.uc.create_uc_call(uc_call: Models::Shared::UcCall.new(
  answer_at: DateTime.iso8601('2025-05-29T12:14:40.493Z'),
  contacts: [],
  conversation_identifier: 'b0ee83d7-64a6-4711-b991-608f70fb80d1',
  cost_amount: 1.564,
  created_at: DateTime.iso8601('2023-04-22T19:05:34.882Z'),
  currency: 'USD',
  duration_seconds: 2556.0,
  end_at: DateTime.iso8601('2024-06-07T13:53:14.315Z'),
  id: 'b0ee83d7-64a6-4711-b991-608f70fb80d1',
  is_private: false,
  metadata: [
    Models::Shared::UcMetadata.new(
      extra_data: {

      },
      format: Models::Shared::UcMetadataFormat::PRICE,
      id: '025aa4d0-665a-4560-89a3-fa7c37d6acc7',
      namespace: 'custom',
      slug: 'custom_field',
      value: 'tui'
    ),
  ],
  start_at: DateTime.iso8601('2023-12-22T10:54:58.874Z'),
  status: Models::Shared::UcCallStatus::IN_PROGRESS,
  telephone: Models::Shared::PropertyUcCallTelephone.new(
    telephone: '(493) 534-0768',
    type: Models::Shared::PropertyUcCallTelephoneType::MOBILE
  ),
  type: Models::Shared::UcCallType::INBOUND,
  updated_at: DateTime.iso8601('2023-08-05T12:32:14.522Z'),
  user_phone: '819-894-3317 x163'
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

<!-- UsageSnippet language="ruby" operationID="createUcComment" method="post" path="/uc/{connection_id}/comment" example="uc_comment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.uc.create_uc_comment(uc_comment: Models::Shared::UcComment.new(
  content: 'Vociferor vitiosus.',
  created_at: '2023-04-02T23:42:31.571Z',
  id: 'e4ae7c74-71f1-4b00-bb3d-4ae6a540173d',
  metadata: [],
  updated_at: '2024-02-16T06:32:36.698Z'
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

<!-- UsageSnippet language="ruby" operationID="createUcContact" method="post" path="/uc/{connection_id}/contact" example="uc_contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.uc.create_uc_contact(uc_contact: Models::Shared::UcContact.new(
  company: 'Tillman Group',
  created_at: DateTime.iso8601('2019-10-28T11:06:56.460Z'),
  emails: [
    Models::Shared::UcEmail.new(
      email: 'Luther_Rogahn32@yahoo.com',
      type: Models::Shared::UcEmailType::WORK
    ),
  ],
  first_name: 'Luther',
  id: '12c0d25a-0a64-4ddf-9516-a969e466ece3',
  last_name: 'Rogahn',
  metadata: [],
  name: 'Luther Rogahn',
  telephones: [
    Models::Shared::UcTelephone.new(
      telephone: '(809) 992-1681',
      type: Models::Shared::UcTelephoneType::FAX
    ),
    Models::Shared::UcTelephone.new(
      telephone: '(868) 238-2746',
      type: Models::Shared::UcTelephoneType::HOME
    ),
    Models::Shared::UcTelephone.new(
      telephone: '(219) 736-0357',
      type: Models::Shared::UcTelephoneType::MOBILE
    ),
  ],
  title: 'Chief Optimization Executive',
  updated_at: DateTime.iso8601('2023-12-24T06:17:14.485Z')
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

## create_uc_fax

Creates a UcFax. Provide the unified UcFax fields in the request body; they are mapped to the provider's API. Returns the created UcFax.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createUcFax" method="post" path="/uc/{connection_id}/fax" example="uc_fax" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.uc.create_uc_fax(uc_fax: Models::Shared::UcFax.new(
  cost_amount: 1.2207,
  created_at: DateTime.iso8601('2022-10-25T13:37:51.431Z'),
  currency: 'USD',
  from_telephone: '+13605107540',
  id: 'd24f4641-4a2c-426c-b633-7e4636a90282',
  media_url: 'https://doting-jump.biz',
  metadata: [],
  pages: 20.0,
  status: Models::Shared::UcFaxStatus::DELIVERED,
  to_telephone: '+19083998866',
  type: Models::Shared::UcFaxType::INBOUND,
  updated_at: DateTime.iso8601('2023-04-16T22:40:26.165Z')
), connection_id: '<id>')

unless res.uc_fax.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `uc_fax`                                                                                                                                         | [Models::Shared::UcFax](../../models/shared/ucfax.md)                                                                                            | :heavy_check_mark:                                                                                                                               | A fax sent or received through a phone number                                                                                                    |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateUcFaxQueryParamFields](../../models/operations/createucfaxqueryparamfields.md)>                              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateUcFaxResponse)](../../models/operations/createucfaxresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_uc_recording

Creates a UcRecording. Provide the unified UcRecording fields in the request body; they are mapped to the provider's API. Returns the created UcRecording.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createUcRecording" method="post" path="/uc/{connection_id}/recording" example="uc_recording" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.uc.create_uc_recording(uc_recording: Models::Shared::UcRecording.new(
  contacts: [],
  conversation_identifier: '5e81bce4-30af-4a4f-937c-4158010fd9eb',
  created_at: DateTime.iso8601('2022-09-17T19:41:46.956Z'),
  end_at: DateTime.iso8601('2024-05-15T17:40:20.124Z'),
  expires_at: DateTime.iso8601('2026-05-20T12:47:19.575Z'),
  id: '5e81bce4-30af-4a4f-937c-4158010fd9eb',
  media: [
    Models::Shared::UcRecordingMedia.new(
      end_at: DateTime.iso8601('2024-04-11T22:58:17.963Z'),
      language: 'en',
      recording_download_url: 'https://parched-wasabi.com/',
      start_at: DateTime.iso8601('2026-06-08T12:56:19.180Z'),
      transcript_download_url: 'https://colossal-cuckoo.name',
      transcripts: [
        Models::Shared::UcRecordingTranscript.new(
          end_at: DateTime.iso8601('2026-03-19T04:05:00.308Z'),
          start_at: DateTime.iso8601('2024-06-13T12:03:04.056Z'),
          text: 'Turpis maiores ducimus tero speculum.'
        ),
        Models::Shared::UcRecordingTranscript.new(
          end_at: DateTime.iso8601('2024-10-26T04:28:47.841Z'),
          start_at: DateTime.iso8601('2026-08-28T09:55:11.585Z'),
          text: 'Magnam consuasor uxor tergiversatio subseco.'
        ),
      ]
    ),
  ],
  metadata: [],
  start_at: DateTime.iso8601('2023-05-01T18:10:48.122Z'),
  type: Models::Shared::UcRecordingType::OUTBOUND,
  updated_at: DateTime.iso8601('2025-04-01T21:29:42.340Z'),
  user_phone: '1-915-327-0429 x509',
  web_url: 'https://spherical-comparison.org'
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
    jwt: '<YOUR_API_KEY_HERE>'
  )
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
    jwt: '<YOUR_API_KEY_HERE>'
  )
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
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

## get_uc_fax

Retrieves a single UcFax by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getUcFax" method="get" path="/uc/{connection_id}/fax/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.uc.get_uc_fax(connection_id: '<id>', id: '<id>')

unless res.uc_fax.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Fax                                                                                                                                    |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetUcFaxQueryParamFields](../../models/operations/getucfaxqueryparamfields.md)>                                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetUcFaxResponse)](../../models/operations/getucfaxresponse.md)**

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
    jwt: '<YOUR_API_KEY_HERE>'
  )
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
    jwt: '<YOUR_API_KEY_HERE>'
  )
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
    jwt: '<YOUR_API_KEY_HERE>'
  )
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
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListUcCallsRequest.new(
  connection_id: '<id>'
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
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListUcCommentsRequest.new(
  connection_id: '<id>'
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
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListUcContactsRequest.new(
  connection_id: '<id>'
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

## list_uc_faxes

Returns a list of UcFaxes. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUcFaxes" method="get" path="/uc/{connection_id}/fax" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListUcFaxesRequest.new(
  connection_id: '<id>'
)
res = s.uc.list_uc_faxes(request: req)

unless res.uc_faxes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Models::Operations::ListUcFaxesRequest](../../models/operations/listucfaxesrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |

### Response

**[T.nilable(Models::Operations::ListUcFaxesResponse)](../../models/operations/listucfaxesresponse.md)**

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
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListUcRecordingsRequest.new(
  connection_id: '<id>'
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
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListUcScorecardsRequest.new(
  connection_id: '<id>'
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
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListUcScorecardtemplatesRequest.new(
  connection_id: '<id>'
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

<!-- UsageSnippet language="ruby" operationID="patchUcCall" method="patch" path="/uc/{connection_id}/call/{id}" example="uc_call" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchUcCallRequest.new(
  uc_call: Models::Shared::UcCall.new(
    answer_at: DateTime.iso8601('2025-05-29T12:14:40.508Z'),
    contacts: [],
    conversation_identifier: '0d6aabfd-dfc5-4799-bd9f-9270d8a2e6f5',
    cost_amount: 1.564,
    created_at: DateTime.iso8601('2023-04-22T19:05:34.882Z'),
    currency: 'USD',
    duration_seconds: 2556.0,
    end_at: DateTime.iso8601('2024-06-07T13:53:14.323Z'),
    id: '0d6aabfd-dfc5-4799-bd9f-9270d8a2e6f5',
    is_private: false,
    metadata: [
      Models::Shared::UcMetadata.new(
        extra_data: {

        },
        format: Models::Shared::UcMetadataFormat::PRICE,
        id: '38cd5b4b-edb8-479c-8f91-d7f5a990508e',
        namespace: 'custom',
        slug: 'custom_field',
        value: 'tui'
      ),
    ],
    start_at: DateTime.iso8601('2023-12-22T10:54:58.879Z'),
    status: Models::Shared::UcCallStatus::IN_PROGRESS,
    telephone: Models::Shared::PropertyUcCallTelephone.new(
      telephone: '(493) 534-0768',
      type: Models::Shared::PropertyUcCallTelephoneType::MOBILE
    ),
    type: Models::Shared::UcCallType::INBOUND,
    updated_at: DateTime.iso8601('2023-08-05T12:32:14.524Z'),
    user_phone: '819-894-3317 x163'
  ),
  connection_id: '<id>',
  id: '<id>'
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

<!-- UsageSnippet language="ruby" operationID="patchUcComment" method="patch" path="/uc/{connection_id}/comment/{id}" example="uc_comment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchUcCommentRequest.new(
  uc_comment: Models::Shared::UcComment.new(
    content: 'Vociferor vitiosus.',
    created_at: '2023-04-02T23:42:31.571Z',
    id: 'ef2a7d3a-387d-4a6f-9e75-927534223caa',
    metadata: [],
    updated_at: '2024-02-16T06:32:36.700Z'
  ),
  connection_id: '<id>',
  id: '<id>'
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

<!-- UsageSnippet language="ruby" operationID="patchUcContact" method="patch" path="/uc/{connection_id}/contact/{id}" example="uc_contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchUcContactRequest.new(
  uc_contact: Models::Shared::UcContact.new(
    company: 'Tillman Group',
    created_at: DateTime.iso8601('2019-10-28T11:06:56.460Z'),
    emails: [
      Models::Shared::UcEmail.new(
        email: 'Luther_Rogahn32@yahoo.com',
        type: Models::Shared::UcEmailType::WORK
      ),
    ],
    first_name: 'Luther',
    id: '8c1bef44-862e-4dd4-bf97-9cb2d0261c1b',
    last_name: 'Rogahn',
    metadata: [],
    name: 'Luther Rogahn',
    telephones: [
      Models::Shared::UcTelephone.new(
        telephone: '(809) 992-1681',
        type: Models::Shared::UcTelephoneType::FAX
      ),
      Models::Shared::UcTelephone.new(
        telephone: '(868) 238-2746',
        type: Models::Shared::UcTelephoneType::HOME
      ),
      Models::Shared::UcTelephone.new(
        telephone: '(219) 736-0357',
        type: Models::Shared::UcTelephoneType::MOBILE
      ),
    ],
    title: 'Chief Optimization Executive',
    updated_at: DateTime.iso8601('2023-12-24T06:17:14.491Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

<!-- UsageSnippet language="ruby" operationID="patchUcRecording" method="patch" path="/uc/{connection_id}/recording/{id}" example="uc_recording" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchUcRecordingRequest.new(
  uc_recording: Models::Shared::UcRecording.new(
    contacts: [],
    conversation_identifier: '1936e07d-13eb-4c40-a95e-9afcde73753e',
    created_at: DateTime.iso8601('2022-09-17T19:41:46.956Z'),
    end_at: DateTime.iso8601('2024-05-15T17:40:20.134Z'),
    expires_at: DateTime.iso8601('2026-05-20T12:47:19.595Z'),
    id: '1936e07d-13eb-4c40-a95e-9afcde73753e',
    media: [
      Models::Shared::UcRecordingMedia.new(
        end_at: DateTime.iso8601('2024-04-11T22:58:17.971Z'),
        language: 'en',
        recording_download_url: 'https://parched-wasabi.com/',
        start_at: DateTime.iso8601('2026-06-08T12:56:19.201Z'),
        transcript_download_url: 'https://colossal-cuckoo.name',
        transcripts: [
          Models::Shared::UcRecordingTranscript.new(
            end_at: DateTime.iso8601('2026-03-19T04:05:00.327Z'),
            start_at: DateTime.iso8601('2024-06-13T12:03:04.066Z'),
            text: 'Turpis maiores ducimus tero speculum.'
          ),
          Models::Shared::UcRecordingTranscript.new(
            end_at: DateTime.iso8601('2024-10-26T04:28:47.853Z'),
            start_at: DateTime.iso8601('2026-08-28T09:55:11.607Z'),
            text: 'Magnam consuasor uxor tergiversatio subseco.'
          ),
        ]
      ),
    ],
    metadata: [],
    start_at: DateTime.iso8601('2023-05-01T18:10:48.125Z'),
    type: Models::Shared::UcRecordingType::OUTBOUND,
    updated_at: DateTime.iso8601('2025-04-01T21:29:42.354Z'),
    user_phone: '1-915-327-0429 x509',
    web_url: 'https://spherical-comparison.org'
  ),
  connection_id: '<id>',
  id: '<id>'
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
    jwt: '<YOUR_API_KEY_HERE>'
  )
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
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

## remove_uc_fax

Deletes the UcFax identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeUcFax" method="delete" path="/uc/{connection_id}/fax/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.uc.remove_uc_fax(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Fax        |

### Response

**[T.nilable(Models::Operations::RemoveUcFaxResponse)](../../models/operations/removeucfaxresponse.md)**

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
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

<!-- UsageSnippet language="ruby" operationID="updateUcCall" method="put" path="/uc/{connection_id}/call/{id}" example="uc_call" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateUcCallRequest.new(
  uc_call: Models::Shared::UcCall.new(
    answer_at: DateTime.iso8601('2025-05-29T12:14:40.508Z'),
    contacts: [],
    conversation_identifier: '0d6aabfd-dfc5-4799-bd9f-9270d8a2e6f5',
    cost_amount: 1.564,
    created_at: DateTime.iso8601('2023-04-22T19:05:34.882Z'),
    currency: 'USD',
    duration_seconds: 2556.0,
    end_at: DateTime.iso8601('2024-06-07T13:53:14.323Z'),
    id: '0d6aabfd-dfc5-4799-bd9f-9270d8a2e6f5',
    is_private: false,
    metadata: [
      Models::Shared::UcMetadata.new(
        extra_data: {

        },
        format: Models::Shared::UcMetadataFormat::PRICE,
        id: '38cd5b4b-edb8-479c-8f91-d7f5a990508e',
        namespace: 'custom',
        slug: 'custom_field',
        value: 'tui'
      ),
    ],
    start_at: DateTime.iso8601('2023-12-22T10:54:58.879Z'),
    status: Models::Shared::UcCallStatus::IN_PROGRESS,
    telephone: Models::Shared::PropertyUcCallTelephone.new(
      telephone: '(493) 534-0768',
      type: Models::Shared::PropertyUcCallTelephoneType::MOBILE
    ),
    type: Models::Shared::UcCallType::INBOUND,
    updated_at: DateTime.iso8601('2023-08-05T12:32:14.524Z'),
    user_phone: '819-894-3317 x163'
  ),
  connection_id: '<id>',
  id: '<id>'
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

<!-- UsageSnippet language="ruby" operationID="updateUcComment" method="put" path="/uc/{connection_id}/comment/{id}" example="uc_comment" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateUcCommentRequest.new(
  uc_comment: Models::Shared::UcComment.new(
    content: 'Vociferor vitiosus.',
    created_at: '2023-04-02T23:42:31.571Z',
    id: 'ef2a7d3a-387d-4a6f-9e75-927534223caa',
    metadata: [],
    updated_at: '2024-02-16T06:32:36.700Z'
  ),
  connection_id: '<id>',
  id: '<id>'
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

<!-- UsageSnippet language="ruby" operationID="updateUcContact" method="put" path="/uc/{connection_id}/contact/{id}" example="uc_contact" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateUcContactRequest.new(
  uc_contact: Models::Shared::UcContact.new(
    company: 'Tillman Group',
    created_at: DateTime.iso8601('2019-10-28T11:06:56.460Z'),
    emails: [
      Models::Shared::UcEmail.new(
        email: 'Luther_Rogahn32@yahoo.com',
        type: Models::Shared::UcEmailType::WORK
      ),
    ],
    first_name: 'Luther',
    id: '8c1bef44-862e-4dd4-bf97-9cb2d0261c1b',
    last_name: 'Rogahn',
    metadata: [],
    name: 'Luther Rogahn',
    telephones: [
      Models::Shared::UcTelephone.new(
        telephone: '(809) 992-1681',
        type: Models::Shared::UcTelephoneType::FAX
      ),
      Models::Shared::UcTelephone.new(
        telephone: '(868) 238-2746',
        type: Models::Shared::UcTelephoneType::HOME
      ),
      Models::Shared::UcTelephone.new(
        telephone: '(219) 736-0357',
        type: Models::Shared::UcTelephoneType::MOBILE
      ),
    ],
    title: 'Chief Optimization Executive',
    updated_at: DateTime.iso8601('2023-12-24T06:17:14.491Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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

<!-- UsageSnippet language="ruby" operationID="updateUcRecording" method="put" path="/uc/{connection_id}/recording/{id}" example="uc_recording" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateUcRecordingRequest.new(
  uc_recording: Models::Shared::UcRecording.new(
    contacts: [],
    conversation_identifier: '1936e07d-13eb-4c40-a95e-9afcde73753e',
    created_at: DateTime.iso8601('2022-09-17T19:41:46.956Z'),
    end_at: DateTime.iso8601('2024-05-15T17:40:20.134Z'),
    expires_at: DateTime.iso8601('2026-05-20T12:47:19.595Z'),
    id: '1936e07d-13eb-4c40-a95e-9afcde73753e',
    media: [
      Models::Shared::UcRecordingMedia.new(
        end_at: DateTime.iso8601('2024-04-11T22:58:17.971Z'),
        language: 'en',
        recording_download_url: 'https://parched-wasabi.com/',
        start_at: DateTime.iso8601('2026-06-08T12:56:19.201Z'),
        transcript_download_url: 'https://colossal-cuckoo.name',
        transcripts: [
          Models::Shared::UcRecordingTranscript.new(
            end_at: DateTime.iso8601('2026-03-19T04:05:00.327Z'),
            start_at: DateTime.iso8601('2024-06-13T12:03:04.066Z'),
            text: 'Turpis maiores ducimus tero speculum.'
          ),
          Models::Shared::UcRecordingTranscript.new(
            end_at: DateTime.iso8601('2024-10-26T04:28:47.853Z'),
            start_at: DateTime.iso8601('2026-08-28T09:55:11.607Z'),
            text: 'Magnam consuasor uxor tergiversatio subseco.'
          ),
        ]
      ),
    ],
    metadata: [],
    start_at: DateTime.iso8601('2023-05-01T18:10:48.125Z'),
    type: Models::Shared::UcRecordingType::OUTBOUND,
    updated_at: DateTime.iso8601('2025-04-01T21:29:42.354Z'),
    user_phone: '1-915-327-0429 x509',
    web_url: 'https://spherical-comparison.org'
  ),
  connection_id: '<id>',
  id: '<id>'
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