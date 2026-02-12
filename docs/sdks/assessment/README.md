# Assessment
(*assessment*)

## Overview

### Available Operations

* [create_assessment_package](#create_assessment_package) - Create an assessment package
* [get_assessment_package](#get_assessment_package) - Get an assessment package
* [list_assessment_packages](#list_assessment_packages) - List assessment packages
* [patch_assessment_order](#patch_assessment_order) - Update an order
* [patch_assessment_package](#patch_assessment_package) - Update an assessment package
* [remove_assessment_package](#remove_assessment_package) - Delete an assessment package
* [update_assessment_order](#update_assessment_order) - Update an order
* [update_assessment_package](#update_assessment_package) - Update an assessment package

## create_assessment_package

Create an assessment package

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAssessmentPackage" method="post" path="/assessment/{connection_id}/package" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.assessment.create_assessment_package(assessment_package: Models::Shared::AssessmentPackage.new(
  id: '<id>',
  name: '<value>',
  type: Models::Shared::AssessmentPackageType::REFERENCE_CHECK,
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

**[T.nilable(Models::Operations::CreateAssessmentPackageResponse)](../../models/operations/createassessmentpackageresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_assessment_package

Get an assessment package

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAssessmentPackage" method="get" path="/assessment/{connection_id}/package/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.assessment.get_assessment_package(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::GetAssessmentPackageResponse)](../../models/operations/getassessmentpackageresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_assessment_packages

List assessment packages

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAssessmentPackages" method="get" path="/assessment/{connection_id}/package" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.assessment.list_assessment_packages(connection_id: '<id>')

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

**[T.nilable(Models::Operations::ListAssessmentPackagesResponse)](../../models/operations/listassessmentpackagesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_assessment_order

Update an order

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAssessmentOrder" method="patch" path="/assessment/{connection_id}/order/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAssessmentOrderRequest.new(
  assessment_order: Models::Shared::AssessmentOrder.new(
    connection_id: '<id>',
    workspace_id: '<id>',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.assessment.patch_assessment_order(request: req)

unless res.assessment_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::PatchAssessmentOrderRequest](../../models/operations/patchassessmentorderrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::PatchAssessmentOrderResponse)](../../models/operations/patchassessmentorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_assessment_package

Update an assessment package

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAssessmentPackage" method="patch" path="/assessment/{connection_id}/package/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.assessment.patch_assessment_package(assessment_package: Models::Shared::AssessmentPackage.new(
  id: '<id>',
  name: '<value>',
  type: Models::Shared::AssessmentPackageType::BACKGROUND_CHECK,
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

**[T.nilable(Models::Operations::PatchAssessmentPackageResponse)](../../models/operations/patchassessmentpackageresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_assessment_package

Delete an assessment package

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAssessmentPackage" method="delete" path="/assessment/{connection_id}/package/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.assessment.remove_assessment_package(connection_id: '<id>', id: '<id>')

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

**[T.nilable(Models::Operations::RemoveAssessmentPackageResponse)](../../models/operations/removeassessmentpackageresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_assessment_order

Update an order

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAssessmentOrder" method="put" path="/assessment/{connection_id}/order/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAssessmentOrderRequest.new(
  assessment_order: Models::Shared::AssessmentOrder.new(
    connection_id: '<id>',
    workspace_id: '<id>',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.assessment.update_assessment_order(request: req)

unless res.assessment_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::UpdateAssessmentOrderRequest](../../models/operations/updateassessmentorderrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::UpdateAssessmentOrderResponse)](../../models/operations/updateassessmentorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_assessment_package

Update an assessment package

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAssessmentPackage" method="put" path="/assessment/{connection_id}/package/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.assessment.update_assessment_package(assessment_package: Models::Shared::AssessmentPackage.new(
  id: '<id>',
  name: '<value>',
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

**[T.nilable(Models::Operations::UpdateAssessmentPackageResponse)](../../models/operations/updateassessmentpackageresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |