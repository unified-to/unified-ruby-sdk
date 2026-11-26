# Diagnosticreport

## Overview

### Available Operations

* [get_fhir_diagnosticreport](#get_fhir_diagnosticreport) - Read a DiagnosticReport
* [list_fhir_diagnosticreports](#list_fhir_diagnosticreports) - Search DiagnosticReport resources

## get_fhir_diagnosticreport

Responses use the application/fhir+json media type; errors are OperationOutcome resources. Read-only (FHIR R4 4.0.1).

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getFhirDiagnosticreport" method="get" path="/fhir/{connection_id}/DiagnosticReport/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.diagnosticreport.get_fhir_diagnosticreport(connection_id: '<id>', id: '<id>')

unless res.fhir_diagnostic_report.nil?
  # handle response
end

```

### Parameters

| Parameter                  | Type                       | Required                   | Description                |
| -------------------------- | -------------------------- | -------------------------- | -------------------------- |
| `connection_id`            | *::String*                 | :heavy_check_mark:         | ID of the connection       |
| `id`                       | *::String*                 | :heavy_check_mark:         | ID of the Diagnosticreport |

### Response

**[T.nilable(Models::Operations::GetFhirDiagnosticreportResponse)](../../models/operations/getfhirdiagnosticreportresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_fhir_diagnosticreports

Returns a searchset Bundle; follow its next link for more pages. Responses use the application/fhir+json media type; errors are OperationOutcome resources. Read-only (FHIR R4 4.0.1).

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listFhirDiagnosticreports" method="get" path="/fhir/{connection_id}/DiagnosticReport" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListFhirDiagnosticreportsRequest.new(
  connection_id: '<id>'
)
res = s.diagnosticreport.list_fhir_diagnosticreports(request: req)

unless res.fhir_bundle.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::ListFhirDiagnosticreportsRequest](../../models/operations/listfhirdiagnosticreportsrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::ListFhirDiagnosticreportsResponse)](../../models/operations/listfhirdiagnosticreportsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |