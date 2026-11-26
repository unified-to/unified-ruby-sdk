# Form

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

<!-- UsageSnippet language="ruby" operationID="createFormsForm" method="post" path="/forms/{connection_id}/form" example="forms_form" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.form.create_forms_form(forms_form: Models::Shared::FormsForm.new(
  confirmation_message: 'Alo crebro vado utique.',
  created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
  description: 'Qui pauper triumphus adipisci comitatus tamen stabilis clementia culpo tolero.',
  fields_: [
    Models::Shared::FormField.new(
      created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
      id: 'd68dc7b8-5989-4d61-90b9-1b3d7628ca2e',
      is_active: true,
      is_required: true,
      max_length: 146.0,
      name: 'voluntarius argumentum decumbo',
      order: 0.0,
      type: Models::Shared::FormFieldType::TEXTAREA,
      updated_at: DateTime.iso8601('2025-05-17T03:27:17.802Z')
    ),
    Models::Shared::FormField.new(
      created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
      id: '56442052-e9d4-4b8c-b84c-56fff39ef75e',
      is_active: true,
      is_required: false,
      name: 'desidero clibanus calcar',
      order: 1.0,
      type: Models::Shared::FormFieldType::TEXTAREA,
      updated_at: DateTime.iso8601('2024-09-12T22:04:53.259Z')
    ),
    Models::Shared::FormField.new(
      choices: [
        'crur',
        'vinculum',
        'tredecim',
        'somniculosus',
        'curtus',
      ],
      created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
      default_value: 'fugiat',
      id: 'f87ea7ae-f2cd-469f-b306-7a119987090f',
      is_active: true,
      is_required: false,
      name: 'consequatur error cena',
      order: 2.0,
      type: Models::Shared::FormFieldType::MULTIPLE_SELECT,
      updated_at: DateTime.iso8601('2024-03-01T23:55:03.018Z')
    ),
    Models::Shared::FormField.new(
      created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
      description: 'Aurum voluptatum placeat audax tripudio amo.',
      id: '36d9206d-09d9-4ed0-ae33-09ededf8d672',
      is_active: true,
      is_required: false,
      name: 'audentia subseco antepono',
      order: 3.0,
      type: Models::Shared::FormFieldType::TEXTAREA,
      updated_at: DateTime.iso8601('2024-12-10T23:06:25.823Z')
    ),
  ],
  has_multiple_submissions: false,
  has_progress_bar: false,
  has_shuffle_questions: true,
  id: '7e28d15c-4398-431a-8ad0-01718beb7fac',
  is_active: false,
  metadata: [],
  name: 'tandem tracto vivo Form',
  published_url: 'https://massive-blowgun.info',
  response_count: 423.0,
  updated_at: DateTime.iso8601('2024-09-04T06:50:47.521Z')
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
    jwt: '<YOUR_API_KEY_HERE>'
  )
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
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListFormsFormsRequest.new(
  connection_id: '<id>'
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

<!-- UsageSnippet language="ruby" operationID="patchFormsForm" method="patch" path="/forms/{connection_id}/form/{id}" example="forms_form" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchFormsFormRequest.new(
  forms_form: Models::Shared::FormsForm.new(
    confirmation_message: 'Alo crebro vado utique.',
    created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
    description: 'Qui pauper triumphus adipisci comitatus tamen stabilis clementia culpo tolero.',
    fields_: [
      Models::Shared::FormField.new(
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        id: '82975ac4-b96b-45d4-b01f-fd21fbff1254',
        is_active: true,
        is_required: true,
        max_length: 146.0,
        name: 'voluntarius argumentum decumbo',
        order: 0.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2025-05-17T03:27:17.814Z')
      ),
      Models::Shared::FormField.new(
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        id: 'aac9a03a-88bb-4e00-8a65-5a53a902986e',
        is_active: true,
        is_required: false,
        name: 'desidero clibanus calcar',
        order: 1.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2024-09-12T22:04:53.266Z')
      ),
      Models::Shared::FormField.new(
        choices: [
          'crur',
          'vinculum',
          'tredecim',
          'somniculosus',
          'curtus',
        ],
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        default_value: 'fugiat',
        id: '0ccc5ad0-91d5-4d6a-9491-f3b2e2eebf97',
        is_active: true,
        is_required: false,
        name: 'consequatur error cena',
        order: 2.0,
        type: Models::Shared::FormFieldType::MULTIPLE_SELECT,
        updated_at: DateTime.iso8601('2024-03-01T23:55:03.020Z')
      ),
      Models::Shared::FormField.new(
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        description: 'Aurum voluptatum placeat audax tripudio amo.',
        id: 'a35a418c-574a-4c71-a988-3f19e7ea5230',
        is_active: true,
        is_required: false,
        name: 'audentia subseco antepono',
        order: 3.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2024-12-10T23:06:25.832Z')
      ),
    ],
    has_multiple_submissions: false,
    has_progress_bar: false,
    has_shuffle_questions: true,
    id: '58e5b5f2-c5ab-44e6-aecf-9d02408ccf90',
    is_active: false,
    metadata: [],
    name: 'tandem tracto vivo Form',
    published_url: 'https://massive-blowgun.info',
    response_count: 423.0,
    updated_at: DateTime.iso8601('2024-09-04T06:50:47.527Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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
    jwt: '<YOUR_API_KEY_HERE>'
  )
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

<!-- UsageSnippet language="ruby" operationID="updateFormsForm" method="put" path="/forms/{connection_id}/form/{id}" example="forms_form" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateFormsFormRequest.new(
  forms_form: Models::Shared::FormsForm.new(
    confirmation_message: 'Alo crebro vado utique.',
    created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
    description: 'Qui pauper triumphus adipisci comitatus tamen stabilis clementia culpo tolero.',
    fields_: [
      Models::Shared::FormField.new(
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        id: '82975ac4-b96b-45d4-b01f-fd21fbff1254',
        is_active: true,
        is_required: true,
        max_length: 146.0,
        name: 'voluntarius argumentum decumbo',
        order: 0.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2025-05-17T03:27:17.814Z')
      ),
      Models::Shared::FormField.new(
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        id: 'aac9a03a-88bb-4e00-8a65-5a53a902986e',
        is_active: true,
        is_required: false,
        name: 'desidero clibanus calcar',
        order: 1.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2024-09-12T22:04:53.266Z')
      ),
      Models::Shared::FormField.new(
        choices: [
          'crur',
          'vinculum',
          'tredecim',
          'somniculosus',
          'curtus',
        ],
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        default_value: 'fugiat',
        id: '0ccc5ad0-91d5-4d6a-9491-f3b2e2eebf97',
        is_active: true,
        is_required: false,
        name: 'consequatur error cena',
        order: 2.0,
        type: Models::Shared::FormFieldType::MULTIPLE_SELECT,
        updated_at: DateTime.iso8601('2024-03-01T23:55:03.020Z')
      ),
      Models::Shared::FormField.new(
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        description: 'Aurum voluptatum placeat audax tripudio amo.',
        id: 'a35a418c-574a-4c71-a988-3f19e7ea5230',
        is_active: true,
        is_required: false,
        name: 'audentia subseco antepono',
        order: 3.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2024-12-10T23:06:25.832Z')
      ),
    ],
    has_multiple_submissions: false,
    has_progress_bar: false,
    has_shuffle_questions: true,
    id: '58e5b5f2-c5ab-44e6-aecf-9d02408ccf90',
    is_active: false,
    metadata: [],
    name: 'tandem tracto vivo Form',
    published_url: 'https://massive-blowgun.info',
    response_count: 423.0,
    updated_at: DateTime.iso8601('2024-09-04T06:50:47.527Z')
  ),
  connection_id: '<id>',
  id: '<id>'
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