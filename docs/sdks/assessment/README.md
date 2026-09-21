# Assessment
(*assessment*)

## Overview

### Available Operations

* [create_assessment_order](#create_assessment_order) - Create an order
* [create_assessment_package](#create_assessment_package) - Create an assessment package
* [get_assessment_order](#get_assessment_order) - Retrieve an order
* [get_assessment_package](#get_assessment_package) - Get an assessment package
* [list_assessment_packages](#list_assessment_packages) - List assessment packages
* [patch_assessment_order](#patch_assessment_order) - Update an order
* [patch_assessment_package](#patch_assessment_package) - Update an assessment package
* [remove_assessment_package](#remove_assessment_package) - Delete an assessment package
* [update_assessment_order](#update_assessment_order) - Update an order
* [update_assessment_package](#update_assessment_package) - Update an assessment package

## create_assessment_order

Create an order

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAssessmentOrder" method="post" path="/assessment/{connection_id}/order" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.assessment.create_assessment_order(assessment_order: Models::Shared::AssessmentOrder.new(
  connection_id: '<id>',
  created_at: DateTime.iso8601('2021-09-18T10:33:57.803Z'),
  id: '56621e09-aa10-4e42-aab5-4e92ebfc91ac',
  parameters: [],
  profile_addresses: [],
  profile_date_of_birth: '1989-07-22T16:18:37.650Z',
  profile_emails: [
    'Cleta.Daugherty@gmail.com',
  ],
  profile_first_name: 'Amy',
  profile_gender: Models::Shared::ProfileGender::NON_BINARY,
  profile_last_name: 'Kris-Windler',
  profile_name: 'Amy Kris-Windler',
  profile_resume_url: 'https://enchanted-cycle.biz/',
  profile_social_media_urls: [],
  profile_telephones: [
    '(828) 263-1594 x5248',
  ],
  reference: 'ab',
  response_attributes: [],
  response_details: [],
  response_download_urls: [],
  response_max_score: 82.0,
  response_score: 92.0,
  response_status: Models::Shared::ResponseStatus::FAILED,
  response_url: 'https://irresponsible-trench.info/',
  status: Models::Shared::AssessmentOrderStatus::REJECTED,
  target_url: 'https://cautious-turret.info',
  updated_at: DateTime.iso8601('2023-01-17T21:13:52.935Z'),
  workspace_id: '<id>',
), connection_id: '<id>')

unless res.assessment_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `assessment_order`                                                                                                                               | [Models::Shared::AssessmentOrder](../../models/shared/assessmentorder.md)                                                                        | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAssessmentOrderQueryParamFields](../../models/operations/createassessmentorderqueryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAssessmentOrderResponse)](../../models/operations/createassessmentorderresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

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
  aliases: [
    'quia',
  ],
  created_at: DateTime.iso8601('2022-11-18T19:48:39.433Z'),
  description: 'Eos aedificium consectetur urbs. Admitto summa accusator tabesco distinctio vapulus culpo templum ancilla.',
  has_redirect_url: true,
  has_target_url: false,
  id: 'ba669d94-997b-412d-8dca-f79131f242ef',
  info_url: 'https://ugly-instance.biz/',
  integration_types: [
    'viridis',
  ],
  max_score: 22.0,
  name: 'Carus sed vox doloremque vigor surgo tabella cupiditas abduco clarus.',
  needs_ip_address: true,
  parameters: [],
  regions: [],
  tags: [
    'clamo',
  ],
  type: Models::Shared::AssessmentPackageType::VIDEO_INTERVIEW,
  updated_at: DateTime.iso8601('2023-09-18T21:16:01.106Z'),
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

## get_assessment_order

Retrieve an order

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAssessmentOrder" method="get" path="/assessment/{connection_id}/order/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.assessment.get_assessment_order(connection_id: '<id>', id: '<id>')

unless res.assessment_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Order                                                                                                                                  |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAssessmentOrderQueryParamFields](../../models/operations/getassessmentorderqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAssessmentOrderResponse)](../../models/operations/getassessmentorderresponse.md)**

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
    created_at: DateTime.iso8601('2021-09-18T10:33:57.803Z'),
    id: 'e1404ad8-0ded-4d74-96fb-b1bb7333dbff',
    parameters: [],
    profile_addresses: [],
    profile_date_of_birth: '1989-07-22T16:18:37.650Z',
    profile_emails: [
      'Cleta.Daugherty@gmail.com',
    ],
    profile_first_name: 'Amy',
    profile_gender: Models::Shared::ProfileGender::NON_BINARY,
    profile_last_name: 'Kris-Windler',
    profile_name: 'Amy Kris-Windler',
    profile_resume_url: 'https://enchanted-cycle.biz/',
    profile_social_media_urls: [],
    profile_telephones: [
      '(828) 263-1594 x5248',
    ],
    reference: 'ab',
    response_attributes: [],
    response_details: [],
    response_download_urls: [],
    response_max_score: 82.0,
    response_score: 92.0,
    response_status: Models::Shared::ResponseStatus::FAILED,
    response_url: 'https://irresponsible-trench.info/',
    status: Models::Shared::AssessmentOrderStatus::REJECTED,
    target_url: 'https://cautious-turret.info',
    updated_at: DateTime.iso8601('2023-01-17T21:13:52.948Z'),
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
  aliases: [
    'quia',
  ],
  created_at: DateTime.iso8601('2022-11-18T19:48:39.433Z'),
  description: 'Eos aedificium consectetur urbs. Admitto summa accusator tabesco distinctio vapulus culpo templum ancilla.',
  has_redirect_url: true,
  has_target_url: false,
  id: '0c813f8c-6a21-409b-a384-015244895a32',
  info_url: 'https://ugly-instance.biz/',
  integration_types: [
    'viridis',
  ],
  max_score: 22.0,
  name: 'Carus sed vox doloremque vigor surgo tabella cupiditas abduco clarus.',
  needs_ip_address: true,
  parameters: [],
  regions: [],
  tags: [
    'clamo',
  ],
  type: Models::Shared::AssessmentPackageType::VIDEO_INTERVIEW,
  updated_at: DateTime.iso8601('2023-09-18T21:16:01.109Z'),
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
    created_at: DateTime.iso8601('2021-09-18T10:33:57.803Z'),
    id: 'e1404ad8-0ded-4d74-96fb-b1bb7333dbff',
    parameters: [],
    profile_addresses: [],
    profile_date_of_birth: '1989-07-22T16:18:37.650Z',
    profile_emails: [
      'Cleta.Daugherty@gmail.com',
    ],
    profile_first_name: 'Amy',
    profile_gender: Models::Shared::ProfileGender::NON_BINARY,
    profile_last_name: 'Kris-Windler',
    profile_name: 'Amy Kris-Windler',
    profile_resume_url: 'https://enchanted-cycle.biz/',
    profile_social_media_urls: [],
    profile_telephones: [
      '(828) 263-1594 x5248',
    ],
    reference: 'ab',
    response_attributes: [],
    response_details: [],
    response_download_urls: [],
    response_max_score: 82.0,
    response_score: 92.0,
    response_status: Models::Shared::ResponseStatus::FAILED,
    response_url: 'https://irresponsible-trench.info/',
    status: Models::Shared::AssessmentOrderStatus::REJECTED,
    target_url: 'https://cautious-turret.info',
    updated_at: DateTime.iso8601('2023-01-17T21:13:52.948Z'),
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
  aliases: [
    'quia',
  ],
  created_at: DateTime.iso8601('2022-11-18T19:48:39.433Z'),
  description: 'Eos aedificium consectetur urbs. Admitto summa accusator tabesco distinctio vapulus culpo templum ancilla.',
  has_redirect_url: true,
  has_target_url: false,
  id: '0c813f8c-6a21-409b-a384-015244895a32',
  info_url: 'https://ugly-instance.biz/',
  integration_types: [
    'viridis',
  ],
  max_score: 22.0,
  name: 'Carus sed vox doloremque vigor surgo tabella cupiditas abduco clarus.',
  needs_ip_address: true,
  parameters: [],
  regions: [],
  tags: [
    'clamo',
  ],
  type: Models::Shared::AssessmentPackageType::VIDEO_INTERVIEW,
  updated_at: DateTime.iso8601('2023-09-18T21:16:01.109Z'),
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