# Practicearea
(*practicearea*)

## Overview

### Available Operations

* [create_legal_practicearea](#create_legal_practicearea) - Create a practicearea
* [get_legal_practicearea](#get_legal_practicearea) - Retrieve a practicearea
* [list_legal_practiceareas](#list_legal_practiceareas) - List all practiceareas
* [patch_legal_practicearea](#patch_legal_practicearea) - Update a practicearea
* [remove_legal_practicearea](#remove_legal_practicearea) - Remove a practicearea
* [update_legal_practicearea](#update_legal_practicearea) - Update a practicearea

## create_legal_practicearea

Create a practicearea

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createLegalPracticearea" method="post" path="/legal/{connection_id}/practicearea" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.practicearea.create_legal_practicearea(legal_practicearea: Models::Shared::LegalPracticearea.new(
  code: 'QCA',
  created_at: DateTime.iso8601('2023-01-28T21:00:26.264Z'),
  id: '54bc5aa5-07f9-4cf9-9d46-b912b9406df9',
  metadata: [],
  name: 'witty Law',
  type: Models::Shared::LegalPracticeareaType::EDUCATION,
  updated_at: DateTime.iso8601('2025-08-23T10:51:27.813Z'),
), connection_id: '<id>')

unless res.legal_practicearea.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `legal_practicearea`                                                                                                                             | [Models::Shared::LegalPracticearea](../../models/shared/legalpracticearea.md)                                                                    | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateLegalPracticeareaQueryParamFields](../../models/operations/createlegalpracticeareaqueryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateLegalPracticeareaResponse)](../../models/operations/createlegalpracticearearesponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_legal_practicearea

Retrieve a practicearea

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getLegalPracticearea" method="get" path="/legal/{connection_id}/practicearea/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.practicearea.get_legal_practicearea(connection_id: '<id>', id: '<id>')

unless res.legal_practicearea.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Practicearea                                                                                                                           |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetLegalPracticeareaQueryParamFields](../../models/operations/getlegalpracticeareaqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetLegalPracticeareaResponse)](../../models/operations/getlegalpracticearearesponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_legal_practiceareas

List all practiceareas

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listLegalPracticeareas" method="get" path="/legal/{connection_id}/practicearea" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListLegalPracticeareasRequest.new(
  connection_id: '<id>',
)

res = s.practicearea.list_legal_practiceareas(request: req)

unless res.legal_practiceareas.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::ListLegalPracticeareasRequest](../../models/operations/listlegalpracticeareasrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::ListLegalPracticeareasResponse)](../../models/operations/listlegalpracticeareasresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_legal_practicearea

Update a practicearea

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchLegalPracticearea" method="patch" path="/legal/{connection_id}/practicearea/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchLegalPracticeareaRequest.new(
  legal_practicearea: Models::Shared::LegalPracticearea.new(
    code: 'QCA',
    created_at: DateTime.iso8601('2023-01-28T21:00:26.264Z'),
    id: '82dcd4c9-018b-4343-a0e4-1e51139906c8',
    metadata: [],
    name: 'witty Law',
    type: Models::Shared::LegalPracticeareaType::EDUCATION,
    updated_at: DateTime.iso8601('2025-08-23T10:51:27.823Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.practicearea.patch_legal_practicearea(request: req)

unless res.legal_practicearea.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::PatchLegalPracticeareaRequest](../../models/operations/patchlegalpracticearearequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::PatchLegalPracticeareaResponse)](../../models/operations/patchlegalpracticearearesponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_legal_practicearea

Remove a practicearea

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeLegalPracticearea" method="delete" path="/legal/{connection_id}/practicearea/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.practicearea.remove_legal_practicearea(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `connection_id`        | *::String*             | :heavy_check_mark:     | ID of the connection   |
| `id`                   | *::String*             | :heavy_check_mark:     | ID of the Practicearea |

### Response

**[T.nilable(Models::Operations::RemoveLegalPracticeareaResponse)](../../models/operations/removelegalpracticearearesponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_legal_practicearea

Update a practicearea

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateLegalPracticearea" method="put" path="/legal/{connection_id}/practicearea/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateLegalPracticeareaRequest.new(
  legal_practicearea: Models::Shared::LegalPracticearea.new(
    code: 'QCA',
    created_at: DateTime.iso8601('2023-01-28T21:00:26.264Z'),
    id: '82dcd4c9-018b-4343-a0e4-1e51139906c8',
    metadata: [],
    name: 'witty Law',
    type: Models::Shared::LegalPracticeareaType::EDUCATION,
    updated_at: DateTime.iso8601('2025-08-23T10:51:27.823Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.practicearea.update_legal_practicearea(request: req)

unless res.legal_practicearea.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::UpdateLegalPracticeareaRequest](../../models/operations/updatelegalpracticearearequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::UpdateLegalPracticeareaResponse)](../../models/operations/updatelegalpracticearearesponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |