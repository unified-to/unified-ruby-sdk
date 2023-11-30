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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreateCrmPipelineRequest.new(
  path_params=Operations::CreateCrmPipelineRequest.new(
    connection_id="string",
    crm_pipeline=Shared::CrmPipeline.new(
      created_at=DateTime.iso8601('2023-06-24T14:15:54.218Z'),
      deal_probability=false,
      display_order=6254.97,
      id="<ID>",
      is_active=false,
      name="string",
      raw=Shared::PropertyCrmPipelineRaw.new(),
      updated_at=DateTime.iso8601('2021-12-01T06:10:18.007Z'),
    ),
  ),
  crm_pipeline=Shared::CrmPipeline.new(
    created_at=DateTime.iso8601('2021-06-06T13:49:53.753Z'),
    deal_probability=false,
    display_order=6667.79,
    id="<ID>",
    is_active=false,
    name="string",
    raw=Shared::PropertyCrmPipelineRaw.new(),
    updated_at=DateTime.iso8601('2021-01-02T18:17:15.629Z'),
  ),
)
    
res = s.pipeline.create_crm_pipeline(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetCrmPipelineRequest.new(
  path_params=Operations::GetCrmPipelineRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetCrmPipelineRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.pipeline.get_crm_pipeline(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListCrmPipelinesRequest.new(
  path_params=Operations::ListCrmPipelinesRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=3318.18,
    offset=4834.28,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-04-29T15:47:27.871Z'),
  ),
  query_params=Operations::ListCrmPipelinesRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=7011.75,
    offset=2585.55,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-10-11T04:39:13.801Z'),
  ),
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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::PatchCrmPipelineRequest.new(
  path_params=Operations::PatchCrmPipelineRequest.new(
    connection_id="string",
    id="<ID>",
    crm_pipeline=Shared::CrmPipeline.new(
      created_at=DateTime.iso8601('2023-08-26T17:19:01.949Z'),
      deal_probability=false,
      display_order=8620.92,
      id="<ID>",
      is_active=false,
      name="string",
      raw=Shared::PropertyCrmPipelineRaw.new(),
      updated_at=DateTime.iso8601('2022-04-03T12:55:27.421Z'),
    ),
  ),
  crm_pipeline=Shared::CrmPipeline.new(
    created_at=DateTime.iso8601('2021-02-25T11:56:03.682Z'),
    deal_probability=false,
    display_order=2072.1,
    id="<ID>",
    is_active=false,
    name="string",
    raw=Shared::PropertyCrmPipelineRaw.new(),
    updated_at=DateTime.iso8601('2021-09-02T03:10:12.625Z'),
  ),
)
    
res = s.pipeline.patch_crm_pipeline(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveCrmPipelineRequest.new(
  path_params=Operations::RemoveCrmPipelineRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.pipeline.remove_crm_pipeline(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::UpdateCrmPipelineRequest.new(
  path_params=Operations::UpdateCrmPipelineRequest.new(
    connection_id="string",
    id="<ID>",
    crm_pipeline=Shared::CrmPipeline.new(
      created_at=DateTime.iso8601('2021-12-27T08:28:05.275Z'),
      deal_probability=false,
      display_order=8923.83,
      id="<ID>",
      is_active=false,
      name="string",
      raw=Shared::PropertyCrmPipelineRaw.new(),
      updated_at=DateTime.iso8601('2022-07-18T01:45:20.441Z'),
    ),
  ),
  crm_pipeline=Shared::CrmPipeline.new(
    created_at=DateTime.iso8601('2022-11-02T11:59:18.760Z'),
    deal_probability=false,
    display_order=173.26,
    id="<ID>",
    is_active=false,
    name="string",
    raw=Shared::PropertyCrmPipelineRaw.new(),
    updated_at=DateTime.iso8601('2021-05-08T14:25:08.546Z'),
  ),
)
    
res = s.pipeline.update_crm_pipeline(req)

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

