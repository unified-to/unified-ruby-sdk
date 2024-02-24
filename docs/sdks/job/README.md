# Job


### Available Operations

* [create_ats_job](#create_ats_job) - Create a job
* [get_ats_job](#get_ats_job) - Retrieve a job
* [list_ats_jobs](#list_ats_jobs) - List all jobs
* [patch_ats_job](#patch_ats_job) - Update a job
* [remove_ats_job](#remove_ats_job) - Remove a job
* [update_ats_job](#update_ats_job) - Update a job

## create_ats_job

Create a job

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.job.create_ats_job(::UnifiedRubySDK::Operations::CreateAtsJobSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", ats_job=::UnifiedRubySDK::Shared::AtsJob.new())

if ! res.ats_job.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `security`                                                                                            | [::UnifiedRubySDK::Operations::CreateAtsJobSecurity](../../models/operations/createatsjobsecurity.md) | :heavy_check_mark:                                                                                    | The security requirements to use for the request.                                                     |
| `connection_id`                                                                                       | *::String*                                                                                            | :heavy_check_mark:                                                                                    | ID of the connection                                                                                  |
| `ats_job`                                                                                             | [::UnifiedRubySDK::Shared::AtsJob](../../models/shared/atsjob.md)                                     | :heavy_minus_sign:                                                                                    | N/A                                                                                                   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAtsJobResponse)](../../models/operations/createatsjobresponse.md)**


## get_ats_job

Retrieve a job

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.job.get_ats_job(::UnifiedRubySDK::Operations::GetAtsJobSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.ats_job.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `security`                                                                                      | [::UnifiedRubySDK::Operations::GetAtsJobSecurity](../../models/operations/getatsjobsecurity.md) | :heavy_check_mark:                                                                              | The security requirements to use for the request.                                               |
| `connection_id`                                                                                 | *::String*                                                                                      | :heavy_check_mark:                                                                              | ID of the connection                                                                            |
| `id`                                                                                            | *::String*                                                                                      | :heavy_check_mark:                                                                              | ID of the Job                                                                                   |
| `fields_`                                                                                       | T::Array<*::String*>                                                                            | :heavy_minus_sign:                                                                              | Comma-delimited fields to return                                                                |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAtsJobResponse)](../../models/operations/getatsjobresponse.md)**


## list_ats_jobs

List all jobs

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListAtsJobsRequest.new(
  connection_id: "<value>",
)
    
res = s.job.list_ats_jobs(req, ::UnifiedRubySDK::Operations::ListAtsJobsSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.ats_jobs.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [::UnifiedRubySDK::Operations::ListAtsJobsRequest](../../models/operations/listatsjobsrequest.md)   | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |
| `security`                                                                                          | [::UnifiedRubySDK::Operations::ListAtsJobsSecurity](../../models/operations/listatsjobssecurity.md) | :heavy_check_mark:                                                                                  | The security requirements to use for the request.                                                   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAtsJobsResponse)](../../models/operations/listatsjobsresponse.md)**


## patch_ats_job

Update a job

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.job.patch_ats_job(::UnifiedRubySDK::Operations::PatchAtsJobSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", ats_job=::UnifiedRubySDK::Shared::AtsJob.new())

if ! res.ats_job.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `security`                                                                                          | [::UnifiedRubySDK::Operations::PatchAtsJobSecurity](../../models/operations/patchatsjobsecurity.md) | :heavy_check_mark:                                                                                  | The security requirements to use for the request.                                                   |
| `connection_id`                                                                                     | *::String*                                                                                          | :heavy_check_mark:                                                                                  | ID of the connection                                                                                |
| `id`                                                                                                | *::String*                                                                                          | :heavy_check_mark:                                                                                  | ID of the Job                                                                                       |
| `ats_job`                                                                                           | [::UnifiedRubySDK::Shared::AtsJob](../../models/shared/atsjob.md)                                   | :heavy_minus_sign:                                                                                  | N/A                                                                                                 |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAtsJobResponse)](../../models/operations/patchatsjobresponse.md)**


## remove_ats_job

Remove a job

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.job.remove_ats_job(::UnifiedRubySDK::Operations::RemoveAtsJobSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `security`                                                                                            | [::UnifiedRubySDK::Operations::RemoveAtsJobSecurity](../../models/operations/removeatsjobsecurity.md) | :heavy_check_mark:                                                                                    | The security requirements to use for the request.                                                     |
| `connection_id`                                                                                       | *::String*                                                                                            | :heavy_check_mark:                                                                                    | ID of the connection                                                                                  |
| `id`                                                                                                  | *::String*                                                                                            | :heavy_check_mark:                                                                                    | ID of the Job                                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAtsJobResponse)](../../models/operations/removeatsjobresponse.md)**


## update_ats_job

Update a job

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.job.update_ats_job(::UnifiedRubySDK::Operations::UpdateAtsJobSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", ats_job=::UnifiedRubySDK::Shared::AtsJob.new())

if ! res.ats_job.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `security`                                                                                            | [::UnifiedRubySDK::Operations::UpdateAtsJobSecurity](../../models/operations/updateatsjobsecurity.md) | :heavy_check_mark:                                                                                    | The security requirements to use for the request.                                                     |
| `connection_id`                                                                                       | *::String*                                                                                            | :heavy_check_mark:                                                                                    | ID of the connection                                                                                  |
| `id`                                                                                                  | *::String*                                                                                            | :heavy_check_mark:                                                                                    | ID of the Job                                                                                         |
| `ats_job`                                                                                             | [::UnifiedRubySDK::Shared::AtsJob](../../models/shared/atsjob.md)                                     | :heavy_minus_sign:                                                                                    | N/A                                                                                                   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAtsJobResponse)](../../models/operations/updateatsjobresponse.md)**

