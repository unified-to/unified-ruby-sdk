# Forms
(*forms*)

## Overview

### Available Operations

* [create_forms_form](#create_forms_form) - Create a form
* [get_forms_form](#get_forms_form) - Retrieve a form
* [get_forms_submission](#get_forms_submission) - Retrieve a submission
* [list_forms_forms](#list_forms_forms) - List all forms
* [list_forms_submissions](#list_forms_submissions) - List all submissions
* [patch_forms_form](#patch_forms_form) - Update a form
* [remove_forms_form](#remove_forms_form) - Remove a form
* [update_forms_form](#update_forms_form) - Update a form

## create_forms_form

Creates a FormsForm. Provide the unified FormsForm fields in the request body; they are mapped to the provider's API. Returns the created FormsForm.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createFormsForm" method="post" path="/forms/{connection_id}/form" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.forms.create_forms_form(forms_form: Models::Shared::FormsForm.new(
  confirmation_message: 'Alo crebro vado utique.',
  created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
  description: 'Qui pauper triumphus adipisci comitatus tamen stabilis clementia culpo tolero.',
  fields_: [
    Models::Shared::FormField.new(
      created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
      id: 'dc1e07d8-1b9c-4552-b10a-b1197a56461c',
      is_active: true,
      is_required: true,
      max_length: 146.0,
      name: 'cornu creta confugo',
      order: 0.0,
      type: Models::Shared::FormFieldType::TEXTAREA,
      updated_at: DateTime.iso8601('2025-04-29T16:40:15.224Z'),
    ),
    Models::Shared::FormField.new(
      created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
      id: '0e199bf1-7c80-482d-9950-915d7c23b767',
      is_active: true,
      is_required: false,
      name: 'tracto nostrum desidero',
      order: 1.0,
      type: Models::Shared::FormFieldType::TEXTAREA,
      updated_at: DateTime.iso8601('2024-09-02T18:17:30.907Z'),
    ),
    Models::Shared::FormField.new(
      choices: [
        'conor',
        'patior',
        'crur',
        'vinculum',
        'tredecim',
      ],
      created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
      default_value: 'somniculosus',
      id: '6cf18692-b6ef-40dd-b47c-229668f74073',
      is_active: true,
      is_required: false,
      name: 'officia supra consequatur',
      order: 2.0,
      type: Models::Shared::FormFieldType::MULTIPLE_SELECT,
      updated_at: DateTime.iso8601('2024-02-26T14:39:45.411Z'),
    ),
    Models::Shared::FormField.new(
      created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
      description: 'Antepono cursim aurum voluptatum placeat audax tripudio amo.',
      id: '9c593867-3fbe-4d2b-8750-fb5424d3ca4a',
      is_active: true,
      is_required: false,
      name: 'curtus fugiat audentia',
      order: 3.0,
      type: Models::Shared::FormFieldType::TEXTAREA,
      updated_at: DateTime.iso8601('2024-11-28T04:02:01.699Z'),
    ),
  ],
  has_multiple_submissions: false,
  has_progress_bar: false,
  has_shuffle_questions: true,
  id: 'c860aa31-60bd-4e6f-b065-7ab5ade28c0a',
  is_active: false,
  metadata: [],
  name: 'tandem tracto vivo Form',
  published_url: 'https://massive-blowgun.info',
  response_count: 423.0,
  updated_at: DateTime.iso8601('2024-08-25T09:11:37.850Z'),
), connection_id: '<id>')

unless res.forms_form.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `forms_form`                                                                                                                                     | [Models::Shared::FormsForm](../../models/shared/formsform.md)                                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateFormsFormQueryParamFields](../../models/operations/createformsformqueryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateFormsFormResponse)](../../models/operations/createformsformresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_forms_form

Retrieves a single FormsForm by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getFormsForm" method="get" path="/forms/{connection_id}/form/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.forms.get_forms_form(connection_id: '<id>', id: '<id>')

unless res.forms_form.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Form                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetFormsFormQueryParamFields](../../models/operations/getformsformqueryparamfields.md)>                            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetFormsFormResponse)](../../models/operations/getformsformresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_forms_submission

Retrieves a single FormsSubmission by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getFormsSubmission" method="get" path="/forms/{connection_id}/submission/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.forms.get_forms_submission(connection_id: '<id>', id: '<id>')

unless res.forms_submission.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Submission                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetFormsSubmissionQueryParamFields](../../models/operations/getformssubmissionqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetFormsSubmissionResponse)](../../models/operations/getformssubmissionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_forms_forms

Returns a list of FormsForms. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listFormsForms" method="get" path="/forms/{connection_id}/form" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListFormsFormsRequest.new(
  connection_id: '<id>',
)

res = s.forms.list_forms_forms(request: req)

unless res.forms_forms.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::ListFormsFormsRequest](../../models/operations/listformsformsrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::ListFormsFormsResponse)](../../models/operations/listformsformsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_forms_submissions

Returns a list of FormsSubmissions. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listFormsSubmissions" method="get" path="/forms/{connection_id}/submission" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListFormsSubmissionsRequest.new(
  connection_id: '<id>',
)

res = s.forms.list_forms_submissions(request: req)

unless res.forms_submissions.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListFormsSubmissionsRequest](../../models/operations/listformssubmissionsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListFormsSubmissionsResponse)](../../models/operations/listformssubmissionsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_forms_form

Updates the FormsForm identified by `id`. Provide the unified FormsForm fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchFormsForm" method="patch" path="/forms/{connection_id}/form/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchFormsFormRequest.new(
  forms_form: Models::Shared::FormsForm.new(
    confirmation_message: 'Alo crebro vado utique.',
    created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
    description: 'Qui pauper triumphus adipisci comitatus tamen stabilis clementia culpo tolero.',
    fields_: [
      Models::Shared::FormField.new(
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        id: 'bb19d84d-96b1-4e5d-b487-1db262deb6e2',
        is_active: true,
        is_required: true,
        max_length: 146.0,
        name: 'cornu creta confugo',
        order: 0.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2025-04-29T16:40:15.237Z'),
      ),
      Models::Shared::FormField.new(
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        id: 'd6071491-c5c3-4ce9-885a-3859c113f051',
        is_active: true,
        is_required: false,
        name: 'tracto nostrum desidero',
        order: 1.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2024-09-02T18:17:30.915Z'),
      ),
      Models::Shared::FormField.new(
        choices: [
          'conor',
          'patior',
          'crur',
          'vinculum',
          'tredecim',
        ],
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        default_value: 'somniculosus',
        id: 'f264b76e-1a40-45da-b70b-c127c661fb56',
        is_active: true,
        is_required: false,
        name: 'officia supra consequatur',
        order: 2.0,
        type: Models::Shared::FormFieldType::MULTIPLE_SELECT,
        updated_at: DateTime.iso8601('2024-02-26T14:39:45.415Z'),
      ),
      Models::Shared::FormField.new(
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        description: 'Antepono cursim aurum voluptatum placeat audax tripudio amo.',
        id: 'e2f75a55-4528-4383-9790-369d90a5bc75',
        is_active: true,
        is_required: false,
        name: 'curtus fugiat audentia',
        order: 3.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2024-11-28T04:02:01.708Z'),
      ),
    ],
    has_multiple_submissions: false,
    has_progress_bar: false,
    has_shuffle_questions: true,
    id: 'c9f415b5-cf47-4422-8405-44c9cb4a3bf0',
    is_active: false,
    metadata: [],
    name: 'tandem tracto vivo Form',
    published_url: 'https://massive-blowgun.info',
    response_count: 423.0,
    updated_at: DateTime.iso8601('2024-08-25T09:11:37.858Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.forms.patch_forms_form(request: req)

unless res.forms_form.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::PatchFormsFormRequest](../../models/operations/patchformsformrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::PatchFormsFormResponse)](../../models/operations/patchformsformresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_forms_form

Deletes the FormsForm identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeFormsForm" method="delete" path="/forms/{connection_id}/form/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.forms.remove_forms_form(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Form       |

### Response

**[T.nilable(Models::Operations::RemoveFormsFormResponse)](../../models/operations/removeformsformresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_forms_form

Updates the FormsForm identified by `id`. Provide the unified FormsForm fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateFormsForm" method="put" path="/forms/{connection_id}/form/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateFormsFormRequest.new(
  forms_form: Models::Shared::FormsForm.new(
    confirmation_message: 'Alo crebro vado utique.',
    created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
    description: 'Qui pauper triumphus adipisci comitatus tamen stabilis clementia culpo tolero.',
    fields_: [
      Models::Shared::FormField.new(
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        id: 'bb19d84d-96b1-4e5d-b487-1db262deb6e2',
        is_active: true,
        is_required: true,
        max_length: 146.0,
        name: 'cornu creta confugo',
        order: 0.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2025-04-29T16:40:15.237Z'),
      ),
      Models::Shared::FormField.new(
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        id: 'd6071491-c5c3-4ce9-885a-3859c113f051',
        is_active: true,
        is_required: false,
        name: 'tracto nostrum desidero',
        order: 1.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2024-09-02T18:17:30.915Z'),
      ),
      Models::Shared::FormField.new(
        choices: [
          'conor',
          'patior',
          'crur',
          'vinculum',
          'tredecim',
        ],
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        default_value: 'somniculosus',
        id: 'f264b76e-1a40-45da-b70b-c127c661fb56',
        is_active: true,
        is_required: false,
        name: 'officia supra consequatur',
        order: 2.0,
        type: Models::Shared::FormFieldType::MULTIPLE_SELECT,
        updated_at: DateTime.iso8601('2024-02-26T14:39:45.415Z'),
      ),
      Models::Shared::FormField.new(
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        description: 'Antepono cursim aurum voluptatum placeat audax tripudio amo.',
        id: 'e2f75a55-4528-4383-9790-369d90a5bc75',
        is_active: true,
        is_required: false,
        name: 'curtus fugiat audentia',
        order: 3.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2024-11-28T04:02:01.708Z'),
      ),
    ],
    has_multiple_submissions: false,
    has_progress_bar: false,
    has_shuffle_questions: true,
    id: 'c9f415b5-cf47-4422-8405-44c9cb4a3bf0',
    is_active: false,
    metadata: [],
    name: 'tandem tracto vivo Form',
    published_url: 'https://massive-blowgun.info',
    response_count: 423.0,
    updated_at: DateTime.iso8601('2024-08-25T09:11:37.858Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.forms.update_forms_form(request: req)

unless res.forms_form.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::UpdateFormsFormRequest](../../models/operations/updateformsformrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::UpdateFormsFormResponse)](../../models/operations/updateformsformresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |