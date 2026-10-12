# Immunization
(*immunization*)

## Overview

### Available Operations

* [get_healthcare_immunization](#get_healthcare_immunization) - Retrieve an immunization
* [list_healthcare_immunizations](#list_healthcare_immunizations) - List all immunizations

## get_healthcare_immunization

Retrieve an immunization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getHealthcareImmunization" method="get" path="/healthcare/{connection_id}/immunization/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.immunization.get_healthcare_immunization(connection_id: '<id>', id: '<id>')

unless res.healthcare_immunization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Immunization                                                                                                                           |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetHealthcareImmunizationQueryParamFields](../../models/operations/gethealthcareimmunizationqueryparamfields.md)>  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetHealthcareImmunizationResponse)](../../models/operations/gethealthcareimmunizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_healthcare_immunizations

List all immunizations

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listHealthcareImmunizations" method="get" path="/healthcare/{connection_id}/immunization" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListHealthcareImmunizationsRequest.new(
  connection_id: '<id>',
)

res = s.immunization.list_healthcare_immunizations(request: req)

unless res.healthcare_immunizations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::ListHealthcareImmunizationsRequest](../../models/operations/listhealthcareimmunizationsrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::ListHealthcareImmunizationsResponse)](../../models/operations/listhealthcareimmunizationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |