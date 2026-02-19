# Bankaccount
(*bankaccount*)

## Overview

### Available Operations

* [create_hris_bankaccount](#create_hris_bankaccount) - Create a bankaccount
* [get_hris_bankaccount](#get_hris_bankaccount) - Retrieve a bankaccount
* [list_hris_bankaccounts](#list_hris_bankaccounts) - List all bankaccounts
* [patch_hris_bankaccount](#patch_hris_bankaccount) - Update a bankaccount
* [remove_hris_bankaccount](#remove_hris_bankaccount) - Remove a bankaccount
* [update_hris_bankaccount](#update_hris_bankaccount) - Update a bankaccount

## create_hris_bankaccount

Create a bankaccount

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createHrisBankaccount" method="post" path="/hris/{connection_id}/bankaccount" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.bankaccount.create_hris_bankaccount(hris_bankaccount: Models::Shared::HrisBankaccount.new(), connection_id: '<id>')

unless res.hris_bankaccount.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `hris_bankaccount`                                                                                                                               | [Models::Shared::HrisBankaccount](../../models/shared/hrisbankaccount.md)                                                                        | :heavy_check_mark:                                                                                                                               | Employee payroll bank account for direct deposit.                                                                                                |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateHrisBankaccountQueryParamFields](../../models/operations/createhrisbankaccountqueryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateHrisBankaccountResponse)](../../models/operations/createhrisbankaccountresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_hris_bankaccount

Retrieve a bankaccount

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisBankaccount" method="get" path="/hris/{connection_id}/bankaccount/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.bankaccount.get_hris_bankaccount(connection_id: '<id>', id: '<id>')

unless res.hris_bankaccount.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Bankaccount                                                                                                                            |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisBankaccountQueryParamFields](../../models/operations/gethrisbankaccountqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisBankaccountResponse)](../../models/operations/gethrisbankaccountresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_bankaccounts

List all bankaccounts

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisBankaccounts" method="get" path="/hris/{connection_id}/bankaccount" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisBankaccountsRequest.new(
  connection_id: '<id>',
)

res = s.bankaccount.list_hris_bankaccounts(request: req)

unless res.hris_bankaccounts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListHrisBankaccountsRequest](../../models/operations/listhrisbankaccountsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListHrisBankaccountsResponse)](../../models/operations/listhrisbankaccountsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_hris_bankaccount

Update a bankaccount

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchHrisBankaccount" method="patch" path="/hris/{connection_id}/bankaccount/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchHrisBankaccountRequest.new(
  hris_bankaccount: Models::Shared::HrisBankaccount.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.bankaccount.patch_hris_bankaccount(request: req)

unless res.hris_bankaccount.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::PatchHrisBankaccountRequest](../../models/operations/patchhrisbankaccountrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::PatchHrisBankaccountResponse)](../../models/operations/patchhrisbankaccountresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_hris_bankaccount

Remove a bankaccount

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeHrisBankaccount" method="delete" path="/hris/{connection_id}/bankaccount/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.bankaccount.remove_hris_bankaccount(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveHrisBankaccountResponse)](../../models/operations/removehrisbankaccountresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_hris_bankaccount

Update a bankaccount

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateHrisBankaccount" method="put" path="/hris/{connection_id}/bankaccount/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateHrisBankaccountRequest.new(
  hris_bankaccount: Models::Shared::HrisBankaccount.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.bankaccount.update_hris_bankaccount(request: req)

unless res.hris_bankaccount.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::UpdateHrisBankaccountRequest](../../models/operations/updatehrisbankaccountrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::UpdateHrisBankaccountResponse)](../../models/operations/updatehrisbankaccountresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |