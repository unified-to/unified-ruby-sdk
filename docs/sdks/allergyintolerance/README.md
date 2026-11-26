# Allergyintolerance

## Overview

### Available Operations

* [get_fhir_allergyintolerance](#get_fhir_allergyintolerance) - Read a AllergyIntolerance
* [list_fhir_allergyintolerances](#list_fhir_allergyintolerances) - Search AllergyIntolerance resources

## get_fhir_allergyintolerance

Responses use the application/fhir+json media type; errors are OperationOutcome resources. Read-only (FHIR R4 4.0.1).

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getFhirAllergyintolerance" method="get" path="/fhir/{connection_id}/AllergyIntolerance/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.allergyintolerance.get_fhir_allergyintolerance(connection_id: '<id>', id: '<id>')

unless res.fhir_allergy_intolerance.nil?
  # handle response
end

```

### Parameters

| Parameter                    | Type                         | Required                     | Description                  |
| ---------------------------- | ---------------------------- | ---------------------------- | ---------------------------- |
| `connection_id`              | *::String*                   | :heavy_check_mark:           | ID of the connection         |
| `id`                         | *::String*                   | :heavy_check_mark:           | ID of the Allergyintolerance |

### Response

**[T.nilable(Models::Operations::GetFhirAllergyintoleranceResponse)](../../models/operations/getfhirallergyintoleranceresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_fhir_allergyintolerances

Returns a searchset Bundle; follow its next link for more pages. Responses use the application/fhir+json media type; errors are OperationOutcome resources. Read-only (FHIR R4 4.0.1).

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listFhirAllergyintolerances" method="get" path="/fhir/{connection_id}/AllergyIntolerance" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListFhirAllergyintolerancesRequest.new(
  connection_id: '<id>'
)
res = s.allergyintolerance.list_fhir_allergyintolerances(request: req)

unless res.fhir_bundle.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::ListFhirAllergyintolerancesRequest](../../models/operations/listfhirallergyintolerancesrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::ListFhirAllergyintolerancesResponse)](../../models/operations/listfhirallergyintolerancesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |