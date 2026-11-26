# Medicationrequest

## Overview

### Available Operations

* [get_fhir_medicationrequest](#get_fhir_medicationrequest) - Read a MedicationRequest
* [list_fhir_medicationrequests](#list_fhir_medicationrequests) - Search MedicationRequest resources

## get_fhir_medicationrequest

Responses use the application/fhir+json media type; errors are OperationOutcome resources. Read-only (FHIR R4 4.0.1).

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getFhirMedicationrequest" method="get" path="/fhir/{connection_id}/MedicationRequest/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.medicationrequest.get_fhir_medicationrequest(connection_id: '<id>', id: '<id>')

unless res.fhir_medication_request.nil?
  # handle response
end

```

### Parameters

| Parameter                   | Type                        | Required                    | Description                 |
| --------------------------- | --------------------------- | --------------------------- | --------------------------- |
| `connection_id`             | *::String*                  | :heavy_check_mark:          | ID of the connection        |
| `id`                        | *::String*                  | :heavy_check_mark:          | ID of the Medicationrequest |

### Response

**[T.nilable(Models::Operations::GetFhirMedicationrequestResponse)](../../models/operations/getfhirmedicationrequestresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_fhir_medicationrequests

Returns a searchset Bundle; follow its next link for more pages. Responses use the application/fhir+json media type; errors are OperationOutcome resources. Read-only (FHIR R4 4.0.1).

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listFhirMedicationrequests" method="get" path="/fhir/{connection_id}/MedicationRequest" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListFhirMedicationrequestsRequest.new(
  connection_id: '<id>'
)
res = s.medicationrequest.list_fhir_medicationrequests(request: req)

unless res.fhir_bundle.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::ListFhirMedicationrequestsRequest](../../models/operations/listfhirmedicationrequestsrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::ListFhirMedicationrequestsResponse)](../../models/operations/listfhirmedicationrequestsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |