# Template
(*template*)

## Overview

### Available Operations

* [create_compute_template](#create_compute_template) - Create a template
* [get_compute_template](#get_compute_template) - Retrieve a template
* [get_signing_template](#get_signing_template) - Retrieve a template
* [list_compute_templates](#list_compute_templates) - List all templates
* [list_signing_templates](#list_signing_templates) - List all templates
* [patch_compute_template](#patch_compute_template) - Update a template
* [remove_compute_template](#remove_compute_template) - Remove a template
* [update_compute_template](#update_compute_template) - Update a template

## create_compute_template

Create a template

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createComputeTemplate" method="post" path="/compute/{connection_id}/template" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.template.create_compute_template(compute_template: Models::Shared::ComputeTemplate.new(
  cpu_count: 4.0,
  created_at: DateTime.iso8601('2023-02-23T03:28:59.864Z'),
  disk_mb: 10_240.0,
  dockerfile: 'FROM ubuntu:24.04\n" +
  "RUN apt-get update',
  gpu_count: 2.0,
  gpu_model: Models::Shared::ComputeTemplateGpuModel::NVIDIA_GH200,
  id: '87214967-c388-454a-b15b-d7ea77a70778',
  image: 'perfumed-molasses/cohibeo:5.2',
  is_public: false,
  last_used_at: DateTime.iso8601('2026-03-23T20:27:16.056Z'),
  memory_mb: 8192.0,
  metadata: [],
  name: 'multi-byte-card',
  ports: [
    8080.0,
  ],
  status: Models::Shared::ComputeTemplateStatus::OTHER,
  updated_at: DateTime.iso8601('2025-02-12T18:38:51.398Z'),
), connection_id: '<id>')

unless res.compute_template.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `compute_template`                                                                                                                               | [Models::Shared::ComputeTemplate](../../models/shared/computetemplate.md)                                                                        | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateComputeTemplateQueryParamFields](../../models/operations/createcomputetemplatequeryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateComputeTemplateResponse)](../../models/operations/createcomputetemplateresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_compute_template

Retrieve a template

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getComputeTemplate" method="get" path="/compute/{connection_id}/template/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.template.get_compute_template(connection_id: '<id>', id: '<id>')

unless res.compute_template.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Template                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetComputeTemplateQueryParamFields](../../models/operations/getcomputetemplatequeryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetComputeTemplateResponse)](../../models/operations/getcomputetemplateresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_signing_template

Retrieve a template

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getSigningTemplate" method="get" path="/signing/{connection_id}/template/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.template.get_signing_template(connection_id: '<id>', id: '<id>')

unless res.signing_template.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Template                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetSigningTemplateQueryParamFields](../../models/operations/getsigningtemplatequeryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetSigningTemplateResponse)](../../models/operations/getsigningtemplateresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_compute_templates

List all templates

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listComputeTemplates" method="get" path="/compute/{connection_id}/template" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListComputeTemplatesRequest.new(
  connection_id: '<id>',
)

res = s.template.list_compute_templates(request: req)

unless res.compute_templates.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListComputeTemplatesRequest](../../models/operations/listcomputetemplatesrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListComputeTemplatesResponse)](../../models/operations/listcomputetemplatesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_signing_templates

List all templates

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listSigningTemplates" method="get" path="/signing/{connection_id}/template" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListSigningTemplatesRequest.new(
  connection_id: '<id>',
)

res = s.template.list_signing_templates(request: req)

unless res.signing_templates.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListSigningTemplatesRequest](../../models/operations/listsigningtemplatesrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListSigningTemplatesResponse)](../../models/operations/listsigningtemplatesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_compute_template

Update a template

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchComputeTemplate" method="patch" path="/compute/{connection_id}/template/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchComputeTemplateRequest.new(
  compute_template: Models::Shared::ComputeTemplate.new(
    cpu_count: 4.0,
    created_at: DateTime.iso8601('2023-02-23T03:28:59.864Z'),
    disk_mb: 10_240.0,
    dockerfile: 'FROM ubuntu:24.04\n" +
    "RUN apt-get update',
    gpu_count: 2.0,
    gpu_model: Models::Shared::ComputeTemplateGpuModel::NVIDIA_GH200,
    id: '9cb36833-667b-4fd1-a64c-9bad7d4d2a50',
    image: 'perfumed-molasses/cohibeo:5.2',
    is_public: false,
    last_used_at: DateTime.iso8601('2026-03-23T20:27:16.077Z'),
    memory_mb: 8192.0,
    metadata: [],
    name: 'multi-byte-card',
    ports: [
      8080.0,
    ],
    status: Models::Shared::ComputeTemplateStatus::OTHER,
    updated_at: DateTime.iso8601('2025-02-12T18:38:51.411Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.template.patch_compute_template(request: req)

unless res.compute_template.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::PatchComputeTemplateRequest](../../models/operations/patchcomputetemplaterequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::PatchComputeTemplateResponse)](../../models/operations/patchcomputetemplateresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_compute_template

Remove a template

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeComputeTemplate" method="delete" path="/compute/{connection_id}/template/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.template.remove_compute_template(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Template   |

### Response

**[T.nilable(Models::Operations::RemoveComputeTemplateResponse)](../../models/operations/removecomputetemplateresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_compute_template

Update a template

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateComputeTemplate" method="put" path="/compute/{connection_id}/template/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateComputeTemplateRequest.new(
  compute_template: Models::Shared::ComputeTemplate.new(
    cpu_count: 4.0,
    created_at: DateTime.iso8601('2023-02-23T03:28:59.864Z'),
    disk_mb: 10_240.0,
    dockerfile: 'FROM ubuntu:24.04\n" +
    "RUN apt-get update',
    gpu_count: 2.0,
    gpu_model: Models::Shared::ComputeTemplateGpuModel::NVIDIA_GH200,
    id: '9cb36833-667b-4fd1-a64c-9bad7d4d2a50',
    image: 'perfumed-molasses/cohibeo:5.2',
    is_public: false,
    last_used_at: DateTime.iso8601('2026-03-23T20:27:16.077Z'),
    memory_mb: 8192.0,
    metadata: [],
    name: 'multi-byte-card',
    ports: [
      8080.0,
    ],
    status: Models::Shared::ComputeTemplateStatus::OTHER,
    updated_at: DateTime.iso8601('2025-02-12T18:38:51.411Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.template.update_compute_template(request: req)

unless res.compute_template.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::UpdateComputeTemplateRequest](../../models/operations/updatecomputetemplaterequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::UpdateComputeTemplateResponse)](../../models/operations/updatecomputetemplateresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |