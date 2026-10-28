# Pipeline
(*pipeline*)

## Overview

### Available Operations

* [create_crm_pipeline](#create_crm_pipeline) - Create a pipeline
* [get_crm_pipeline](#get_crm_pipeline) - Retrieve a pipeline
* [list_crm_pipelines](#list_crm_pipelines) - List all pipelines
* [patch_crm_pipeline](#patch_crm_pipeline) - Update a pipeline
* [remove_crm_pipeline](#remove_crm_pipeline) - Remove a pipeline
* [update_crm_pipeline](#update_crm_pipeline) - Update a pipeline

## create_crm_pipeline

Creates a CrmPipeline. Provide the unified CrmPipeline fields in the request body; they are mapped to the provider's API. Returns the created CrmPipeline.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCrmPipeline" method="post" path="/crm/{connection_id}/pipeline" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.pipeline.create_crm_pipeline(crm_pipeline: Models::Shared::CrmPipeline.new(
  created_at: DateTime.iso8601('2022-12-28T13:45:38.446Z'),
  deal_probability: 99.0,
  display_order: 8.0,
  id: 'da783c5c-b517-4e59-a89f-e81fa9c42918',
  is_active: true,
  metadata: [],
  name: 'Small Steel Bacon',
  stages: [
    Models::Shared::CrmStage.new(
      active: false,
      created_at: DateTime.iso8601('2022-12-28T13:45:38.446Z'),
      deal_probability: 84.0,
      display_order: 72.0,
      id: '2f24b7df-e6c9-43af-80f9-dc16015c5503',
      is_closed: true,
      name: 'Veniam.',
      updated_at: DateTime.iso8601('2025-10-15T15:33:13.019Z'),
    ),
  ],
  updated_at: DateTime.iso8601('2025-11-06T11:37:18.882Z'),
), connection_id: '<id>')

unless res.crm_pipeline.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `crm_pipeline`                                                                                                                                   | [Models::Shared::CrmPipeline](../../models/shared/crmpipeline.md)                                                                                | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCrmPipelineQueryParamFields](../../models/operations/createcrmpipelinequeryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCrmPipelineResponse)](../../models/operations/createcrmpipelineresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_crm_pipeline

Retrieves a single CrmPipeline by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCrmPipeline" method="get" path="/crm/{connection_id}/pipeline/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.pipeline.get_crm_pipeline(connection_id: '<id>', id: '<id>')

unless res.crm_pipeline.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Pipeline                                                                                                                               |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCrmPipelineQueryParamFields](../../models/operations/getcrmpipelinequeryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCrmPipelineResponse)](../../models/operations/getcrmpipelineresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_crm_pipelines

Returns a list of CrmPipelines. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCrmPipelines" method="get" path="/crm/{connection_id}/pipeline" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCrmPipelinesRequest.new(
  connection_id: '<id>',
)

res = s.pipeline.list_crm_pipelines(request: req)

unless res.crm_pipelines.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListCrmPipelinesRequest](../../models/operations/listcrmpipelinesrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListCrmPipelinesResponse)](../../models/operations/listcrmpipelinesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_crm_pipeline

Updates the CrmPipeline identified by `id`. Provide the unified CrmPipeline fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCrmPipeline" method="patch" path="/crm/{connection_id}/pipeline/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCrmPipelineRequest.new(
  crm_pipeline: Models::Shared::CrmPipeline.new(
    created_at: DateTime.iso8601('2022-12-28T13:45:38.446Z'),
    deal_probability: 99.0,
    display_order: 8.0,
    id: 'd81c46ed-f759-49de-aeae-397a43186466',
    is_active: true,
    metadata: [],
    name: 'Small Steel Bacon',
    stages: [
      Models::Shared::CrmStage.new(
        active: false,
        created_at: DateTime.iso8601('2022-12-28T13:45:38.446Z'),
        deal_probability: 84.0,
        display_order: 72.0,
        id: 'dc9a546e-fcce-453b-9014-02c9c27e5984',
        is_closed: true,
        name: 'Veniam.',
        updated_at: DateTime.iso8601('2025-10-15T15:33:13.031Z'),
      ),
    ],
    updated_at: DateTime.iso8601('2025-11-06T11:37:18.895Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.pipeline.patch_crm_pipeline(request: req)

unless res.crm_pipeline.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::PatchCrmPipelineRequest](../../models/operations/patchcrmpipelinerequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::PatchCrmPipelineResponse)](../../models/operations/patchcrmpipelineresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_crm_pipeline

Deletes the CrmPipeline identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCrmPipeline" method="delete" path="/crm/{connection_id}/pipeline/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.pipeline.remove_crm_pipeline(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Pipeline   |

### Response

**[T.nilable(Models::Operations::RemoveCrmPipelineResponse)](../../models/operations/removecrmpipelineresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_crm_pipeline

Updates the CrmPipeline identified by `id`. Provide the unified CrmPipeline fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCrmPipeline" method="put" path="/crm/{connection_id}/pipeline/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCrmPipelineRequest.new(
  crm_pipeline: Models::Shared::CrmPipeline.new(
    created_at: DateTime.iso8601('2022-12-28T13:45:38.446Z'),
    deal_probability: 99.0,
    display_order: 8.0,
    id: 'd81c46ed-f759-49de-aeae-397a43186466',
    is_active: true,
    metadata: [],
    name: 'Small Steel Bacon',
    stages: [
      Models::Shared::CrmStage.new(
        active: false,
        created_at: DateTime.iso8601('2022-12-28T13:45:38.446Z'),
        deal_probability: 84.0,
        display_order: 72.0,
        id: 'dc9a546e-fcce-453b-9014-02c9c27e5984',
        is_closed: true,
        name: 'Veniam.',
        updated_at: DateTime.iso8601('2025-10-15T15:33:13.031Z'),
      ),
    ],
    updated_at: DateTime.iso8601('2025-11-06T11:37:18.895Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.pipeline.update_crm_pipeline(request: req)

unless res.crm_pipeline.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::UpdateCrmPipelineRequest](../../models/operations/updatecrmpipelinerequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::UpdateCrmPipelineResponse)](../../models/operations/updatecrmpipelineresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |