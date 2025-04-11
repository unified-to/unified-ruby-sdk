# Application
(*application*)

## Overview

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

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.application.create_ats_application(ats_application=Models::Shared::AtsApplication.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `ats_application`                                                       | [Models::Shared::AtsApplication](../../models/shared/atsapplication.md) | :heavy_check_mark:                                                      | N/A                                                                     |
| `connection_id`                                                         | *::String*                                                              | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `fields_`                                                               | T::Array<*::String*>                                                    | :heavy_minus_sign:                                                      | Comma-delimited fields to return                                        |

### Response

**[T.nilable(Models::Operations::CreateAtsApplicationResponse)](../../models/operations/createatsapplicationresponse.md)**



## get_ats_application

Retrieve an application

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.application.get_ats_application(connection_id="<id>", id="<id>", fields_=[
  "<value>",
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

**[T.nilable(Models::Operations::GetAtsApplicationResponse)](../../models/operations/getatsapplicationresponse.md)**



## list_ats_applications

List all applications

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::ListAtsApplicationsRequest.new(
  connection_id: "<id>",
)

res = s.application.list_ats_applications(req)

if ! res.ats_applications.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListAtsApplicationsRequest](../../models/operations/listatsapplicationsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListAtsApplicationsResponse)](../../models/operations/listatsapplicationsresponse.md)**



## patch_ats_application

Update an application

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.application.patch_ats_application(ats_application=Models::Shared::AtsApplication.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `ats_application`                                                       | [Models::Shared::AtsApplication](../../models/shared/atsapplication.md) | :heavy_check_mark:                                                      | N/A                                                                     |
| `connection_id`                                                         | *::String*                                                              | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `id`                                                                    | *::String*                                                              | :heavy_check_mark:                                                      | ID of the Application                                                   |
| `fields_`                                                               | T::Array<*::String*>                                                    | :heavy_minus_sign:                                                      | Comma-delimited fields to return                                        |

### Response

**[T.nilable(Models::Operations::PatchAtsApplicationResponse)](../../models/operations/patchatsapplicationresponse.md)**



## remove_ats_application

Remove an application

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.application.remove_ats_application(connection_id="<id>", id="<id>")

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

**[T.nilable(Models::Operations::RemoveAtsApplicationResponse)](../../models/operations/removeatsapplicationresponse.md)**



## update_ats_application

Update an application

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.application.update_ats_application(ats_application=Models::Shared::AtsApplication.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `ats_application`                                                       | [Models::Shared::AtsApplication](../../models/shared/atsapplication.md) | :heavy_check_mark:                                                      | N/A                                                                     |
| `connection_id`                                                         | *::String*                                                              | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `id`                                                                    | *::String*                                                              | :heavy_check_mark:                                                      | ID of the Application                                                   |
| `fields_`                                                               | T::Array<*::String*>                                                    | :heavy_minus_sign:                                                      | Comma-delimited fields to return                                        |

### Response

**[T.nilable(Models::Operations::UpdateAtsApplicationResponse)](../../models/operations/updateatsapplicationresponse.md)**

