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

res = s.form.create_forms_form(forms_form: Models::Shared::FormsForm.new(
  confirmation_message: 'Alo crebro vado utique.',
  created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
  description: 'Qui pauper triumphus adipisci comitatus tamen stabilis clementia culpo tolero.',
  fields_: [
    Models::Shared::FormField.new(
      created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
      id: '5b996696-f724-401a-bf6b-4a496762bc9e',
      is_active: true,
      is_required: true,
      max_length: 146.0,
      name: 'cornu creta confugo',
      order: 0.0,
      type: Models::Shared::FormFieldType::TEXTAREA,
      updated_at: DateTime.iso8601('2025-05-03T18:10:35.380Z'),
    ),
    Models::Shared::FormField.new(
      created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
      id: 'cdab960d-64f3-40cb-834b-68a830af794d',
      is_active: true,
      is_required: false,
      name: 'tracto nostrum desidero',
      order: 1.0,
      type: Models::Shared::FormFieldType::TEXTAREA,
      updated_at: DateTime.iso8601('2024-09-05T03:03:12.604Z'),
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
      id: 'c061065a-48df-4e9e-9bb8-1f799118e20f',
      is_active: true,
      is_required: false,
      name: 'officia supra consequatur',
      order: 2.0,
      type: Models::Shared::FormFieldType::MULTIPLE_SELECT,
      updated_at: DateTime.iso8601('2024-02-27T15:10:08.896Z'),
    ),
    Models::Shared::FormField.new(
      created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
      description: 'Antepono cursim aurum voluptatum placeat audax tripudio amo.',
      id: '4fdcf681-22b4-4084-abbe-2d7af149c1b9',
      is_active: true,
      is_required: false,
      name: 'curtus fugiat audentia',
      order: 3.0,
      type: Models::Shared::FormFieldType::TEXTAREA,
      updated_at: DateTime.iso8601('2024-12-01T03:31:47.198Z'),
    ),
  ],
  has_multiple_submissions: false,
  has_progress_bar: false,
  has_shuffle_questions: true,
  id: '3ba556eb-4f44-43c4-9c2b-bb995dbadef9',
  is_active: false,
  metadata: [],
  name: 'tandem tracto vivo Form',
  published_url: 'https://massive-blowgun.info',
  response_count: 423.0,
  updated_at: DateTime.iso8601('2024-08-27T16:31:35.702Z'),
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
        id: '3da3d60b-be8d-4f1f-8881-e1134a5b8749',
        is_active: true,
        is_required: true,
        max_length: 146.0,
        name: 'cornu creta confugo',
        order: 0.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2025-05-03T18:10:35.390Z'),
      ),
      Models::Shared::FormField.new(
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        id: '7b0462c3-e39e-409e-a780-f81d033360bd',
        is_active: true,
        is_required: false,
        name: 'tracto nostrum desidero',
        order: 1.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2024-09-05T03:03:12.609Z'),
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
        id: '88800926-b8e8-4f24-a24b-d61caa9ff763',
        is_active: true,
        is_required: false,
        name: 'officia supra consequatur',
        order: 2.0,
        type: Models::Shared::FormFieldType::MULTIPLE_SELECT,
        updated_at: DateTime.iso8601('2024-02-27T15:10:08.898Z'),
      ),
      Models::Shared::FormField.new(
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        description: 'Antepono cursim aurum voluptatum placeat audax tripudio amo.',
        id: '0edeb3b4-bb2a-422f-af30-301fad9ca159',
        is_active: true,
        is_required: false,
        name: 'curtus fugiat audentia',
        order: 3.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2024-12-01T03:31:47.205Z'),
      ),
    ],
    has_multiple_submissions: false,
    has_progress_bar: false,
    has_shuffle_questions: true,
    id: 'c8d166ae-e53d-4f54-858f-dd6924fe413b',
    is_active: false,
    metadata: [],
    name: 'tandem tracto vivo Form',
    published_url: 'https://massive-blowgun.info',
    response_count: 423.0,
    updated_at: DateTime.iso8601('2024-08-27T16:31:35.708Z'),
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
        id: '3da3d60b-be8d-4f1f-8881-e1134a5b8749',
        is_active: true,
        is_required: true,
        max_length: 146.0,
        name: 'cornu creta confugo',
        order: 0.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2025-05-03T18:10:35.390Z'),
      ),
      Models::Shared::FormField.new(
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        id: '7b0462c3-e39e-409e-a780-f81d033360bd',
        is_active: true,
        is_required: false,
        name: 'tracto nostrum desidero',
        order: 1.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2024-09-05T03:03:12.609Z'),
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
        id: '88800926-b8e8-4f24-a24b-d61caa9ff763',
        is_active: true,
        is_required: false,
        name: 'officia supra consequatur',
        order: 2.0,
        type: Models::Shared::FormFieldType::MULTIPLE_SELECT,
        updated_at: DateTime.iso8601('2024-02-27T15:10:08.898Z'),
      ),
      Models::Shared::FormField.new(
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        description: 'Antepono cursim aurum voluptatum placeat audax tripudio amo.',
        id: '0edeb3b4-bb2a-422f-af30-301fad9ca159',
        is_active: true,
        is_required: false,
        name: 'curtus fugiat audentia',
        order: 3.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2024-12-01T03:31:47.205Z'),
      ),
    ],
    has_multiple_submissions: false,
    has_progress_bar: false,
    has_shuffle_questions: true,
    id: 'c8d166ae-e53d-4f54-858f-dd6924fe413b',
    is_active: false,
    metadata: [],
    name: 'tandem tracto vivo Form',
    published_url: 'https://massive-blowgun.info',
    response_count: 423.0,
    updated_at: DateTime.iso8601('2024-08-27T16:31:35.708Z'),
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