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

Creates a HrisDevice. Provide the unified HrisDevice fields in the request body; they are mapped to the provider's API. Returns the created HrisDevice.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisDevice" method="post" path="/hris/{connection_id}/device" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.device.create_hris_device(hris_device: Models::Shared::HrisDevice.new(
  admin_user_ids: [],
  asset_tag: 'fJNacaaoWi',
  created_at: DateTime.iso8601('2019-04-04T17:11:40.322Z'),
  has_antivirus: true,
  has_firewall: true,
  has_hd_encrypted: true,
  has_password_manager: true,
  has_screenlock: false,
  id: '3995b44b-3f8e-46c9-b3fe-98cc83bd121f',
  is_missing: false,
  manufacturer: 'Hackett Inc',
  metadata: [],
  model: 'Fantastic',
  name: 'august-laptop',
  os: 'transmitter',
  os_version: '8.4.8',
  updated_at: DateTime.iso8601('2023-06-10T12:12:28.234Z'),
  version: '4.15.7',
), connection_id: '<id>')

unless res.hris_device.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_device`                                                                                                                                    | [Models::Shared::HrisDevice](../../models/shared/hrisdevice.md)                                                                                  | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHrisDeviceQueryParamFields](../../models/operations/createhrisdevicequeryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHrisDeviceResponse)](../../models/operations/createhrisdeviceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_hris_device

Retrieves a single HrisDevice by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisDevice" method="get" path="/hris/{connection_id}/device/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.device.get_hris_device(connection_id: '<id>', id: '<id>')

unless res.hris_device.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Device                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisDeviceQueryParamFields](../../models/operations/gethrisdevicequeryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisDeviceResponse)](../../models/operations/gethrisdeviceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_devices

Returns a list of HrisDevices. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisDevices" method="get" path="/hris/{connection_id}/device" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisDevicesRequest.new(
  connection_id: '<id>',
)

res = s.device.list_hris_devices(request: req)

unless res.hris_devices.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::ListHrisDevicesRequest](../../models/operations/listhrisdevicesrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::ListHrisDevicesResponse)](../../models/operations/listhrisdevicesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_hris_device

Updates the HrisDevice identified by `id`. Provide the unified HrisDevice fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHrisDevice" method="patch" path="/hris/{connection_id}/device/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchHrisDeviceRequest.new(
  hris_device: Models::Shared::HrisDevice.new(
    admin_user_ids: [],
    asset_tag: 'fJNacaaoWi',
    created_at: DateTime.iso8601('2019-04-04T17:11:40.322Z'),
    has_antivirus: true,
    has_firewall: true,
    has_hd_encrypted: true,
    has_password_manager: true,
    has_screenlock: false,
    id: '18c525d3-bef3-4cd9-bc21-0af8d3709b86',
    is_missing: false,
    manufacturer: 'Hackett Inc',
    metadata: [],
    model: 'Fantastic',
    name: 'august-laptop',
    os: 'transmitter',
    os_version: '8.4.8',
    updated_at: DateTime.iso8601('2023-06-10T12:12:28.241Z'),
    version: '4.15.7',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.device.patch_hris_device(request: req)

unless res.hris_device.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::PatchHrisDeviceRequest](../../models/operations/patchhrisdevicerequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::PatchHrisDeviceResponse)](../../models/operations/patchhrisdeviceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_hris_device

Deletes the HrisDevice identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHrisDevice" method="delete" path="/hris/{connection_id}/device/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.device.remove_hris_device(connection_id: '<id>', id: '<id>')

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

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_hris_device

Updates the HrisDevice identified by `id`. Provide the unified HrisDevice fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHrisDevice" method="put" path="/hris/{connection_id}/device/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateHrisDeviceRequest.new(
  hris_device: Models::Shared::HrisDevice.new(
    admin_user_ids: [],
    asset_tag: 'fJNacaaoWi',
    created_at: DateTime.iso8601('2019-04-04T17:11:40.322Z'),
    has_antivirus: true,
    has_firewall: true,
    has_hd_encrypted: true,
    has_password_manager: true,
    has_screenlock: false,
    id: '18c525d3-bef3-4cd9-bc21-0af8d3709b86',
    is_missing: false,
    manufacturer: 'Hackett Inc',
    metadata: [],
    model: 'Fantastic',
    name: 'august-laptop',
    os: 'transmitter',
    os_version: '8.4.8',
    updated_at: DateTime.iso8601('2023-06-10T12:12:28.241Z'),
    version: '4.15.7',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.device.update_hris_device(request: req)

unless res.hris_device.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::UpdateHrisDeviceRequest](../../models/operations/updatehrisdevicerequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::UpdateHrisDeviceResponse)](../../models/operations/updatehrisdeviceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |