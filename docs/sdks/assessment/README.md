# Assessment
(*assessment*)

## Overview

### Available Operations

* [create_assessment_package2](#create_assessment_package2) - Create an assessment package
* [get_assessment_package2](#get_assessment_package2) - Get an assessment package
* [list_assessment_packages2](#list_assessment_packages2) - List assessment packages
* [patch_assessment_order2](#patch_assessment_order2) - Update an order
* [patch_assessment_package2](#patch_assessment_package2) - Update an assessment package
* [remove_assessment_package2](#remove_assessment_package2) - Delete an assessment package
* [update_assessment_order2](#update_assessment_order2) - Update an order
* [update_assessment_package2](#update_assessment_package2) - Update an assessment package

## create_assessment_package2

Create an assessment package

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAssessmentPackage2" method="post" path="/assessment/{connection_id}/package" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.assessment.create_assessment_package2(assessment_package: Models::Shared::AssessmentPackage.new(
  type: Models::Shared::AssessmentPackageType::VIDEO_INTERVIEW,
), connection_id: '<id>')

unless res.assessment_package.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `assessment_package`                                                          | [Models::Shared::AssessmentPackage](../../models/shared/assessmentpackage.md) | :heavy_check_mark:                                                            | Used by assessment providers to SUBMIT packages to ATS systems                |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |

### Response

**[T.nilable(Models::Operations::CreateAssessmentPackage2Response)](../../models/operations/createassessmentpackage2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_assessment_package2

Get an assessment package

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAssessmentPackage2" method="get" path="/assessment/{connection_id}/package/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.assessment.get_assessment_package2(connection_id: '<id>', id: '<id>')

unless res.assessment_package.nil?
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Package    |

### Response

**[T.nilable(Models::Operations::GetAssessmentPackage2Response)](../../models/operations/getassessmentpackage2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_assessment_packages2

List assessment packages

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAssessmentPackages2" method="get" path="/assessment/{connection_id}/package" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.assessment.list_assessment_packages2(connection_id: '<id>')

unless res.assessment_packages.nil?
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `limit`              | *T.nilable(::Float)* | :heavy_minus_sign:   | N/A                  |
| `offset`             | *T.nilable(::Float)* | :heavy_minus_sign:   | N/A                  |

### Response

**[T.nilable(Models::Operations::ListAssessmentPackages2Response)](../../models/operations/listassessmentpackages2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_assessment_order2

Update an order

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAssessmentOrder2" method="patch" path="/assessment/{connection_id}/order/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAssessmentOrder2Request.new(
  assessment_order: Models::Shared::AssessmentOrder.new(
    connection_id: '<id>',
    workspace_id: '<id>',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.assessment.patch_assessment_order2(request: req)

unless res.assessment_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::PatchAssessmentOrder2Request](../../models/operations/patchassessmentorder2request.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::PatchAssessmentOrder2Response)](../../models/operations/patchassessmentorder2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_assessment_package2

Update an assessment package

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAssessmentPackage2" method="patch" path="/assessment/{connection_id}/package/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.assessment.patch_assessment_package2(assessment_package: Models::Shared::AssessmentPackage.new(
  type: Models::Shared::AssessmentPackageType::OTHER,
), connection_id: '<id>', id: '<id>')

unless res.assessment_package.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `assessment_package`                                                          | [Models::Shared::AssessmentPackage](../../models/shared/assessmentpackage.md) | :heavy_check_mark:                                                            | Used by assessment providers to SUBMIT packages to ATS systems                |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `id`                                                                          | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the Package                                                             |

### Response

**[T.nilable(Models::Operations::PatchAssessmentPackage2Response)](../../models/operations/patchassessmentpackage2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_assessment_package2

Delete an assessment package

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAssessmentPackage2" method="delete" path="/assessment/{connection_id}/package/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.assessment.remove_assessment_package2(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Package    |

### Response

**[T.nilable(Models::Operations::RemoveAssessmentPackage2Response)](../../models/operations/removeassessmentpackage2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_assessment_order2

Update an order

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAssessmentOrder2" method="put" path="/assessment/{connection_id}/order/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAssessmentOrder2Request.new(
  assessment_order: Models::Shared::AssessmentOrder.new(
    connection_id: '<id>',
    workspace_id: '<id>',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.assessment.update_assessment_order2(request: req)

unless res.assessment_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::UpdateAssessmentOrder2Request](../../models/operations/updateassessmentorder2request.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::UpdateAssessmentOrder2Response)](../../models/operations/updateassessmentorder2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_assessment_package2

Update an assessment package

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAssessmentPackage2" method="put" path="/assessment/{connection_id}/package/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.assessment.update_assessment_package2(assessment_package: Models::Shared::AssessmentPackage.new(
  type: Models::Shared::AssessmentPackageType::OTHER,
), connection_id: '<id>', id: '<id>')

unless res.assessment_package.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `assessment_package`                                                          | [Models::Shared::AssessmentPackage](../../models/shared/assessmentpackage.md) | :heavy_check_mark:                                                            | Used by assessment providers to SUBMIT packages to ATS systems                |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `id`                                                                          | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the Package                                                             |

### Response

**[T.nilable(Models::Operations::UpdateAssessmentPackage2Response)](../../models/operations/updateassessmentpackage2response.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |