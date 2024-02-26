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
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.application.create_ats_application(::UnifiedRubySDK::Operations::CreateAtsApplicationSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", ats_application=::UnifiedRubySDK::Shared::AtsApplication.new())

if ! res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                            | [::UnifiedRubySDK::Operations::CreateAtsApplicationSecurity](../../models/operations/createatsapplicationsecurity.md) | :heavy_check_mark:                                                                                                    | The security requirements to use for the request.                                                                     |
| `connection_id`                                                                                                       | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | ID of the connection                                                                                                  |
| `ats_application`                                                                                                     | [::UnifiedRubySDK::Shared::AtsApplication](../../models/shared/atsapplication.md)                                     | :heavy_minus_sign:                                                                                                    | N/A                                                                                                                   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAtsApplicationResponse)](../../models/operations/createatsapplicationresponse.md)**


## get_ats_application

Retrieve an application

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.application.get_ats_application(::UnifiedRubySDK::Operations::GetAtsApplicationSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                      | [::UnifiedRubySDK::Operations::GetAtsApplicationSecurity](../../models/operations/getatsapplicationsecurity.md) | :heavy_check_mark:                                                                                              | The security requirements to use for the request.                                                               |
| `connection_id`                                                                                                 | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the connection                                                                                            |
| `id`                                                                                                            | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the Application                                                                                           |
| `fields_`                                                                                                       | T::Array<*::String*>                                                                                            | :heavy_minus_sign:                                                                                              | Comma-delimited fields to return                                                                                |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAtsApplicationResponse)](../../models/operations/getatsapplicationresponse.md)**


## list_ats_applications

List all applications

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListAtsApplicationsRequest.new(
  connection_id: "<value>",
)
    
res = s.application.list_ats_applications(req, ::UnifiedRubySDK::Operations::ListAtsApplicationsSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.ats_applications.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [::UnifiedRubySDK::Operations::ListAtsApplicationsRequest](../../models/operations/listatsapplicationsrequest.md)   | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |
| `security`                                                                                                          | [::UnifiedRubySDK::Operations::ListAtsApplicationsSecurity](../../models/operations/listatsapplicationssecurity.md) | :heavy_check_mark:                                                                                                  | The security requirements to use for the request.                                                                   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAtsApplicationsResponse)](../../models/operations/listatsapplicationsresponse.md)**


## patch_ats_application

Update an application

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.application.patch_ats_application(::UnifiedRubySDK::Operations::PatchAtsApplicationSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", ats_application=::UnifiedRubySDK::Shared::AtsApplication.new())

if ! res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                          | [::UnifiedRubySDK::Operations::PatchAtsApplicationSecurity](../../models/operations/patchatsapplicationsecurity.md) | :heavy_check_mark:                                                                                                  | The security requirements to use for the request.                                                                   |
| `connection_id`                                                                                                     | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | ID of the connection                                                                                                |
| `id`                                                                                                                | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | ID of the Application                                                                                               |
| `ats_application`                                                                                                   | [::UnifiedRubySDK::Shared::AtsApplication](../../models/shared/atsapplication.md)                                   | :heavy_minus_sign:                                                                                                  | N/A                                                                                                                 |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAtsApplicationResponse)](../../models/operations/patchatsapplicationresponse.md)**


## remove_ats_application

Remove an application

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.application.remove_ats_application(::UnifiedRubySDK::Operations::RemoveAtsApplicationSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                            | [::UnifiedRubySDK::Operations::RemoveAtsApplicationSecurity](../../models/operations/removeatsapplicationsecurity.md) | :heavy_check_mark:                                                                                                    | The security requirements to use for the request.                                                                     |
| `connection_id`                                                                                                       | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | ID of the connection                                                                                                  |
| `id`                                                                                                                  | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | ID of the Application                                                                                                 |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAtsApplicationResponse)](../../models/operations/removeatsapplicationresponse.md)**


## update_ats_application

Update an application

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.application.update_ats_application(::UnifiedRubySDK::Operations::UpdateAtsApplicationSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", ats_application=::UnifiedRubySDK::Shared::AtsApplication.new())

if ! res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                            | [::UnifiedRubySDK::Operations::UpdateAtsApplicationSecurity](../../models/operations/updateatsapplicationsecurity.md) | :heavy_check_mark:                                                                                                    | The security requirements to use for the request.                                                                     |
| `connection_id`                                                                                                       | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | ID of the connection                                                                                                  |
| `id`                                                                                                                  | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | ID of the Application                                                                                                 |
| `ats_application`                                                                                                     | [::UnifiedRubySDK::Shared::AtsApplication](../../models/shared/atsapplication.md)                                     | :heavy_minus_sign:                                                                                                    | N/A                                                                                                                   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAtsApplicationResponse)](../../models/operations/updateatsapplicationresponse.md)**

