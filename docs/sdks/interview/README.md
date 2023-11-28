# Interview


### Available Operations

* [create_ats_interview](#create_ats_interview) - Create a interview
* [get_ats_interview](#get_ats_interview) - Retrieve a interview
* [list_ats_interviews](#list_ats_interviews) - List all interviews
* [patch_ats_interview](#patch_ats_interview) - Update a interview
* [remove_ats_interview](#remove_ats_interview) - Remove a interview
* [update_ats_interview](#update_ats_interview) - Update a interview

## create_ats_interview

Create a interview

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreateAtsInterviewRequest.new(
  path_params=Operations::CreateAtsInterviewRequest.new(
    connection_id="string",
    ats_interview=Shared::AtsInterview.new(
      application_id="string",
      candidate_id="string",
      created_at=DateTime.iso8601('2022-01-10T19:55:26.926Z'),
      end_at=DateTime.iso8601('2023-12-21T09:01:54.390Z'),
      external_event_xref="string",
      id="<ID>",
      job_id="string",
      location="string",
      raw=Shared::PropertyAtsInterviewRaw.new(),
      start_at=DateTime.iso8601('2022-11-19T09:10:03.014Z'),
      status=Shared::AtsInterviewStatus::COMPLETE,
      updated_at=DateTime.iso8601('2021-02-07T14:25:56.954Z'),
      user_ids=.new[
        "string",
      ],
    ),
  ),
  ats_interview=Shared::AtsInterview.new(
    application_id="string",
    candidate_id="string",
    created_at=DateTime.iso8601('2021-09-28T19:45:38.094Z'),
    end_at=DateTime.iso8601('2023-10-20T10:19:43.322Z'),
    external_event_xref="string",
    id="<ID>",
    job_id="string",
    location="string",
    raw=Shared::PropertyAtsInterviewRaw.new(),
    start_at=DateTime.iso8601('2022-05-05T10:11:26.881Z'),
    status=Shared::AtsInterviewStatus::SCHEDULED,
    updated_at=DateTime.iso8601('2023-05-17T22:03:34.997Z'),
    user_ids=.new[
      "string",
    ],
  ),
)
    
res = s.interview.create_ats_interview(req)

if ! res.ats_interview.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `connection_id`                                             | *String*                                                    | :heavy_check_mark:                                          | ID of the connection                                        |
| `ats_interview`                                             | [Shared::AtsInterview](../../models/shared/atsinterview.md) | :heavy_minus_sign:                                          | N/A                                                         |


### Response

**[T.nilable(Operations::CreateAtsInterviewResponse)](../../models/operations/createatsinterviewresponse.md)**


## get_ats_interview

Retrieve a interview

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetAtsInterviewRequest.new(
  path_params=Operations::GetAtsInterviewRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetAtsInterviewRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.interview.get_ats_interview(req)

if ! res.ats_interview.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Interview              |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetAtsInterviewResponse)](../../models/operations/getatsinterviewresponse.md)**


## list_ats_interviews

List all interviews

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListAtsInterviewsRequest.new(
  path_params=Operations::ListAtsInterviewsRequest.new(
    application_id="string",
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=2562.12,
    offset=1185.02,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-09-28T09:19:25.744Z'),
  ),
  query_params=Operations::ListAtsInterviewsRequest.new(
    application_id="string",
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=2248.65,
    offset=786.42,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-04-28T17:44:00.140Z'),
  ),
)
    
res = s.interview.list_ats_interviews(req)

if ! res.ats_interviews.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Operations::ListAtsInterviewsRequest](../../models/operations/listatsinterviewsrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |


### Response

**[T.nilable(Operations::ListAtsInterviewsResponse)](../../models/operations/listatsinterviewsresponse.md)**


## patch_ats_interview

Update a interview

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::PatchAtsInterviewRequest.new(
  path_params=Operations::PatchAtsInterviewRequest.new(
    connection_id="string",
    id="<ID>",
    ats_interview=Shared::AtsInterview.new(
      application_id="string",
      candidate_id="string",
      created_at=DateTime.iso8601('2023-09-11T21:35:40.790Z'),
      end_at=DateTime.iso8601('2021-05-28T19:11:29.616Z'),
      external_event_xref="string",
      id="<ID>",
      job_id="string",
      location="string",
      raw=Shared::PropertyAtsInterviewRaw.new(),
      start_at=DateTime.iso8601('2021-09-10T02:01:13.488Z'),
      status=Shared::AtsInterviewStatus::COMPLETE,
      updated_at=DateTime.iso8601('2023-03-18T09:12:18.749Z'),
      user_ids=.new[
        "string",
      ],
    ),
  ),
  ats_interview=Shared::AtsInterview.new(
    application_id="string",
    candidate_id="string",
    created_at=DateTime.iso8601('2021-03-14T21:48:10.753Z'),
    end_at=DateTime.iso8601('2023-11-05T23:28:42.001Z'),
    external_event_xref="string",
    id="<ID>",
    job_id="string",
    location="string",
    raw=Shared::PropertyAtsInterviewRaw.new(),
    start_at=DateTime.iso8601('2022-04-11T00:39:45.140Z'),
    status=Shared::AtsInterviewStatus::AWAITING_FEEDBACK,
    updated_at=DateTime.iso8601('2023-01-07T11:09:53.991Z'),
    user_ids=.new[
      "string",
    ],
  ),
)
    
res = s.interview.patch_ats_interview(req)

if ! res.ats_interview.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `connection_id`                                             | *String*                                                    | :heavy_check_mark:                                          | ID of the connection                                        |
| `id`                                                        | *String*                                                    | :heavy_check_mark:                                          | ID of the Interview                                         |
| `ats_interview`                                             | [Shared::AtsInterview](../../models/shared/atsinterview.md) | :heavy_minus_sign:                                          | N/A                                                         |


### Response

**[T.nilable(Operations::PatchAtsInterviewResponse)](../../models/operations/patchatsinterviewresponse.md)**


## remove_ats_interview

Remove a interview

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveAtsInterviewRequest.new(
  path_params=Operations::RemoveAtsInterviewRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.interview.remove_ats_interview(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Interview  |


### Response

**[T.nilable(Operations::RemoveAtsInterviewResponse)](../../models/operations/removeatsinterviewresponse.md)**


## update_ats_interview

Update a interview

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::UpdateAtsInterviewRequest.new(
  path_params=Operations::UpdateAtsInterviewRequest.new(
    connection_id="string",
    id="<ID>",
    ats_interview=Shared::AtsInterview.new(
      application_id="string",
      candidate_id="string",
      created_at=DateTime.iso8601('2023-05-06T10:37:46.574Z'),
      end_at=DateTime.iso8601('2022-03-29T10:34:23.230Z'),
      external_event_xref="string",
      id="<ID>",
      job_id="string",
      location="string",
      raw=Shared::PropertyAtsInterviewRaw.new(),
      start_at=DateTime.iso8601('2023-05-05T12:38:13.018Z'),
      status=Shared::AtsInterviewStatus::AWAITING_FEEDBACK,
      updated_at=DateTime.iso8601('2021-05-01T14:26:12.006Z'),
      user_ids=.new[
        "string",
      ],
    ),
  ),
  ats_interview=Shared::AtsInterview.new(
    application_id="string",
    candidate_id="string",
    created_at=DateTime.iso8601('2022-09-27T11:41:49.964Z'),
    end_at=DateTime.iso8601('2022-09-27T08:43:26.931Z'),
    external_event_xref="string",
    id="<ID>",
    job_id="string",
    location="string",
    raw=Shared::PropertyAtsInterviewRaw.new(),
    start_at=DateTime.iso8601('2022-10-25T12:47:06.682Z'),
    status=Shared::AtsInterviewStatus::SCHEDULED,
    updated_at=DateTime.iso8601('2021-09-19T11:28:26.105Z'),
    user_ids=.new[
      "string",
    ],
  ),
)
    
res = s.interview.update_ats_interview(req)

if ! res.ats_interview.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `connection_id`                                             | *String*                                                    | :heavy_check_mark:                                          | ID of the connection                                        |
| `id`                                                        | *String*                                                    | :heavy_check_mark:                                          | ID of the Interview                                         |
| `ats_interview`                                             | [Shared::AtsInterview](../../models/shared/atsinterview.md) | :heavy_minus_sign:                                          | N/A                                                         |


### Response

**[T.nilable(Operations::UpdateAtsInterviewResponse)](../../models/operations/updateatsinterviewresponse.md)**

