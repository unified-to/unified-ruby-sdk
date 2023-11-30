# Application


### Available Operations

* [create_ats_application](#create_ats_application) - Create an application
* [get_ats_application](#get_ats_application) - Retrieve an application
* [list_ats_applications](#list_ats_applications) - List all applications
* [patch_ats_application](#patch_ats_application) - Update an application
* [remove_ats_application](#remove_ats_application) - Remove an application
* [update_ats_application](#update_ats_application) - Update an application

## create_ats_application

Create an application

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreateAtsApplicationRequest.new(
  path_params=Operations::CreateAtsApplicationRequest.new(
    connection_id="string",
    ats_application=Shared::AtsApplication.new(
      applied_at=DateTime.iso8601('2023-03-09T11:35:08.252Z'),
      candidate_id="string",
      created_at=DateTime.iso8601('2023-09-22T15:02:56.144Z'),
      id="<ID>",
      job_id="string",
      raw=Shared::PropertyAtsApplicationRaw.new(),
      rejected_at=DateTime.iso8601('2022-01-18T22:03:17.799Z'),
      rejected_reason="string",
      source="string",
      status=Shared::AtsApplicationStatus::FIRST_INTERVIEW,
      updated_at=DateTime.iso8601('2022-04-22T10:02:31.440Z'),
    ),
  ),
  ats_application=Shared::AtsApplication.new(
    applied_at=DateTime.iso8601('2023-09-21T23:44:32.523Z'),
    candidate_id="string",
    created_at=DateTime.iso8601('2022-05-01T07:06:52.908Z'),
    id="<ID>",
    job_id="string",
    raw=Shared::PropertyAtsApplicationRaw.new(),
    rejected_at=DateTime.iso8601('2023-01-12T06:42:01.504Z'),
    rejected_reason="string",
    source="string",
    status=Shared::AtsApplicationStatus::REJECTED,
    updated_at=DateTime.iso8601('2022-03-25T22:13:40.187Z'),
  ),
)
    
res = s.application.create_ats_application(req)

if ! res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `connection_id`                                                 | *String*                                                        | :heavy_check_mark:                                              | ID of the connection                                            |
| `ats_application`                                               | [Shared::AtsApplication](../../models/shared/atsapplication.md) | :heavy_minus_sign:                                              | N/A                                                             |


### Response

**[T.nilable(Operations::CreateAtsApplicationResponse)](../../models/operations/createatsapplicationresponse.md)**


## get_ats_application

Retrieve an application

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetAtsApplicationRequest.new(
  path_params=Operations::GetAtsApplicationRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetAtsApplicationRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.application.get_ats_application(req)

if ! res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Application            |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetAtsApplicationResponse)](../../models/operations/getatsapplicationresponse.md)**


## list_ats_applications

List all applications

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListAtsApplicationsRequest.new(
  path_params=Operations::ListAtsApplicationsRequest.new(
    candidate_id="string",
    connection_id="string",
    fields=.new[
      "string",
    ],
    job_id="string",
    limit=441.56,
    offset=1448.74,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-12-21T12:43:47.690Z'),
  ),
  query_params=Operations::ListAtsApplicationsRequest.new(
    candidate_id="string",
    connection_id="string",
    fields=.new[
      "string",
    ],
    job_id="string",
    limit=7080.71,
    offset=8548.34,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2023-11-06T06:30:20.241Z'),
  ),
)
    
res = s.application.list_ats_applications(req)

if ! res.ats_applications.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Operations::ListAtsApplicationsRequest](../../models/operations/listatsapplicationsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |


### Response

**[T.nilable(Operations::ListAtsApplicationsResponse)](../../models/operations/listatsapplicationsresponse.md)**


## patch_ats_application

Update an application

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::PatchAtsApplicationRequest.new(
  path_params=Operations::PatchAtsApplicationRequest.new(
    connection_id="string",
    id="<ID>",
    ats_application=Shared::AtsApplication.new(
      applied_at=DateTime.iso8601('2022-12-15T04:58:14.527Z'),
      candidate_id="string",
      created_at=DateTime.iso8601('2021-01-06T05:50:03.360Z'),
      id="<ID>",
      job_id="string",
      raw=Shared::PropertyAtsApplicationRaw.new(),
      rejected_at=DateTime.iso8601('2022-12-04T13:56:12.670Z'),
      rejected_reason="string",
      source="string",
      status=Shared::AtsApplicationStatus::SCREENING,
      updated_at=DateTime.iso8601('2022-02-02T14:46:44.919Z'),
    ),
  ),
  ats_application=Shared::AtsApplication.new(
    applied_at=DateTime.iso8601('2023-01-24T01:05:36.238Z'),
    candidate_id="string",
    created_at=DateTime.iso8601('2023-01-13T04:21:41.030Z'),
    id="<ID>",
    job_id="string",
    raw=Shared::PropertyAtsApplicationRaw.new(),
    rejected_at=DateTime.iso8601('2021-11-18T09:34:12.055Z'),
    rejected_reason="string",
    source="string",
    status=Shared::AtsApplicationStatus::FIRST_INTERVIEW,
    updated_at=DateTime.iso8601('2022-01-12T23:23:01.903Z'),
  ),
)
    
res = s.application.patch_ats_application(req)

if ! res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `connection_id`                                                 | *String*                                                        | :heavy_check_mark:                                              | ID of the connection                                            |
| `id`                                                            | *String*                                                        | :heavy_check_mark:                                              | ID of the Application                                           |
| `ats_application`                                               | [Shared::AtsApplication](../../models/shared/atsapplication.md) | :heavy_minus_sign:                                              | N/A                                                             |


### Response

**[T.nilable(Operations::PatchAtsApplicationResponse)](../../models/operations/patchatsapplicationresponse.md)**


## remove_ats_application

Remove an application

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveAtsApplicationRequest.new(
  path_params=Operations::RemoveAtsApplicationRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.application.remove_ats_application(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter             | Type                  | Required              | Description           |
| --------------------- | --------------------- | --------------------- | --------------------- |
| `connection_id`       | *String*              | :heavy_check_mark:    | ID of the connection  |
| `id`                  | *String*              | :heavy_check_mark:    | ID of the Application |


### Response

**[T.nilable(Operations::RemoveAtsApplicationResponse)](../../models/operations/removeatsapplicationresponse.md)**


## update_ats_application

Update an application

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::UpdateAtsApplicationRequest.new(
  path_params=Operations::UpdateAtsApplicationRequest.new(
    connection_id="string",
    id="<ID>",
    ats_application=Shared::AtsApplication.new(
      applied_at=DateTime.iso8601('2021-08-22T07:14:38.941Z'),
      candidate_id="string",
      created_at=DateTime.iso8601('2021-06-04T09:23:07.789Z'),
      id="<ID>",
      job_id="string",
      raw=Shared::PropertyAtsApplicationRaw.new(),
      rejected_at=DateTime.iso8601('2021-02-09T08:05:18.054Z'),
      rejected_reason="string",
      source="string",
      status=Shared::AtsApplicationStatus::REJECTED,
      updated_at=DateTime.iso8601('2022-11-28T16:36:33.801Z'),
    ),
  ),
  ats_application=Shared::AtsApplication.new(
    applied_at=DateTime.iso8601('2022-03-16T17:33:44.222Z'),
    candidate_id="string",
    created_at=DateTime.iso8601('2023-08-16T12:20:07.563Z'),
    id="<ID>",
    job_id="string",
    raw=Shared::PropertyAtsApplicationRaw.new(),
    rejected_at=DateTime.iso8601('2023-08-09T15:35:56.357Z'),
    rejected_reason="string",
    source="string",
    status=Shared::AtsApplicationStatus::HIRED,
    updated_at=DateTime.iso8601('2022-06-25T18:54:45.418Z'),
  ),
)
    
res = s.application.update_ats_application(req)

if ! res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `connection_id`                                                 | *String*                                                        | :heavy_check_mark:                                              | ID of the connection                                            |
| `id`                                                            | *String*                                                        | :heavy_check_mark:                                              | ID of the Application                                           |
| `ats_application`                                               | [Shared::AtsApplication](../../models/shared/atsapplication.md) | :heavy_minus_sign:                                              | N/A                                                             |


### Response

**[T.nilable(Operations::UpdateAtsApplicationResponse)](../../models/operations/updateatsapplicationresponse.md)**

