# Device
(*device*)

## Overview

### Available Operations

* [create_hris_device](#create_hris_device) - Create a device
* [get_hris_device](#get_hris_device) - Retrieve a device
* [list_hris_devices](#list_hris_devices) - List all devices
* [patch_hris_device](#patch_hris_device) - Update a device
* [remove_hris_device](#remove_hris_device) - Remove a device
* [update_hris_device](#update_hris_device) - Update a device

## create_hris_device

Create a device

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.device.create_hris_device(hris_device=Models::Shared::HrisDevice.new(
  name: "<value>",
), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.hris_device.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `hris_device`                                                   | [Models::Shared::HrisDevice](../../models/shared/hrisdevice.md) | :heavy_check_mark:                                              | N/A                                                             |
| `connection_id`                                                 | *::String*                                                      | :heavy_check_mark:                                              | ID of the connection                                            |
| `fields_`                                                       | T::Array<*::String*>                                            | :heavy_minus_sign:                                              | Comma-delimited fields to return                                |

### Response

**[T.nilable(Models::Operations::CreateHrisDeviceResponse)](../../models/operations/createhrisdeviceresponse.md)**



## get_hris_device

Retrieve a device

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.device.get_hris_device(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.hris_device.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Device                 |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(Models::Operations::GetHrisDeviceResponse)](../../models/operations/gethrisdeviceresponse.md)**



## list_hris_devices

List all devices

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::ListHrisDevicesRequest.new(
  connection_id: "<id>",
)

res = s.device.list_hris_devices(req)

if ! res.hris_devices.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::ListHrisDevicesRequest](../../models/operations/listhrisdevicesrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::ListHrisDevicesResponse)](../../models/operations/listhrisdevicesresponse.md)**



## patch_hris_device

Update a device

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.device.patch_hris_device(hris_device=Models::Shared::HrisDevice.new(
  name: "<value>",
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.hris_device.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `hris_device`                                                   | [Models::Shared::HrisDevice](../../models/shared/hrisdevice.md) | :heavy_check_mark:                                              | N/A                                                             |
| `connection_id`                                                 | *::String*                                                      | :heavy_check_mark:                                              | ID of the connection                                            |
| `id`                                                            | *::String*                                                      | :heavy_check_mark:                                              | ID of the Device                                                |
| `fields_`                                                       | T::Array<*::String*>                                            | :heavy_minus_sign:                                              | Comma-delimited fields to return                                |

### Response

**[T.nilable(Models::Operations::PatchHrisDeviceResponse)](../../models/operations/patchhrisdeviceresponse.md)**



## remove_hris_device

Remove a device

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.device.remove_hris_device(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Device     |

### Response

**[T.nilable(Models::Operations::RemoveHrisDeviceResponse)](../../models/operations/removehrisdeviceresponse.md)**



## update_hris_device

Update a device

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.device.update_hris_device(hris_device=Models::Shared::HrisDevice.new(
  name: "<value>",
), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.hris_device.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `hris_device`                                                   | [Models::Shared::HrisDevice](../../models/shared/hrisdevice.md) | :heavy_check_mark:                                              | N/A                                                             |
| `connection_id`                                                 | *::String*                                                      | :heavy_check_mark:                                              | ID of the connection                                            |
| `id`                                                            | *::String*                                                      | :heavy_check_mark:                                              | ID of the Device                                                |
| `fields_`                                                       | T::Array<*::String*>                                            | :heavy_minus_sign:                                              | Comma-delimited fields to return                                |

### Response

**[T.nilable(Models::Operations::UpdateHrisDeviceResponse)](../../models/operations/updatehrisdeviceresponse.md)**

