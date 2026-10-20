# Form
(*form*)

## Overview

### Available Operations

* [create_forms_form](#create_forms_form) - Create a form
* [get_forms_form](#get_forms_form) - Retrieve a form
* [list_forms_forms](#list_forms_forms) - List all forms
* [patch_forms_form](#patch_forms_form) - Update a form
* [remove_forms_form](#remove_forms_form) - Remove a form
* [update_forms_form](#update_forms_form) - Update a form

## create_forms_form

Create a form

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

res = s.form.create_forms_form(forms_form: Models::Shared::FormsForm.new(
  confirmation_message: 'Alo crebro vado utique.',
  created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
  description: 'Qui pauper triumphus adipisci comitatus tamen stabilis clementia culpo tolero.',
  fields_: [
    Models::Shared::FormField.new(
      created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
      id: '9ec67db8-e4ed-4b10-9838-9cf98e96d05d',
      is_active: true,
      is_required: true,
      max_length: 146.0,
      name: 'cornu creta confugo',
      order: 0.0,
      type: Models::Shared::FormFieldType::TEXTAREA,
      updated_at: DateTime.iso8601('2025-04-28T04:13:38.776Z'),
    ),
    Models::Shared::FormField.new(
      created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
      id: '06a03aa1-d27b-4c20-9c42-d9edb9e970d6',
      is_active: true,
      is_required: false,
      name: 'tracto nostrum desidero',
      order: 1.0,
      type: Models::Shared::FormFieldType::TEXTAREA,
      updated_at: DateTime.iso8601('2024-09-01T21:04:36.647Z'),
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
      id: '3a097cbd-0117-469a-a7e1-401853d2cec0',
      is_active: true,
      is_required: false,
      name: 'officia supra consequatur',
      order: 2.0,
      type: Models::Shared::FormFieldType::MULTIPLE_SELECT,
      updated_at: DateTime.iso8601('2024-02-26T05:30:11.214Z'),
    ),
    Models::Shared::FormField.new(
      created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
      description: 'Antepono cursim aurum voluptatum placeat audax tripudio amo.',
      id: '543e79cf-ac95-493a-8d19-6cef7d04a7e1',
      is_active: true,
      is_required: false,
      name: 'curtus fugiat audentia',
      order: 3.0,
      type: Models::Shared::FormFieldType::TEXTAREA,
      updated_at: DateTime.iso8601('2024-11-27T01:18:41.915Z'),
    ),
  ],
  has_multiple_submissions: false,
  has_progress_bar: false,
  has_shuffle_questions: true,
  id: 'ddce78d6-b73e-4479-a746-0051dc6a5320',
  is_active: false,
  metadata: [],
  name: 'tandem tracto vivo Form',
  published_url: 'https://massive-blowgun.info',
  response_count: 423.0,
  updated_at: DateTime.iso8601('2024-08-24T12:30:46.141Z'),
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

Retrieve a form

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

res = s.form.get_forms_form(connection_id: '<id>', id: '<id>')

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

## list_forms_forms

List all forms

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

res = s.form.list_forms_forms(request: req)

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

## patch_forms_form

Update a form

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
        id: '7dd831d0-3c94-4101-8196-d8a6b7d50f18',
        is_active: true,
        is_required: true,
        max_length: 146.0,
        name: 'cornu creta confugo',
        order: 0.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2025-04-28T04:13:38.788Z'),
      ),
      Models::Shared::FormField.new(
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        id: '9b7c91c5-f1d4-40a7-8746-6fa484527ef9',
        is_active: true,
        is_required: false,
        name: 'tracto nostrum desidero',
        order: 1.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2024-09-01T21:04:36.654Z'),
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
        id: '2ef97fbd-1374-4b5f-a6c6-58d9ad10ed75',
        is_active: true,
        is_required: false,
        name: 'officia supra consequatur',
        order: 2.0,
        type: Models::Shared::FormFieldType::MULTIPLE_SELECT,
        updated_at: DateTime.iso8601('2024-02-26T05:30:11.218Z'),
      ),
      Models::Shared::FormField.new(
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        description: 'Antepono cursim aurum voluptatum placeat audax tripudio amo.',
        id: '43bc5aa3-cf79-4235-9571-40299974ad0a',
        is_active: true,
        is_required: false,
        name: 'curtus fugiat audentia',
        order: 3.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2024-11-27T01:18:41.924Z'),
      ),
    ],
    has_multiple_submissions: false,
    has_progress_bar: false,
    has_shuffle_questions: true,
    id: '8a1d8210-4395-4fe5-8d26-af1b90e721e3',
    is_active: false,
    metadata: [],
    name: 'tandem tracto vivo Form',
    published_url: 'https://massive-blowgun.info',
    response_count: 423.0,
    updated_at: DateTime.iso8601('2024-08-24T12:30:46.148Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.form.patch_forms_form(request: req)

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

Remove a form

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

res = s.form.remove_forms_form(connection_id: '<id>', id: '<id>')

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

Update a form

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
        id: '7dd831d0-3c94-4101-8196-d8a6b7d50f18',
        is_active: true,
        is_required: true,
        max_length: 146.0,
        name: 'cornu creta confugo',
        order: 0.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2025-04-28T04:13:38.788Z'),
      ),
      Models::Shared::FormField.new(
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        id: '9b7c91c5-f1d4-40a7-8746-6fa484527ef9',
        is_active: true,
        is_required: false,
        name: 'tracto nostrum desidero',
        order: 1.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2024-09-01T21:04:36.654Z'),
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
        id: '2ef97fbd-1374-4b5f-a6c6-58d9ad10ed75',
        is_active: true,
        is_required: false,
        name: 'officia supra consequatur',
        order: 2.0,
        type: Models::Shared::FormFieldType::MULTIPLE_SELECT,
        updated_at: DateTime.iso8601('2024-02-26T05:30:11.218Z'),
      ),
      Models::Shared::FormField.new(
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        description: 'Antepono cursim aurum voluptatum placeat audax tripudio amo.',
        id: '43bc5aa3-cf79-4235-9571-40299974ad0a',
        is_active: true,
        is_required: false,
        name: 'curtus fugiat audentia',
        order: 3.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2024-11-27T01:18:41.924Z'),
      ),
    ],
    has_multiple_submissions: false,
    has_progress_bar: false,
    has_shuffle_questions: true,
    id: '8a1d8210-4395-4fe5-8d26-af1b90e721e3',
    is_active: false,
    metadata: [],
    name: 'tandem tracto vivo Form',
    published_url: 'https://massive-blowgun.info',
    response_count: 423.0,
    updated_at: DateTime.iso8601('2024-08-24T12:30:46.148Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.form.update_forms_form(request: req)

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