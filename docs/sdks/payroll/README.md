# Payroll
(*payroll*)

## Overview

### Available Operations

* [get_hris_payroll](#get_hris_payroll) - Retrieve a payroll
* [list_hris_payrolls](#list_hris_payrolls) - List all payrolls

## get_hris_payroll

Retrieve a payroll

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHrisPayroll" method="get" path="/hris/{connection_id}/payroll/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.payroll.get_hris_payroll(connection_id: '<id>', id: '<id>')

unless res.hris_payroll.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Payroll                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHrisPayrollQueryParamFields](../../models/operations/gethrispayrollqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHrisPayrollResponse)](../../models/operations/gethrispayrollresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_hris_payrolls

List all payrolls

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHrisPayrolls" method="get" path="/hris/{connection_id}/payroll" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHrisPayrollsRequest.new(
  connection_id: '<id>',
)

res = s.payroll.list_hris_payrolls(request: req)

unless res.hris_payrolls.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListHrisPayrollsRequest](../../models/operations/listhrispayrollsrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListHrisPayrollsResponse)](../../models/operations/listhrispayrollsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |