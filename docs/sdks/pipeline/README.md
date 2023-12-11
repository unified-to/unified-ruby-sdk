# Pipeline


### Available Operations

* [create_crm_pipeline](#create_crm_pipeline) - Create a pipeline
* [get_crm_pipeline](#get_crm_pipeline) - Retrieve a pipeline
* [list_crm_pipelines](#list_crm_pipelines) - List all pipelines
* [patch_crm_pipeline](#patch_crm_pipeline) - Update a pipeline
* [remove_crm_pipeline](#remove_crm_pipeline) - Remove a pipeline
* [update_crm_pipeline](#update_crm_pipeline) - Update a pipeline

## create_crm_pipeline

Create a pipeline

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::CreateCrmPipelineRequest.new(
  connection_id="string",
  crm_pipeline=Shared::CrmPipeline.new(
    raw=Shared::PropertyCrmPipelineRaw.new(),
  ),
)
    
res = s.pipeline.create_crm_pipeline(connection_id="string", crm_pipeline=Shared::CrmPipeline.new(
    raw=Shared::PropertyCrmPipelineRaw.new(),
  ))

if ! res.crm_pipeline.nil?
  # handle response
end

```

### Parameters

| Parameter                                                 | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `connection_id`                                           | *String*                                                  | :heavy_check_mark:                                        | ID of the connection                                      |
| `crm_pipeline`                                            | [Shared::CrmPipeline](../../models/shared/crmpipeline.md) | :heavy_minus_sign:                                        | N/A                                                       |


### Response

**[T.nilable(Operations::CreateCrmPipelineResponse)](../../models/operations/createcrmpipelineresponse.md)**


## get_crm_pipeline

Retrieve a pipeline

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetCrmPipelineRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.pipeline.get_crm_pipeline(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.crm_pipeline.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Pipeline               |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetCrmPipelineResponse)](../../models/operations/getcrmpipelineresponse.md)**


## list_crm_pipelines

List all pipelines

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListCrmPipelinesRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.pipeline.list_crm_pipelines(req)

if ! res.crm_pipelines.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Operations::ListCrmPipelinesRequest](../../models/operations/listcrmpipelinesrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |


### Response

**[T.nilable(Operations::ListCrmPipelinesResponse)](../../models/operations/listcrmpipelinesresponse.md)**


## patch_crm_pipeline

Update a pipeline

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::PatchCrmPipelineRequest.new(
  connection_id="string",
  id="<ID>",
  crm_pipeline=Shared::CrmPipeline.new(
    raw=Shared::PropertyCrmPipelineRaw.new(),
  ),
)
    
res = s.pipeline.patch_crm_pipeline(connection_id="string", id="string", crm_pipeline=Shared::CrmPipeline.new(
    raw=Shared::PropertyCrmPipelineRaw.new(),
  ))

if ! res.crm_pipeline.nil?
  # handle response
end

```

### Parameters

| Parameter                                                 | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `connection_id`                                           | *String*                                                  | :heavy_check_mark:                                        | ID of the connection                                      |
| `id`                                                      | *String*                                                  | :heavy_check_mark:                                        | ID of the Pipeline                                        |
| `crm_pipeline`                                            | [Shared::CrmPipeline](../../models/shared/crmpipeline.md) | :heavy_minus_sign:                                        | N/A                                                       |


### Response

**[T.nilable(Operations::PatchCrmPipelineResponse)](../../models/operations/patchcrmpipelineresponse.md)**


## remove_crm_pipeline

Remove a pipeline

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::RemoveCrmPipelineRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.pipeline.remove_crm_pipeline(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Pipeline   |


### Response

**[T.nilable(Operations::RemoveCrmPipelineResponse)](../../models/operations/removecrmpipelineresponse.md)**


## update_crm_pipeline

Update a pipeline

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::UpdateCrmPipelineRequest.new(
  connection_id="string",
  id="<ID>",
  crm_pipeline=Shared::CrmPipeline.new(
    raw=Shared::PropertyCrmPipelineRaw.new(),
  ),
)
    
res = s.pipeline.update_crm_pipeline(connection_id="string", id="string", crm_pipeline=Shared::CrmPipeline.new(
    raw=Shared::PropertyCrmPipelineRaw.new(),
  ))

if ! res.crm_pipeline.nil?
  # handle response
end

```

### Parameters

| Parameter                                                 | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `connection_id`                                           | *String*                                                  | :heavy_check_mark:                                        | ID of the connection                                      |
| `id`                                                      | *String*                                                  | :heavy_check_mark:                                        | ID of the Pipeline                                        |
| `crm_pipeline`                                            | [Shared::CrmPipeline](../../models/shared/crmpipeline.md) | :heavy_minus_sign:                                        | N/A                                                       |


### Response

**[T.nilable(Operations::UpdateCrmPipelineResponse)](../../models/operations/updatecrmpipelineresponse.md)**

