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
      id: '48a68ff4-ef04-4b37-bccb-8a1f5ab52aee',
      is_active: true,
      is_required: true,
      max_length: 146.0,
      name: 'voluntarius argumentum decumbo',
      order: 0.0,
      type: Models::Shared::FormFieldType::TEXTAREA,
      updated_at: DateTime.iso8601('2025-05-18T04:53:18.143Z')
    ),
    Models::Shared::FormField.new(
      created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
      id: 'd4dbff14-0b0a-43c4-a49a-96fb8f09c588',
      is_active: true,
      is_required: false,
      name: 'desidero clibanus calcar',
      order: 1.0,
      type: Models::Shared::FormFieldType::TEXTAREA,
      updated_at: DateTime.iso8601('2024-09-13T12:53:13.889Z')
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
      id: '979b2c18-ee16-4eef-970b-1348e2014169',
      is_active: true,
      is_required: false,
      name: 'consequatur error cena',
      order: 2.0,
      type: Models::Shared::FormFieldType::MULTIPLE_SELECT,
      updated_at: DateTime.iso8601('2024-03-02T06:18:35.292Z')
    ),
    Models::Shared::FormField.new(
      created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
      description: 'Aurum voluptatum placeat audax tripudio amo.',
      id: 'f03ae805-081c-4e00-8a2f-79b0b70a6587',
      is_active: true,
      is_required: false,
      name: 'audentia subseco antepono',
      order: 3.0,
      type: Models::Shared::FormFieldType::TEXTAREA,
      updated_at: DateTime.iso8601('2024-12-11T17:45:22.435Z')
    ),
  ],
  has_multiple_submissions: false,
  has_progress_bar: false,
  has_shuffle_questions: true,
  id: 'df6ee664-d18d-4efc-bb0a-96165faa9ac8',
  is_active: false,
  metadata: [],
  name: 'tandem tracto vivo Form',
  published_url: 'https://massive-blowgun.info',
  response_count: 423.0,
  updated_at: DateTime.iso8601('2024-09-04T21:16:46.427Z')
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
        id: '140c967a-671a-4f34-89a0-53aa621f095d',
        is_active: true,
        is_required: true,
        max_length: 146.0,
        name: 'voluntarius argumentum decumbo',
        order: 0.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2025-05-18T04:53:18.155Z')
      ),
      Models::Shared::FormField.new(
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        id: 'fc555bf6-d1ee-47fb-a9a5-719cb094e83d',
        is_active: true,
        is_required: false,
        name: 'desidero clibanus calcar',
        order: 1.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2024-09-13T12:53:13.896Z')
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
        id: 'eba83b3f-b757-433c-a55c-fffd6a2a1b01',
        is_active: true,
        is_required: false,
        name: 'consequatur error cena',
        order: 2.0,
        type: Models::Shared::FormFieldType::MULTIPLE_SELECT,
        updated_at: DateTime.iso8601('2024-03-02T06:18:35.295Z')
      ),
      Models::Shared::FormField.new(
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        description: 'Aurum voluptatum placeat audax tripudio amo.',
        id: 'c1f4269d-7818-4605-9b7d-a6b0f43ad8fa',
        is_active: true,
        is_required: false,
        name: 'audentia subseco antepono',
        order: 3.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2024-12-11T17:45:22.444Z')
      ),
    ],
    has_multiple_submissions: false,
    has_progress_bar: false,
    has_shuffle_questions: true,
    id: '22b90a40-91fc-4580-9216-a119c7e1e923',
    is_active: false,
    metadata: [],
    name: 'tandem tracto vivo Form',
    published_url: 'https://massive-blowgun.info',
    response_count: 423.0,
    updated_at: DateTime.iso8601('2024-09-04T21:16:46.433Z')
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
        id: '140c967a-671a-4f34-89a0-53aa621f095d',
        is_active: true,
        is_required: true,
        max_length: 146.0,
        name: 'voluntarius argumentum decumbo',
        order: 0.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2025-05-18T04:53:18.155Z')
      ),
      Models::Shared::FormField.new(
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        id: 'fc555bf6-d1ee-47fb-a9a5-719cb094e83d',
        is_active: true,
        is_required: false,
        name: 'desidero clibanus calcar',
        order: 1.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2024-09-13T12:53:13.896Z')
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
        id: 'eba83b3f-b757-433c-a55c-fffd6a2a1b01',
        is_active: true,
        is_required: false,
        name: 'consequatur error cena',
        order: 2.0,
        type: Models::Shared::FormFieldType::MULTIPLE_SELECT,
        updated_at: DateTime.iso8601('2024-03-02T06:18:35.295Z')
      ),
      Models::Shared::FormField.new(
        created_at: DateTime.iso8601('2023-10-05T21:34:29.094Z'),
        description: 'Aurum voluptatum placeat audax tripudio amo.',
        id: 'c1f4269d-7818-4605-9b7d-a6b0f43ad8fa',
        is_active: true,
        is_required: false,
        name: 'audentia subseco antepono',
        order: 3.0,
        type: Models::Shared::FormFieldType::TEXTAREA,
        updated_at: DateTime.iso8601('2024-12-11T17:45:22.444Z')
      ),
    ],
    has_multiple_submissions: false,
    has_progress_bar: false,
    has_shuffle_questions: true,
    id: '22b90a40-91fc-4580-9216-a119c7e1e923',
    is_active: false,
    metadata: [],
    name: 'tandem tracto vivo Form',
    published_url: 'https://massive-blowgun.info',
    response_count: 423.0,
    updated_at: DateTime.iso8601('2024-09-04T21:16:46.433Z')
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