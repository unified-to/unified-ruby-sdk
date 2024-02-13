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
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.interview.create_ats_interview(connection_id="string", ats_interview=::UnifiedRubySDK::Shared::AtsInterview.new())

if ! res.ats_interview.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `ats_interview`                                                               | [::UnifiedRubySDK::Shared::AtsInterview](../../models/shared/atsinterview.md) | :heavy_minus_sign:                                                            | N/A                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAtsInterviewResponse)](../../models/operations/createatsinterviewresponse.md)**


## get_ats_interview

Retrieve a interview

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.interview.get_ats_interview(connection_id="string", id="string", fields_=[
    "string",
  ])

if ! res.ats_interview.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Interview              |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAtsInterviewResponse)](../../models/operations/getatsinterviewresponse.md)**


## list_ats_interviews

List all interviews

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListAtsInterviewsRequest.new(
  connection_id: "string",
)
    
res = s.interview.list_ats_interviews(req)

if ! res.ats_interviews.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [::UnifiedRubySDK::Operations::ListAtsInterviewsRequest](../../models/operations/listatsinterviewsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAtsInterviewsResponse)](../../models/operations/listatsinterviewsresponse.md)**


## patch_ats_interview

Update a interview

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.interview.patch_ats_interview(connection_id="string", id="string", ats_interview=::UnifiedRubySDK::Shared::AtsInterview.new())

if ! res.ats_interview.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `id`                                                                          | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the Interview                                                           |
| `ats_interview`                                                               | [::UnifiedRubySDK::Shared::AtsInterview](../../models/shared/atsinterview.md) | :heavy_minus_sign:                                                            | N/A                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAtsInterviewResponse)](../../models/operations/patchatsinterviewresponse.md)**


## remove_ats_interview

Remove a interview

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.interview.remove_ats_interview(connection_id="string", id="string")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Interview  |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAtsInterviewResponse)](../../models/operations/removeatsinterviewresponse.md)**


## update_ats_interview

Update a interview

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.interview.update_ats_interview(connection_id="string", id="string", ats_interview=::UnifiedRubySDK::Shared::AtsInterview.new())

if ! res.ats_interview.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `id`                                                                          | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the Interview                                                           |
| `ats_interview`                                                               | [::UnifiedRubySDK::Shared::AtsInterview](../../models/shared/atsinterview.md) | :heavy_minus_sign:                                                            | N/A                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAtsInterviewResponse)](../../models/operations/updateatsinterviewresponse.md)**

