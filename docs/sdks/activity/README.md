# Activity


### Available Operations

* [create_ats_activity](#create_ats_activity) - Create an activity
* [get_ats_activity](#get_ats_activity) - Retrieve an activity
* [list_ats_activities](#list_ats_activities) - List all activities
* [patch_ats_activity](#patch_ats_activity) - Update an activity
* [remove_ats_activity](#remove_ats_activity) - Remove an activity
* [update_ats_activity](#update_ats_activity) - Update an activity

## create_ats_activity

Create an activity

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.activity.create_ats_activity(::UnifiedRubySDK::Operations::CreateAtsActivitySecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", ats_activity=::UnifiedRubySDK::Shared::AtsActivity.new(
    title: "<value>",
  ))

if ! res.ats_activity.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                      | [::UnifiedRubySDK::Operations::CreateAtsActivitySecurity](../../models/operations/createatsactivitysecurity.md) | :heavy_check_mark:                                                                                              | The security requirements to use for the request.                                                               |
| `connection_id`                                                                                                 | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the connection                                                                                            |
| `ats_activity`                                                                                                  | [::UnifiedRubySDK::Shared::AtsActivity](../../models/shared/atsactivity.md)                                     | :heavy_minus_sign:                                                                                              | N/A                                                                                                             |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAtsActivityResponse)](../../models/operations/createatsactivityresponse.md)**


## get_ats_activity

Retrieve an activity

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.activity.get_ats_activity(::UnifiedRubySDK::Operations::GetAtsActivitySecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.ats_activity.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                | [::UnifiedRubySDK::Operations::GetAtsActivitySecurity](../../models/operations/getatsactivitysecurity.md) | :heavy_check_mark:                                                                                        | The security requirements to use for the request.                                                         |
| `connection_id`                                                                                           | *::String*                                                                                                | :heavy_check_mark:                                                                                        | ID of the connection                                                                                      |
| `id`                                                                                                      | *::String*                                                                                                | :heavy_check_mark:                                                                                        | ID of the Activity                                                                                        |
| `fields_`                                                                                                 | T::Array<*::String*>                                                                                      | :heavy_minus_sign:                                                                                        | Comma-delimited fields to return                                                                          |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAtsActivityResponse)](../../models/operations/getatsactivityresponse.md)**


## list_ats_activities

List all activities

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListAtsActivitiesRequest.new(
  connection_id: "<value>",
)
    
res = s.activity.list_ats_activities(req, ::UnifiedRubySDK::Operations::ListAtsActivitiesSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.ats_activities.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [::UnifiedRubySDK::Operations::ListAtsActivitiesRequest](../../models/operations/listatsactivitiesrequest.md)   | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |
| `security`                                                                                                      | [::UnifiedRubySDK::Operations::ListAtsActivitiesSecurity](../../models/operations/listatsactivitiessecurity.md) | :heavy_check_mark:                                                                                              | The security requirements to use for the request.                                                               |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAtsActivitiesResponse)](../../models/operations/listatsactivitiesresponse.md)**


## patch_ats_activity

Update an activity

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.activity.patch_ats_activity(::UnifiedRubySDK::Operations::PatchAtsActivitySecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", ats_activity=::UnifiedRubySDK::Shared::AtsActivity.new(
    title: "<value>",
  ))

if ! res.ats_activity.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                    | [::UnifiedRubySDK::Operations::PatchAtsActivitySecurity](../../models/operations/patchatsactivitysecurity.md) | :heavy_check_mark:                                                                                            | The security requirements to use for the request.                                                             |
| `connection_id`                                                                                               | *::String*                                                                                                    | :heavy_check_mark:                                                                                            | ID of the connection                                                                                          |
| `id`                                                                                                          | *::String*                                                                                                    | :heavy_check_mark:                                                                                            | ID of the Activity                                                                                            |
| `ats_activity`                                                                                                | [::UnifiedRubySDK::Shared::AtsActivity](../../models/shared/atsactivity.md)                                   | :heavy_minus_sign:                                                                                            | N/A                                                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAtsActivityResponse)](../../models/operations/patchatsactivityresponse.md)**


## remove_ats_activity

Remove an activity

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.activity.remove_ats_activity(::UnifiedRubySDK::Operations::RemoveAtsActivitySecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                      | [::UnifiedRubySDK::Operations::RemoveAtsActivitySecurity](../../models/operations/removeatsactivitysecurity.md) | :heavy_check_mark:                                                                                              | The security requirements to use for the request.                                                               |
| `connection_id`                                                                                                 | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the connection                                                                                            |
| `id`                                                                                                            | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the Activity                                                                                              |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAtsActivityResponse)](../../models/operations/removeatsactivityresponse.md)**


## update_ats_activity

Update an activity

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.activity.update_ats_activity(::UnifiedRubySDK::Operations::UpdateAtsActivitySecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", ats_activity=::UnifiedRubySDK::Shared::AtsActivity.new(
    title: "<value>",
  ))

if ! res.ats_activity.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                      | [::UnifiedRubySDK::Operations::UpdateAtsActivitySecurity](../../models/operations/updateatsactivitysecurity.md) | :heavy_check_mark:                                                                                              | The security requirements to use for the request.                                                               |
| `connection_id`                                                                                                 | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the connection                                                                                            |
| `id`                                                                                                            | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the Activity                                                                                              |
| `ats_activity`                                                                                                  | [::UnifiedRubySDK::Shared::AtsActivity](../../models/shared/atsactivity.md)                                     | :heavy_minus_sign:                                                                                              | N/A                                                                                                             |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAtsActivityResponse)](../../models/operations/updateatsactivityresponse.md)**

