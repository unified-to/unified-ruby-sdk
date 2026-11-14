# Audit

## Overview

### Available Operations

* [create_qms_audit](#create_qms_audit) - Create an audit
* [get_qms_audit](#get_qms_audit) - Retrieve an audit
* [list_qms_audits](#list_qms_audits) - List all audits
* [patch_qms_audit](#patch_qms_audit) - Update an audit
* [update_qms_audit](#update_qms_audit) - Update an audit

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
res = s.audit.create_qms_audit(qms_audit: Models::Shared::QmsAudit.new(
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
res = s.audit.get_qms_audit(connection_id: '<id>', id: '<id>')

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
res = s.audit.list_qms_audits(request: req)

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
res = s.audit.patch_qms_audit(request: req)

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
res = s.audit.update_qms_audit(request: req)

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