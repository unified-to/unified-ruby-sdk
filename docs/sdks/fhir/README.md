# Fhir

## Overview

### Available Operations

* [get_fhir_allergyintolerance](#get_fhir_allergyintolerance) - Read a AllergyIntolerance
* [get_fhir_condition](#get_fhir_condition) - Read a Condition
* [get_fhir_diagnosticreport](#get_fhir_diagnosticreport) - Read a DiagnosticReport
* [get_fhir_encounter](#get_fhir_encounter) - Read a Encounter
* [get_fhir_immunization](#get_fhir_immunization) - Read a Immunization
* [get_fhir_medicationrequest](#get_fhir_medicationrequest) - Read a MedicationRequest
* [get_fhir_observation](#get_fhir_observation) - Read a Observation
* [get_fhir_patient](#get_fhir_patient) - Read a Patient
* [get_fhir_practitioner](#get_fhir_practitioner) - Read a Practitioner
* [list_fhir_allergyintolerances](#list_fhir_allergyintolerances) - Search AllergyIntolerance resources
* [list_fhir_conditions](#list_fhir_conditions) - Search Condition resources
* [list_fhir_diagnosticreports](#list_fhir_diagnosticreports) - Search DiagnosticReport resources
* [list_fhir_encounters](#list_fhir_encounters) - Search Encounter resources
* [list_fhir_immunizations](#list_fhir_immunizations) - Search Immunization resources
* [list_fhir_medicationrequests](#list_fhir_medicationrequests) - Search MedicationRequest resources
* [list_fhir_metadatas](#list_fhir_metadatas) - Get the CapabilityStatement
* [list_fhir_observations](#list_fhir_observations) - Search Observation resources
* [list_fhir_patients](#list_fhir_patients) - Search Patient resources
* [list_fhir_practitioners](#list_fhir_practitioners) - Search Practitioner resources

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
res = s.fhir.get_fhir_allergyintolerance(connection_id: '<id>', id: '<id>')

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

## get_fhir_condition

Responses use the application/fhir+json media type; errors are OperationOutcome resources. Read-only (FHIR R4 4.0.1).

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getFhirCondition" method="get" path="/fhir/{connection_id}/Condition/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.fhir.get_fhir_condition(connection_id: '<id>', id: '<id>')

unless res.fhir_condition.nil?
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Condition  |

### Response

**[T.nilable(Models::Operations::GetFhirConditionResponse)](../../models/operations/getfhirconditionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

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
res = s.fhir.get_fhir_diagnosticreport(connection_id: '<id>', id: '<id>')

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

## get_fhir_encounter

Responses use the application/fhir+json media type; errors are OperationOutcome resources. Read-only (FHIR R4 4.0.1).

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getFhirEncounter" method="get" path="/fhir/{connection_id}/Encounter/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.fhir.get_fhir_encounter(connection_id: '<id>', id: '<id>')

unless res.fhir_encounter.nil?
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Encounter  |

### Response

**[T.nilable(Models::Operations::GetFhirEncounterResponse)](../../models/operations/getfhirencounterresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_fhir_immunization

Responses use the application/fhir+json media type; errors are OperationOutcome resources. Read-only (FHIR R4 4.0.1).

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getFhirImmunization" method="get" path="/fhir/{connection_id}/Immunization/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.fhir.get_fhir_immunization(connection_id: '<id>', id: '<id>')

unless res.fhir_immunization.nil?
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `connection_id`        | *::String*             | :heavy_check_mark:     | ID of the connection   |
| `id`                   | *::String*             | :heavy_check_mark:     | ID of the Immunization |

### Response

**[T.nilable(Models::Operations::GetFhirImmunizationResponse)](../../models/operations/getfhirimmunizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

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
res = s.fhir.get_fhir_medicationrequest(connection_id: '<id>', id: '<id>')

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

## get_fhir_observation

Responses use the application/fhir+json media type; errors are OperationOutcome resources. Read-only (FHIR R4 4.0.1).

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getFhirObservation" method="get" path="/fhir/{connection_id}/Observation/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.fhir.get_fhir_observation(connection_id: '<id>', id: '<id>')

unless res.fhir_observation.nil?
  # handle response
end

```

### Parameters

| Parameter             | Type                  | Required              | Description           |
| --------------------- | --------------------- | --------------------- | --------------------- |
| `connection_id`       | *::String*            | :heavy_check_mark:    | ID of the connection  |
| `id`                  | *::String*            | :heavy_check_mark:    | ID of the Observation |

### Response

**[T.nilable(Models::Operations::GetFhirObservationResponse)](../../models/operations/getfhirobservationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_fhir_patient

Responses use the application/fhir+json media type; errors are OperationOutcome resources. Read-only (FHIR R4 4.0.1).

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getFhirPatient" method="get" path="/fhir/{connection_id}/Patient/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.fhir.get_fhir_patient(connection_id: '<id>', id: '<id>')

unless res.fhir_patient.nil?
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Patient    |

### Response

**[T.nilable(Models::Operations::GetFhirPatientResponse)](../../models/operations/getfhirpatientresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_fhir_practitioner

Responses use the application/fhir+json media type; errors are OperationOutcome resources. Read-only (FHIR R4 4.0.1).

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getFhirPractitioner" method="get" path="/fhir/{connection_id}/Practitioner/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.fhir.get_fhir_practitioner(connection_id: '<id>', id: '<id>')

unless res.fhir_practitioner.nil?
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `connection_id`        | *::String*             | :heavy_check_mark:     | ID of the connection   |
| `id`                   | *::String*             | :heavy_check_mark:     | ID of the Practitioner |

### Response

**[T.nilable(Models::Operations::GetFhirPractitionerResponse)](../../models/operations/getfhirpractitionerresponse.md)**

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
res = s.fhir.list_fhir_allergyintolerances(request: req)

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

## list_fhir_conditions

Returns a searchset Bundle; follow its next link for more pages. Responses use the application/fhir+json media type; errors are OperationOutcome resources. Read-only (FHIR R4 4.0.1).

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listFhirConditions" method="get" path="/fhir/{connection_id}/Condition" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListFhirConditionsRequest.new(
  connection_id: '<id>'
)
res = s.fhir.list_fhir_conditions(request: req)

unless res.fhir_bundle.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListFhirConditionsRequest](../../models/operations/listfhirconditionsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListFhirConditionsResponse)](../../models/operations/listfhirconditionsresponse.md)**

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
res = s.fhir.list_fhir_diagnosticreports(request: req)

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

## list_fhir_encounters

Returns a searchset Bundle; follow its next link for more pages. Responses use the application/fhir+json media type; errors are OperationOutcome resources. Read-only (FHIR R4 4.0.1).

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listFhirEncounters" method="get" path="/fhir/{connection_id}/Encounter" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListFhirEncountersRequest.new(
  connection_id: '<id>'
)
res = s.fhir.list_fhir_encounters(request: req)

unless res.fhir_bundle.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListFhirEncountersRequest](../../models/operations/listfhirencountersrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListFhirEncountersResponse)](../../models/operations/listfhirencountersresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_fhir_immunizations

Returns a searchset Bundle; follow its next link for more pages. Responses use the application/fhir+json media type; errors are OperationOutcome resources. Read-only (FHIR R4 4.0.1).

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listFhirImmunizations" method="get" path="/fhir/{connection_id}/Immunization" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListFhirImmunizationsRequest.new(
  connection_id: '<id>'
)
res = s.fhir.list_fhir_immunizations(request: req)

unless res.fhir_bundle.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::ListFhirImmunizationsRequest](../../models/operations/listfhirimmunizationsrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::ListFhirImmunizationsResponse)](../../models/operations/listfhirimmunizationsresponse.md)**

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
res = s.fhir.list_fhir_medicationrequests(request: req)

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

## list_fhir_metadatas

The resources, interactions and search parameters this connection's integration supports. Responses use the application/fhir+json media type; errors are OperationOutcome resources. Read-only (FHIR R4 4.0.1).

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listFhirMetadatas" method="get" path="/fhir/{connection_id}/metadata" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.fhir.list_fhir_metadatas(connection_id: '<id>')

unless res.fhir_capability_statement.nil?
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |

### Response

**[T.nilable(Models::Operations::ListFhirMetadatasResponse)](../../models/operations/listfhirmetadatasresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_fhir_observations

Returns a searchset Bundle; follow its next link for more pages. Responses use the application/fhir+json media type; errors are OperationOutcome resources. Read-only (FHIR R4 4.0.1).

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listFhirObservations" method="get" path="/fhir/{connection_id}/Observation" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListFhirObservationsRequest.new(
  connection_id: '<id>'
)
res = s.fhir.list_fhir_observations(request: req)

unless res.fhir_bundle.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListFhirObservationsRequest](../../models/operations/listfhirobservationsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListFhirObservationsResponse)](../../models/operations/listfhirobservationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_fhir_patients

Returns a searchset Bundle; follow its next link for more pages. Responses use the application/fhir+json media type; errors are OperationOutcome resources. Read-only (FHIR R4 4.0.1).

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listFhirPatients" method="get" path="/fhir/{connection_id}/Patient" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListFhirPatientsRequest.new(
  connection_id: '<id>'
)
res = s.fhir.list_fhir_patients(request: req)

unless res.fhir_bundle.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListFhirPatientsRequest](../../models/operations/listfhirpatientsrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListFhirPatientsResponse)](../../models/operations/listfhirpatientsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_fhir_practitioners

Returns a searchset Bundle; follow its next link for more pages. Responses use the application/fhir+json media type; errors are OperationOutcome resources. Read-only (FHIR R4 4.0.1).

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listFhirPractitioners" method="get" path="/fhir/{connection_id}/Practitioner" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListFhirPractitionersRequest.new(
  connection_id: '<id>'
)
res = s.fhir.list_fhir_practitioners(request: req)

unless res.fhir_bundle.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::ListFhirPractitionersRequest](../../models/operations/listfhirpractitionersrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::ListFhirPractitionersResponse)](../../models/operations/listfhirpractitionersresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |