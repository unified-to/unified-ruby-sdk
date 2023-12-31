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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::CreateAtsApplicationRequest.new(
  connection_id="string",
  ats_application=Shared::AtsApplication.new(
    raw=Shared::PropertyAtsApplicationRaw.new(),
  ),
)
    
res = s.application.create_ats_application(connection_id="string", ats_application=Shared::AtsApplication.new(
    raw=Shared::PropertyAtsApplicationRaw.new(),
  ))

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetAtsApplicationRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.application.get_ats_application(connection_id="string", id="string", fields=[
    "string",
  ])

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListAtsApplicationsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::PatchAtsApplicationRequest.new(
  connection_id="string",
  id="<ID>",
  ats_application=Shared::AtsApplication.new(
    raw=Shared::PropertyAtsApplicationRaw.new(),
  ),
)
    
res = s.application.patch_ats_application(connection_id="string", id="string", ats_application=Shared::AtsApplication.new(
    raw=Shared::PropertyAtsApplicationRaw.new(),
  ))

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::RemoveAtsApplicationRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.application.remove_ats_application(connection_id="string", id="string")

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::UpdateAtsApplicationRequest.new(
  connection_id="string",
  id="<ID>",
  ats_application=Shared::AtsApplication.new(
    raw=Shared::PropertyAtsApplicationRaw.new(),
  ),
)
    
res = s.application.update_ats_application(connection_id="string", id="string", ats_application=Shared::AtsApplication.new(
    raw=Shared::PropertyAtsApplicationRaw.new(),
  ))

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

