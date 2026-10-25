# Package
(*package*)

## Overview

### Available Operations

* [create_assessment_package](#create_assessment_package) - Create an assessment package
* [get_assessment_package](#get_assessment_package) - Get an assessment package
* [get_verification_package](#get_verification_package) - Retrieve a package
* [list_assessment_packages](#list_assessment_packages) - List assessment packages
* [list_verification_packages](#list_verification_packages) - List all packages
* [patch_assessment_package](#patch_assessment_package) - Update an assessment package
* [remove_assessment_package](#remove_assessment_package) - Delete an assessment package
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

res = s.package.create_assessment_package(assessment_package: Models::Shared::AssessmentPackage.new(
  aliases: [
    'quia',
  ],
  created_at: DateTime.iso8601('2022-11-18T19:48:39.433Z'),
  description: 'Eos aedificium consectetur urbs. Admitto summa accusator tabesco distinctio vapulus culpo templum ancilla.',
  has_redirect_url: true,
  has_target_url: false,
  id: '3374f561-f64f-411e-ad1a-0f584e5e5b3b',
  info_url: 'https://ugly-instance.biz/',
  integration_types: [
    'viridis',
  ],
  max_score: 22.0,
  metadata: [],
  name: 'Carus sed vox doloremque vigor surgo tabella cupiditas abduco clarus.',
  needs_ip_address: true,
  parameters: [],
  regions: [],
  tags: [
    'clamo',
  ],
  type: Models::Shared::AssessmentPackageType::VIDEO_INTERVIEW,
  updated_at: DateTime.iso8601('2023-09-26T05:57:05.001Z'),
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

res = s.package.get_assessment_package(connection_id: '<id>', id: '<id>')

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

## get_verification_package

Retrieves a single VerificationPackage by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getVerificationPackage" method="get" path="/verification/{connection_id}/package/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.package.get_verification_package(connection_id: '<id>', id: '<id>')

unless res.verification_package.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Package                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetVerificationPackageQueryParamFields](../../models/operations/getverificationpackagequeryparamfields.md)>        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetVerificationPackageResponse)](../../models/operations/getverificationpackageresponse.md)**

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

res = s.package.list_assessment_packages(connection_id: '<id>')

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

## list_verification_packages

Returns a list of VerificationPackages. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listVerificationPackages" method="get" path="/verification/{connection_id}/package" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListVerificationPackagesRequest.new(
  connection_id: '<id>',
)

res = s.package.list_verification_packages(request: req)

unless res.verification_packages.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [Models::Operations::ListVerificationPackagesRequest](../../models/operations/listverificationpackagesrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |

### Response

**[T.nilable(Models::Operations::ListVerificationPackagesResponse)](../../models/operations/listverificationpackagesresponse.md)**

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

res = s.package.patch_assessment_package(assessment_package: Models::Shared::AssessmentPackage.new(
  aliases: [
    'quia',
  ],
  created_at: DateTime.iso8601('2022-11-18T19:48:39.433Z'),
  description: 'Eos aedificium consectetur urbs. Admitto summa accusator tabesco distinctio vapulus culpo templum ancilla.',
  has_redirect_url: true,
  has_target_url: false,
  id: 'e0fb088d-b90f-4bb7-845f-03933def29f1',
  info_url: 'https://ugly-instance.biz/',
  integration_types: [
    'viridis',
  ],
  max_score: 22.0,
  metadata: [],
  name: 'Carus sed vox doloremque vigor surgo tabella cupiditas abduco clarus.',
  needs_ip_address: true,
  parameters: [],
  regions: [],
  tags: [
    'clamo',
  ],
  type: Models::Shared::AssessmentPackageType::VIDEO_INTERVIEW,
  updated_at: DateTime.iso8601('2023-09-26T05:57:05.005Z'),
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

res = s.package.remove_assessment_package(connection_id: '<id>', id: '<id>')

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

res = s.package.update_assessment_package(assessment_package: Models::Shared::AssessmentPackage.new(
  aliases: [
    'quia',
  ],
  created_at: DateTime.iso8601('2022-11-18T19:48:39.433Z'),
  description: 'Eos aedificium consectetur urbs. Admitto summa accusator tabesco distinctio vapulus culpo templum ancilla.',
  has_redirect_url: true,
  has_target_url: false,
  id: 'e0fb088d-b90f-4bb7-845f-03933def29f1',
  info_url: 'https://ugly-instance.biz/',
  integration_types: [
    'viridis',
  ],
  max_score: 22.0,
  metadata: [],
  name: 'Carus sed vox doloremque vigor surgo tabella cupiditas abduco clarus.',
  needs_ip_address: true,
  parameters: [],
  regions: [],
  tags: [
    'clamo',
  ],
  type: Models::Shared::AssessmentPackageType::VIDEO_INTERVIEW,
  updated_at: DateTime.iso8601('2023-09-26T05:57:05.005Z'),
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