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
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.application.create_ats_application(connection_id="string", ats_application=::UnifiedRubySDK::Shared::AtsApplication.new())

if ! res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `connection_id`                                                                   | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the connection                                                              |
| `ats_application`                                                                 | [::UnifiedRubySDK::Shared::AtsApplication](../../models/shared/atsapplication.md) | :heavy_minus_sign:                                                                | N/A                                                                               |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAtsApplicationResponse)](../../models/operations/createatsapplicationresponse.md)**


## get_ats_application

Retrieve an application

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.application.get_ats_application(connection_id="string", id="string", fields_=[
    "string",
  ])

if ! res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Application            |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAtsApplicationResponse)](../../models/operations/getatsapplicationresponse.md)**


## list_ats_applications

List all applications

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListAtsApplicationsRequest.new(
  connection_id: "string",
)
    
res = s.application.list_ats_applications(req)

if ! res.ats_applications.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [::UnifiedRubySDK::Operations::ListAtsApplicationsRequest](../../models/operations/listatsapplicationsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAtsApplicationsResponse)](../../models/operations/listatsapplicationsresponse.md)**


## patch_ats_application

Update an application

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.application.patch_ats_application(connection_id="string", id="string", ats_application=::UnifiedRubySDK::Shared::AtsApplication.new())

if ! res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `connection_id`                                                                   | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the connection                                                              |
| `id`                                                                              | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the Application                                                             |
| `ats_application`                                                                 | [::UnifiedRubySDK::Shared::AtsApplication](../../models/shared/atsapplication.md) | :heavy_minus_sign:                                                                | N/A                                                                               |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAtsApplicationResponse)](../../models/operations/patchatsapplicationresponse.md)**


## remove_ats_application

Remove an application

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.application.remove_ats_application(connection_id="string", id="string")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter             | Type                  | Required              | Description           |
| --------------------- | --------------------- | --------------------- | --------------------- |
| `connection_id`       | *::String*            | :heavy_check_mark:    | ID of the connection  |
| `id`                  | *::String*            | :heavy_check_mark:    | ID of the Application |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAtsApplicationResponse)](../../models/operations/removeatsapplicationresponse.md)**


## update_ats_application

Update an application

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.application.update_ats_application(connection_id="string", id="string", ats_application=::UnifiedRubySDK::Shared::AtsApplication.new())

if ! res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `connection_id`                                                                   | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the connection                                                              |
| `id`                                                                              | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the Application                                                             |
| `ats_application`                                                                 | [::UnifiedRubySDK::Shared::AtsApplication](../../models/shared/atsapplication.md) | :heavy_minus_sign:                                                                | N/A                                                                               |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAtsApplicationResponse)](../../models/operations/updateatsapplicationresponse.md)**

