# Bankaccount
(*bankaccount*)

## Overview

### Available Operations

* [create_hris_bankaccount2](#create_hris_bankaccount2) - Create a bankaccount
* [get_hris_bankaccount2](#get_hris_bankaccount2) - Retrieve a bankaccount
* [list_hris_bankaccounts2](#list_hris_bankaccounts2) - List all bankaccounts
* [patch_hris_bankaccount2](#patch_hris_bankaccount2) - Update a bankaccount
* [remove_hris_bankaccount2](#remove_hris_bankaccount2) - Remove a bankaccount
* [update_hris_bankaccount2](#update_hris_bankaccount2) - Update a bankaccount

## create_hris_bankaccount2

Create a bankaccount

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisBankaccount2" method="post" path="/hris/{connection_id}/bankaccount" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.bankaccount.create_hris_bankaccount2(hris_bankaccount: Models::Shared::HrisBankaccount.new(), connection_id: '<id>')

unless res.hris_bankaccount.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_bankaccount`                                                                                                                               | [Models::Shared::HrisBankaccount](../../models/shared/hrisbankaccount.md)                                                                        | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHrisBankaccount2QueryParamFields](../../models/operations/createhrisbankaccount2queryparamfields.md)>        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHrisBankaccount2Response)](../../models/operations/createhrisbankaccount2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_hris_bankaccount2

Retrieve a bankaccount

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisBankaccount2" method="get" path="/hris/{connection_id}/bankaccount/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.bankaccount.get_hris_bankaccount2(connection_id: '<id>', id: '<id>')

unless res.hris_bankaccount.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Bankaccount                                                                                                                            |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisBankaccount2QueryParamFields](../../models/operations/gethrisbankaccount2queryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisBankaccount2Response)](../../models/operations/gethrisbankaccount2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_bankaccounts2

List all bankaccounts

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisBankaccounts2" method="get" path="/hris/{connection_id}/bankaccount" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisBankaccounts2Request.new(
  connection_id: '<id>',
)

res = s.bankaccount.list_hris_bankaccounts2(request: req)

unless res.hris_bankaccounts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::ListHrisBankaccounts2Request](../../models/operations/listhrisbankaccounts2request.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::ListHrisBankaccounts2Response)](../../models/operations/listhrisbankaccounts2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_hris_bankaccount2

Update a bankaccount

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHrisBankaccount2" method="patch" path="/hris/{connection_id}/bankaccount/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchHrisBankaccount2Request.new(
  hris_bankaccount: Models::Shared::HrisBankaccount.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.bankaccount.patch_hris_bankaccount2(request: req)

unless res.hris_bankaccount.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::PatchHrisBankaccount2Request](../../models/operations/patchhrisbankaccount2request.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::PatchHrisBankaccount2Response)](../../models/operations/patchhrisbankaccount2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_hris_bankaccount2

Remove a bankaccount

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHrisBankaccount2" method="delete" path="/hris/{connection_id}/bankaccount/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.bankaccount.remove_hris_bankaccount2(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter             | Type                  | Required              | Description           |
| --------------------- | --------------------- | --------------------- | --------------------- |
| `connection_id`       | *::String*            | :heavy_check_mark:    | ID of the connection  |
| `id`                  | *::String*            | :heavy_check_mark:    | ID of the Bankaccount |

### Response

**[T.nilable(Models::Operations::RemoveHrisBankaccount2Response)](../../models/operations/removehrisbankaccount2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_hris_bankaccount2

Update a bankaccount

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHrisBankaccount2" method="put" path="/hris/{connection_id}/bankaccount/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateHrisBankaccount2Request.new(
  hris_bankaccount: Models::Shared::HrisBankaccount.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.bankaccount.update_hris_bankaccount2(request: req)

unless res.hris_bankaccount.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::UpdateHrisBankaccount2Request](../../models/operations/updatehrisbankaccount2request.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::UpdateHrisBankaccount2Response)](../../models/operations/updatehrisbankaccount2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |