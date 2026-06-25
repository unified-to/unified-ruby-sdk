# Package
(*package*)

## Overview

### Available Operations

* [create_assessment_package2](#create_assessment_package2) - Create an assessment package
* [get_assessment_package2](#get_assessment_package2) - Get an assessment package
* [get_verification_package2](#get_verification_package2) - Retrieve a package
* [list_assessment_packages2](#list_assessment_packages2) - List assessment packages
* [list_verification_packages2](#list_verification_packages2) - List all packages
* [patch_assessment_package2](#patch_assessment_package2) - Update an assessment package
* [remove_assessment_package2](#remove_assessment_package2) - Delete an assessment package
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

res = s.package.create_assessment_package2(assessment_package: Models::Shared::AssessmentPackage.new(
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

res = s.package.get_assessment_package2(connection_id: '<id>', id: '<id>')

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

## get_verification_package2

Retrieve a package

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getVerificationPackage2" method="get" path="/verification/{connection_id}/package/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.package.get_verification_package2(connection_id: '<id>', id: '<id>')

unless res.verification_package.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Package                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetVerificationPackage2QueryParamFields](../../models/operations/getverificationpackage2queryparamfields.md)>      | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetVerificationPackage2Response)](../../models/operations/getverificationpackage2response.md)**

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

res = s.package.list_assessment_packages2(connection_id: '<id>')

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

## list_verification_packages2

List all packages

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listVerificationPackages2" method="get" path="/verification/{connection_id}/package" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListVerificationPackages2Request.new(
  connection_id: '<id>',
)

res = s.package.list_verification_packages2(request: req)

unless res.verification_packages.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [Models::Operations::ListVerificationPackages2Request](../../models/operations/listverificationpackages2request.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(Models::Operations::ListVerificationPackages2Response)](../../models/operations/listverificationpackages2response.md)**

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

res = s.package.patch_assessment_package2(assessment_package: Models::Shared::AssessmentPackage.new(
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

res = s.package.remove_assessment_package2(connection_id: '<id>', id: '<id>')

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

res = s.package.update_assessment_package2(assessment_package: Models::Shared::AssessmentPackage.new(
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