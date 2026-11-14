# Qms

## Overview

### Available Operations

* [create_qms_action](#create_qms_action) - Create an action
* [create_qms_audit](#create_qms_audit) - Create an audit
* [create_qms_inspection](#create_qms_inspection) - Create an inspection
* [create_qms_issue](#create_qms_issue) - Create an issue
* [get_qms_action](#get_qms_action) - Retrieve an action
* [get_qms_audit](#get_qms_audit) - Retrieve an audit
* [get_qms_inspection](#get_qms_inspection) - Retrieve an inspection
* [get_qms_issue](#get_qms_issue) - Retrieve an issue
* [list_qms_actions](#list_qms_actions) - List all actions
* [list_qms_audits](#list_qms_audits) - List all audits
* [list_qms_inspections](#list_qms_inspections) - List all inspections
* [list_qms_issues](#list_qms_issues) - List all issues
* [patch_qms_action](#patch_qms_action) - Update an action
* [patch_qms_audit](#patch_qms_audit) - Update an audit
* [patch_qms_inspection](#patch_qms_inspection) - Update an inspection
* [patch_qms_issue](#patch_qms_issue) - Update an issue
* [update_qms_action](#update_qms_action) - Update an action
* [update_qms_audit](#update_qms_audit) - Update an audit
* [update_qms_inspection](#update_qms_inspection) - Update an inspection
* [update_qms_issue](#update_qms_issue) - Update an issue

## create_qms_action

Creates a QmsAction. Provide the unified QmsAction fields in the request body; they are mapped to the provider's API. Returns the created QmsAction.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createQmsAction" method="post" path="/qms/{connection_id}/action" example="qms_action" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.qms.create_qms_action(qms_action: Models::Shared::QmsAction.new(
  affected_items: [],
  created_at: DateTime.iso8601('2022-03-07T03:01:29.933Z'),
  description: 'Auditor sunt tego apparatus aegre ascisco.',
  due_at: DateTime.iso8601('2022-04-04T03:42:01.290Z'),
  file_ids: [],
  id: '396375cc-b800-4359-841a-fc9aa93923d7',
  issue_ids: [],
  lifecycle_state: 'Cancelled',
  metadata: [],
  name: 'Add inspection step',
  number: 'CAPA-6268',
  original_type: 'Corrective Action',
  priority: 'Medium',
  root_cause: 'Worn tooling',
  status: Models::Shared::QmsActionStatus::CANCELLED,
  type: Models::Shared::QmsActionType::CORRECTIVE,
  updated_at: DateTime.iso8601('2025-02-17T00:51:29.951Z'),
  url: 'https://incomplete-conservation.org'
), connection_id: '<id>')

unless res.qms_action.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `qms_action`                                                                                                                                     | [Models::Shared::QmsAction](../../models/shared/qmsaction.md)                                                                                    | :heavy_check_mark:                                                                                                                               | A corrective or preventive action (CAPA)                                                                                                         |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateQmsActionQueryParamFields](../../models/operations/createqmsactionqueryparamfields.md)>                      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateQmsActionResponse)](../../models/operations/createqmsactionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_qms_audit

Creates a QmsAudit. Provide the unified QmsAudit fields in the request body; they are mapped to the provider's API. Returns the created QmsAudit.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createQmsAudit" method="post" path="/qms/{connection_id}/audit" example="qms_audit" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.qms.create_qms_audit(qms_audit: Models::Shared::QmsAudit.new(
  created_at: DateTime.iso8601('2021-02-20T23:02:37.667Z'),
  end_at: DateTime.iso8601('2026-03-27T12:08:31.590Z'),
  file_ids: [],
  id: 'd962c199-1712-4d59-886a-c698ba9d9b18',
  issue_ids: [],
  lifecycle_state: 'In Review',
  metadata: [],
  name: 'soggy certification audit',
  number: 'AUD-215',
  scheduled_at: DateTime.iso8601('2021-02-20T23:02:37.667Z'),
  scope: 'Calibration',
  standard: 'ISO 9001:2015',
  start_at: DateTime.iso8601('2023-01-25T01:42:53.701Z'),
  status: Models::Shared::QmsAuditStatus::IN_REVIEW,
  type: Models::Shared::QmsAuditType::CERTIFICATION,
  updated_at: DateTime.iso8601('2024-02-08T14:58:04.325Z'),
  url: 'https://mushy-obesity.name/'
), connection_id: '<id>')

unless res.qms_audit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `qms_audit`                                                                                                                                      | [Models::Shared::QmsAudit](../../models/shared/qmsaudit.md)                                                                                      | :heavy_check_mark:                                                                                                                               | An internal, supplier, customer or certification audit                                                                                           |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateQmsAuditQueryParamFields](../../models/operations/createqmsauditqueryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateQmsAuditResponse)](../../models/operations/createqmsauditresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_qms_inspection

Creates a QmsInspection. Provide the unified QmsInspection fields in the request body; they are mapped to the provider's API. Returns the created QmsInspection.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createQmsInspection" method="post" path="/qms/{connection_id}/inspection" example="qms_inspection" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.qms.create_qms_inspection(qms_inspection: Models::Shared::QmsInspection.new(
  characteristics: [
    Models::Shared::QmsCharacteristic.new(
      lower_limit: 152.9,
      measured_value: '152.94',
      name: 'Hole position',
      nominal_value: 153.0,
      result: Models::Shared::Result::PASS,
      unit_of_measure: 'mm',
      upper_limit: 153.1
    ),
    Models::Shared::QmsCharacteristic.new(
      lower_limit: 24.95,
      measured_value: '25.03',
      name: 'Flatness',
      nominal_value: 25.0,
      result: Models::Shared::Result::PASS,
      unit_of_measure: 'mm',
      upper_limit: 25.05
    ),
    Models::Shared::QmsCharacteristic.new(
      lower_limit: 53.99,
      measured_value: '53.99',
      name: 'Bore diameter',
      nominal_value: 54.0,
      result: Models::Shared::Result::PASS,
      unit_of_measure: 'mm',
      upper_limit: 54.01
    ),
  ],
  created_at: DateTime.iso8601('2020-04-18T21:23:54.000Z'),
  file_ids: [],
  id: '38f11bf5-071f-4fd8-900d-c405bab3ac14',
  inspected_at: DateTime.iso8601('2021-02-07T09:02:43.193Z'),
  issue_ids: [],
  lifecycle_state: 'Complete',
  metadata: [],
  name: 'Source inspection',
  number: 'INSP-96996',
  part_number: 'PRT-048483',
  quantity_accepted: 41.0,
  quantity_inspected: 41.0,
  quantity_rejected: 0.0,
  result: Models::Shared::QmsInspectionResult::PASS,
  revision: 'A',
  status: Models::Shared::QmsInspectionStatus::CLOSED,
  supplier_name: 'Gerlach LLC',
  type: Models::Shared::QmsInspectionType::SOURCE,
  updated_at: DateTime.iso8601('2026-05-08T16:14:56.150Z'),
  url: 'https://purple-newsprint.name/'
), connection_id: '<id>')

unless res.qms_inspection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `qms_inspection`                                                                                                                                 | [Models::Shared::QmsInspection](../../models/shared/qmsinspection.md)                                                                            | :heavy_check_mark:                                                                                                                               | An inspection of a part, lot or serial against its requirements                                                                                  |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateQmsInspectionQueryParamFields](../../models/operations/createqmsinspectionqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateQmsInspectionResponse)](../../models/operations/createqmsinspectionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_qms_issue

Creates a QmsIssue. Provide the unified QmsIssue fields in the request body; they are mapped to the provider's API. Returns the created QmsIssue.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createQmsIssue" method="post" path="/qms/{connection_id}/issue" example="qms_issue" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.qms.create_qms_issue(qms_issue: Models::Shared::QmsIssue.new(
  action_ids: [],
  affected_items: [
    Models::Shared::QmsAffectedItem.new(
      part_number: 'PRT-051260',
      quantity: 27.0,
      revision: 'B',
      serial_number: 'SN-419784'
    ),
  ],
  change_ids: [],
  created_at: DateTime.iso8601('2020-06-10T05:10:42.904Z'),
  description: 'Adfero delectatio earum contabesco convoco uxor avaritia volaticus dens.',
  due_at: DateTime.iso8601('2024-07-24T00:58:27.959Z'),
  file_ids: [],
  id: 'fe483871-e272-489e-a965-c51dea6ea56e',
  lifecycle_state: 'In Progress',
  metadata: [],
  name: 'Labeling error on tuxedo',
  number: 'CMP-5154',
  opened_at: DateTime.iso8601('2024-07-09T00:24:04.167Z'),
  original_type: 'Customer Complaint',
  severity: Models::Shared::Severity::MEDIUM,
  source: Models::Shared::QmsIssueSource::CUSTOMER,
  status: Models::Shared::QmsIssueStatus::IN_PROGRESS,
  type: Models::Shared::QmsIssueType::COMPLAINT,
  updated_at: DateTime.iso8601('2021-03-13T04:57:31.552Z'),
  url: 'https://annual-cycle.org/'
), connection_id: '<id>')

unless res.qms_issue.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `qms_issue`                                                                                                                                      | [Models::Shared::QmsIssue](../../models/shared/qmsissue.md)                                                                                      | :heavy_check_mark:                                                                                                                               | A nonconformance, complaint, audit finding or problem report                                                                                     |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateQmsIssueQueryParamFields](../../models/operations/createqmsissuequeryparamfields.md)>                        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateQmsIssueResponse)](../../models/operations/createqmsissueresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_qms_action

Retrieves a single QmsAction by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getQmsAction" method="get" path="/qms/{connection_id}/action/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.qms.get_qms_action(connection_id: '<id>', id: '<id>')

unless res.qms_action.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Action                                                                                                                                 |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetQmsActionQueryParamFields](../../models/operations/getqmsactionqueryparamfields.md)>                            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetQmsActionResponse)](../../models/operations/getqmsactionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_qms_audit

Retrieves a single QmsAudit by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getQmsAudit" method="get" path="/qms/{connection_id}/audit/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.qms.get_qms_audit(connection_id: '<id>', id: '<id>')

unless res.qms_audit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Audit                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetQmsAuditQueryParamFields](../../models/operations/getqmsauditqueryparamfields.md)>                              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetQmsAuditResponse)](../../models/operations/getqmsauditresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_qms_inspection

Retrieves a single QmsInspection by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getQmsInspection" method="get" path="/qms/{connection_id}/inspection/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.qms.get_qms_inspection(connection_id: '<id>', id: '<id>')

unless res.qms_inspection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Inspection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetQmsInspectionQueryParamFields](../../models/operations/getqmsinspectionqueryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetQmsInspectionResponse)](../../models/operations/getqmsinspectionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_qms_issue

Retrieves a single QmsIssue by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getQmsIssue" method="get" path="/qms/{connection_id}/issue/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.qms.get_qms_issue(connection_id: '<id>', id: '<id>')

unless res.qms_issue.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Issue                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetQmsIssueQueryParamFields](../../models/operations/getqmsissuequeryparamfields.md)>                              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetQmsIssueResponse)](../../models/operations/getqmsissueresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_qms_actions

Returns a list of QmsActions. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listQmsActions" method="get" path="/qms/{connection_id}/action" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListQmsActionsRequest.new(
  connection_id: '<id>'
)
res = s.qms.list_qms_actions(request: req)

unless res.qms_actions.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::ListQmsActionsRequest](../../models/operations/listqmsactionsrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::ListQmsActionsResponse)](../../models/operations/listqmsactionsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_qms_audits

Returns a list of QmsAudits. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listQmsAudits" method="get" path="/qms/{connection_id}/audit" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListQmsAuditsRequest.new(
  connection_id: '<id>'
)
res = s.qms.list_qms_audits(request: req)

unless res.qms_audits.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::ListQmsAuditsRequest](../../models/operations/listqmsauditsrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::ListQmsAuditsResponse)](../../models/operations/listqmsauditsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_qms_inspections

Returns a list of QmsInspections. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listQmsInspections" method="get" path="/qms/{connection_id}/inspection" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListQmsInspectionsRequest.new(
  connection_id: '<id>'
)
res = s.qms.list_qms_inspections(request: req)

unless res.qms_inspections.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::ListQmsInspectionsRequest](../../models/operations/listqmsinspectionsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::ListQmsInspectionsResponse)](../../models/operations/listqmsinspectionsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_qms_issues

Returns a list of QmsIssues. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listQmsIssues" method="get" path="/qms/{connection_id}/issue" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListQmsIssuesRequest.new(
  connection_id: '<id>'
)
res = s.qms.list_qms_issues(request: req)

unless res.qms_issues.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::ListQmsIssuesRequest](../../models/operations/listqmsissuesrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::ListQmsIssuesResponse)](../../models/operations/listqmsissuesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_qms_action

Updates the QmsAction identified by `id`. Provide the unified QmsAction fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchQmsAction" method="patch" path="/qms/{connection_id}/action/{id}" example="qms_action" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchQmsActionRequest.new(
  qms_action: Models::Shared::QmsAction.new(
    affected_items: [],
    created_at: DateTime.iso8601('2022-03-07T03:01:29.933Z'),
    description: 'Auditor sunt tego apparatus aegre ascisco.',
    due_at: DateTime.iso8601('2022-04-04T03:42:01.290Z'),
    file_ids: [],
    id: '040e2a58-8cd6-426a-bfed-efd8363e4be9',
    issue_ids: [],
    lifecycle_state: 'Cancelled',
    metadata: [],
    name: 'Add inspection step',
    number: 'CAPA-6268',
    original_type: 'Corrective Action',
    priority: 'Medium',
    root_cause: 'Worn tooling',
    status: Models::Shared::QmsActionStatus::CANCELLED,
    type: Models::Shared::QmsActionType::CORRECTIVE,
    updated_at: DateTime.iso8601('2025-02-17T00:51:29.965Z'),
    url: 'https://incomplete-conservation.org'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.qms.patch_qms_action(request: req)

unless res.qms_action.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::PatchQmsActionRequest](../../models/operations/patchqmsactionrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::PatchQmsActionResponse)](../../models/operations/patchqmsactionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_qms_audit

Updates the QmsAudit identified by `id`. Provide the unified QmsAudit fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchQmsAudit" method="patch" path="/qms/{connection_id}/audit/{id}" example="qms_audit" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchQmsAuditRequest.new(
  qms_audit: Models::Shared::QmsAudit.new(
    created_at: DateTime.iso8601('2021-02-20T23:02:37.667Z'),
    end_at: DateTime.iso8601('2026-03-27T12:08:31.607Z'),
    file_ids: [],
    id: 'f2c3afa5-405d-4f88-aac6-471727e5e0c0',
    issue_ids: [],
    lifecycle_state: 'In Review',
    metadata: [],
    name: 'soggy certification audit',
    number: 'AUD-215',
    scheduled_at: DateTime.iso8601('2021-02-20T23:02:37.667Z'),
    scope: 'Calibration',
    standard: 'ISO 9001:2015',
    start_at: DateTime.iso8601('2023-01-25T01:42:53.707Z'),
    status: Models::Shared::QmsAuditStatus::IN_REVIEW,
    type: Models::Shared::QmsAuditType::CERTIFICATION,
    updated_at: DateTime.iso8601('2024-02-08T14:58:04.336Z'),
    url: 'https://mushy-obesity.name/'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.qms.patch_qms_audit(request: req)

unless res.qms_audit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::PatchQmsAuditRequest](../../models/operations/patchqmsauditrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::PatchQmsAuditResponse)](../../models/operations/patchqmsauditresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_qms_inspection

Updates the QmsInspection identified by `id`. Provide the unified QmsInspection fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchQmsInspection" method="patch" path="/qms/{connection_id}/inspection/{id}" example="qms_inspection" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchQmsInspectionRequest.new(
  qms_inspection: Models::Shared::QmsInspection.new(
    characteristics: [
      Models::Shared::QmsCharacteristic.new(
        lower_limit: 152.9,
        measured_value: '152.94',
        name: 'Hole position',
        nominal_value: 153.0,
        result: Models::Shared::Result::PASS,
        unit_of_measure: 'mm',
        upper_limit: 153.1
      ),
      Models::Shared::QmsCharacteristic.new(
        lower_limit: 24.95,
        measured_value: '25.03',
        name: 'Flatness',
        nominal_value: 25.0,
        result: Models::Shared::Result::PASS,
        unit_of_measure: 'mm',
        upper_limit: 25.05
      ),
      Models::Shared::QmsCharacteristic.new(
        lower_limit: 53.99,
        measured_value: '53.99',
        name: 'Bore diameter',
        nominal_value: 54.0,
        result: Models::Shared::Result::PASS,
        unit_of_measure: 'mm',
        upper_limit: 54.01
      ),
    ],
    created_at: DateTime.iso8601('2020-04-18T21:23:54.000Z'),
    file_ids: [],
    id: 'ed1948eb-43a6-4b09-975e-65282378f51a',
    inspected_at: DateTime.iso8601('2021-02-07T09:02:43.196Z'),
    issue_ids: [],
    lifecycle_state: 'Complete',
    metadata: [],
    name: 'Source inspection',
    number: 'INSP-96996',
    part_number: 'PRT-048483',
    quantity_accepted: 41.0,
    quantity_inspected: 41.0,
    quantity_rejected: 0.0,
    result: Models::Shared::QmsInspectionResult::PASS,
    revision: 'A',
    status: Models::Shared::QmsInspectionStatus::CLOSED,
    supplier_name: 'Gerlach LLC',
    type: Models::Shared::QmsInspectionType::SOURCE,
    updated_at: DateTime.iso8601('2026-05-08T16:14:56.177Z'),
    url: 'https://purple-newsprint.name/'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.qms.patch_qms_inspection(request: req)

unless res.qms_inspection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::PatchQmsInspectionRequest](../../models/operations/patchqmsinspectionrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::PatchQmsInspectionResponse)](../../models/operations/patchqmsinspectionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_qms_issue

Updates the QmsIssue identified by `id`. Provide the unified QmsIssue fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchQmsIssue" method="patch" path="/qms/{connection_id}/issue/{id}" example="qms_issue" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::PatchQmsIssueRequest.new(
  qms_issue: Models::Shared::QmsIssue.new(
    action_ids: [],
    affected_items: [
      Models::Shared::QmsAffectedItem.new(
        part_number: 'PRT-051260',
        quantity: 27.0,
        revision: 'B',
        serial_number: 'SN-419784'
      ),
    ],
    change_ids: [],
    created_at: DateTime.iso8601('2020-06-10T05:10:42.904Z'),
    description: 'Adfero delectatio earum contabesco convoco uxor avaritia volaticus dens.',
    due_at: DateTime.iso8601('2024-07-24T00:58:27.974Z'),
    file_ids: [],
    id: '5aec8ab9-ee4b-4318-b6d5-1d1f3a992fc0',
    lifecycle_state: 'In Progress',
    metadata: [],
    name: 'Labeling error on tuxedo',
    number: 'CMP-5154',
    opened_at: DateTime.iso8601('2024-07-09T00:24:04.182Z'),
    original_type: 'Customer Complaint',
    severity: Models::Shared::Severity::MEDIUM,
    source: Models::Shared::QmsIssueSource::CUSTOMER,
    status: Models::Shared::QmsIssueStatus::IN_PROGRESS,
    type: Models::Shared::QmsIssueType::COMPLAINT,
    updated_at: DateTime.iso8601('2021-03-13T04:57:31.555Z'),
    url: 'https://annual-cycle.org/'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.qms.patch_qms_issue(request: req)

unless res.qms_issue.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::PatchQmsIssueRequest](../../models/operations/patchqmsissuerequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::PatchQmsIssueResponse)](../../models/operations/patchqmsissueresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_qms_action

Updates the QmsAction identified by `id`. Provide the unified QmsAction fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateQmsAction" method="put" path="/qms/{connection_id}/action/{id}" example="qms_action" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateQmsActionRequest.new(
  qms_action: Models::Shared::QmsAction.new(
    affected_items: [],
    created_at: DateTime.iso8601('2022-03-07T03:01:29.933Z'),
    description: 'Auditor sunt tego apparatus aegre ascisco.',
    due_at: DateTime.iso8601('2022-04-04T03:42:01.290Z'),
    file_ids: [],
    id: '040e2a58-8cd6-426a-bfed-efd8363e4be9',
    issue_ids: [],
    lifecycle_state: 'Cancelled',
    metadata: [],
    name: 'Add inspection step',
    number: 'CAPA-6268',
    original_type: 'Corrective Action',
    priority: 'Medium',
    root_cause: 'Worn tooling',
    status: Models::Shared::QmsActionStatus::CANCELLED,
    type: Models::Shared::QmsActionType::CORRECTIVE,
    updated_at: DateTime.iso8601('2025-02-17T00:51:29.965Z'),
    url: 'https://incomplete-conservation.org'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.qms.update_qms_action(request: req)

unless res.qms_action.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::UpdateQmsActionRequest](../../models/operations/updateqmsactionrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::UpdateQmsActionResponse)](../../models/operations/updateqmsactionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_qms_audit

Updates the QmsAudit identified by `id`. Provide the unified QmsAudit fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateQmsAudit" method="put" path="/qms/{connection_id}/audit/{id}" example="qms_audit" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateQmsAuditRequest.new(
  qms_audit: Models::Shared::QmsAudit.new(
    created_at: DateTime.iso8601('2021-02-20T23:02:37.667Z'),
    end_at: DateTime.iso8601('2026-03-27T12:08:31.607Z'),
    file_ids: [],
    id: 'f2c3afa5-405d-4f88-aac6-471727e5e0c0',
    issue_ids: [],
    lifecycle_state: 'In Review',
    metadata: [],
    name: 'soggy certification audit',
    number: 'AUD-215',
    scheduled_at: DateTime.iso8601('2021-02-20T23:02:37.667Z'),
    scope: 'Calibration',
    standard: 'ISO 9001:2015',
    start_at: DateTime.iso8601('2023-01-25T01:42:53.707Z'),
    status: Models::Shared::QmsAuditStatus::IN_REVIEW,
    type: Models::Shared::QmsAuditType::CERTIFICATION,
    updated_at: DateTime.iso8601('2024-02-08T14:58:04.336Z'),
    url: 'https://mushy-obesity.name/'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.qms.update_qms_audit(request: req)

unless res.qms_audit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::UpdateQmsAuditRequest](../../models/operations/updateqmsauditrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::UpdateQmsAuditResponse)](../../models/operations/updateqmsauditresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_qms_inspection

Updates the QmsInspection identified by `id`. Provide the unified QmsInspection fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateQmsInspection" method="put" path="/qms/{connection_id}/inspection/{id}" example="qms_inspection" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateQmsInspectionRequest.new(
  qms_inspection: Models::Shared::QmsInspection.new(
    characteristics: [
      Models::Shared::QmsCharacteristic.new(
        lower_limit: 152.9,
        measured_value: '152.94',
        name: 'Hole position',
        nominal_value: 153.0,
        result: Models::Shared::Result::PASS,
        unit_of_measure: 'mm',
        upper_limit: 153.1
      ),
      Models::Shared::QmsCharacteristic.new(
        lower_limit: 24.95,
        measured_value: '25.03',
        name: 'Flatness',
        nominal_value: 25.0,
        result: Models::Shared::Result::PASS,
        unit_of_measure: 'mm',
        upper_limit: 25.05
      ),
      Models::Shared::QmsCharacteristic.new(
        lower_limit: 53.99,
        measured_value: '53.99',
        name: 'Bore diameter',
        nominal_value: 54.0,
        result: Models::Shared::Result::PASS,
        unit_of_measure: 'mm',
        upper_limit: 54.01
      ),
    ],
    created_at: DateTime.iso8601('2020-04-18T21:23:54.000Z'),
    file_ids: [],
    id: 'ed1948eb-43a6-4b09-975e-65282378f51a',
    inspected_at: DateTime.iso8601('2021-02-07T09:02:43.196Z'),
    issue_ids: [],
    lifecycle_state: 'Complete',
    metadata: [],
    name: 'Source inspection',
    number: 'INSP-96996',
    part_number: 'PRT-048483',
    quantity_accepted: 41.0,
    quantity_inspected: 41.0,
    quantity_rejected: 0.0,
    result: Models::Shared::QmsInspectionResult::PASS,
    revision: 'A',
    status: Models::Shared::QmsInspectionStatus::CLOSED,
    supplier_name: 'Gerlach LLC',
    type: Models::Shared::QmsInspectionType::SOURCE,
    updated_at: DateTime.iso8601('2026-05-08T16:14:56.177Z'),
    url: 'https://purple-newsprint.name/'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.qms.update_qms_inspection(request: req)

unless res.qms_inspection.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::UpdateQmsInspectionRequest](../../models/operations/updateqmsinspectionrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::UpdateQmsInspectionResponse)](../../models/operations/updateqmsinspectionresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_qms_issue

Updates the QmsIssue identified by `id`. Provide the unified QmsIssue fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateQmsIssue" method="put" path="/qms/{connection_id}/issue/{id}" example="qms_issue" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::UpdateQmsIssueRequest.new(
  qms_issue: Models::Shared::QmsIssue.new(
    action_ids: [],
    affected_items: [
      Models::Shared::QmsAffectedItem.new(
        part_number: 'PRT-051260',
        quantity: 27.0,
        revision: 'B',
        serial_number: 'SN-419784'
      ),
    ],
    change_ids: [],
    created_at: DateTime.iso8601('2020-06-10T05:10:42.904Z'),
    description: 'Adfero delectatio earum contabesco convoco uxor avaritia volaticus dens.',
    due_at: DateTime.iso8601('2024-07-24T00:58:27.974Z'),
    file_ids: [],
    id: '5aec8ab9-ee4b-4318-b6d5-1d1f3a992fc0',
    lifecycle_state: 'In Progress',
    metadata: [],
    name: 'Labeling error on tuxedo',
    number: 'CMP-5154',
    opened_at: DateTime.iso8601('2024-07-09T00:24:04.182Z'),
    original_type: 'Customer Complaint',
    severity: Models::Shared::Severity::MEDIUM,
    source: Models::Shared::QmsIssueSource::CUSTOMER,
    status: Models::Shared::QmsIssueStatus::IN_PROGRESS,
    type: Models::Shared::QmsIssueType::COMPLAINT,
    updated_at: DateTime.iso8601('2021-03-13T04:57:31.555Z'),
    url: 'https://annual-cycle.org/'
  ),
  connection_id: '<id>',
  id: '<id>'
)
res = s.qms.update_qms_issue(request: req)

unless res.qms_issue.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::UpdateQmsIssueRequest](../../models/operations/updateqmsissuerequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::UpdateQmsIssueResponse)](../../models/operations/updateqmsissueresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |