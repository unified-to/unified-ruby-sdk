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
    jwt="",
  )
)


req = Operations::CreateAtsInterviewRequest.new(
  connection_id="string",
  ats_interview=Shared::AtsInterview.new(
    raw=Shared::PropertyAtsInterviewRaw.new(),
    user_ids=[
      "string",
    ],
  ),
)
    
res = s.interview.create_ats_interview(connection_id="string", ats_interview=Shared::AtsInterview.new(
    raw=Shared::PropertyAtsInterviewRaw.new(),
    user_ids=[
      "string",
    ],
  ))

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
    jwt="",
  )
)


req = Operations::GetAtsInterviewRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.interview.get_ats_interview(connection_id="string", id="string", fields=[
    "string",
  ])

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
    jwt="",
  )
)


req = Operations::ListAtsInterviewsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
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
    jwt="",
  )
)


req = Operations::PatchAtsInterviewRequest.new(
  connection_id="string",
  id="<ID>",
  ats_interview=Shared::AtsInterview.new(
    raw=Shared::PropertyAtsInterviewRaw.new(),
    user_ids=[
      "string",
    ],
  ),
)
    
res = s.interview.patch_ats_interview(connection_id="string", id="string", ats_interview=Shared::AtsInterview.new(
    raw=Shared::PropertyAtsInterviewRaw.new(),
    user_ids=[
      "string",
    ],
  ))

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
    jwt="",
  )
)


req = Operations::RemoveAtsInterviewRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.interview.remove_ats_interview(connection_id="string", id="string")

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
    jwt="",
  )
)


req = Operations::UpdateAtsInterviewRequest.new(
  connection_id="string",
  id="<ID>",
  ats_interview=Shared::AtsInterview.new(
    raw=Shared::PropertyAtsInterviewRaw.new(),
    user_ids=[
      "string",
    ],
  ),
)
    
res = s.interview.update_ats_interview(connection_id="string", id="string", ats_interview=Shared::AtsInterview.new(
    raw=Shared::PropertyAtsInterviewRaw.new(),
    user_ids=[
      "string",
    ],
  ))

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

