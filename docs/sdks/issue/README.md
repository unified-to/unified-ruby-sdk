# Issue

## Overview

### Available Operations

* [create_qms_issue](#create_qms_issue) - Create an issue
* [get_qms_issue](#get_qms_issue) - Retrieve an issue
* [get_unified_issue](#get_unified_issue) - Retrieve support issue
* [list_qms_issues](#list_qms_issues) - List all issues
* [list_unified_issues](#list_unified_issues) - List support issues
* [patch_qms_issue](#patch_qms_issue) - Update an issue
* [update_qms_issue](#update_qms_issue) - Update an issue

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
res = s.issue.create_qms_issue(qms_issue: Models::Shared::QmsIssue.new(
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
res = s.issue.get_qms_issue(connection_id: '<id>', id: '<id>')

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

## get_unified_issue

Retrieve support issue

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getUnifiedIssue" method="get" path="/unified/issue/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.issue.get_unified_issue(id: '<id>')

unless res.issue.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *::String*         | :heavy_check_mark: | ID of the Issue    |

### Response

**[T.nilable(Models::Operations::GetUnifiedIssueResponse)](../../models/operations/getunifiedissueresponse.md)**

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
res = s.issue.list_qms_issues(request: req)

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

## list_unified_issues

List support issues

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listUnifiedIssues" method="get" path="/unified/issue" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)

req = Models::Operations::ListUnifiedIssuesRequest.new
res = s.issue.list_unified_issues(request: req)

unless res.issues.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Models::Operations::ListUnifiedIssuesRequest](../../models/operations/listunifiedissuesrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(Models::Operations::ListUnifiedIssuesResponse)](../../models/operations/listunifiedissuesresponse.md)**

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
res = s.issue.patch_qms_issue(request: req)

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
res = s.issue.update_qms_issue(request: req)

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