# Application
(*application*)

## Overview

### Available Operations

* [create_ats_application](#create_ats_application) - Create an application
* [get_ats_application](#get_ats_application) - Retrieve an application
* [list_ats_applications](#list_ats_applications) - List all applications
* [patch_ats_application](#patch_ats_application) - Update an application
* [remove_ats_application](#remove_ats_application) - Remove an application
* [update_ats_application](#update_ats_application) - Update an application

## create_ats_application

Create an application

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAtsApplication" method="post" path="/ats/{connection_id}/application" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.application.create_ats_application(ats_application: Models::Shared::AtsApplication.new(
  answers: [],
  applied_at: DateTime.iso8601('2025-09-08T08:45:58.175Z'),
  created_at: DateTime.iso8601('2023-10-17T07:19:48.787Z'),
  hired_at: DateTime.iso8601('2026-04-14T14:30:49.399Z'),
  id: '3d467c88-78ed-4324-9573-7a42069f2113',
  metadata: [
    Models::Shared::AtsMetadata.new(
      extra_data: {

      },
      format: Models::Shared::AtsMetadataFormat::TEXT,
      id: 'a1302a79-0341-40e6-b91a-daeb95584617',
      namespace: 'application',
      slug: 'despecto',
      value: 'Argentum decretum cultellus aveho distinctio verecundia stella depono.',
    ),
  ],
  offers: [],
  original_status: 'vomica',
  original_substatus: 'allatus',
  rejected_at: DateTime.iso8601('2026-09-08T19:47:42.872Z'),
  rejected_reason: 'Cometes amplitudo videlicet talio.',
  source: 'credo',
  status: Models::Shared::AtsApplicationStatus::REVIEWING,
  updated_at: DateTime.iso8601('2026-09-15T11:06:13.612Z'),
), connection_id: '<id>')

unless res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `ats_application`                                                                                                                                | [Models::Shared::AtsApplication](../../models/shared/atsapplication.md)                                                                          | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAtsApplicationQueryParamFields](../../models/operations/createatsapplicationqueryparamfields.md)>            | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAtsApplicationResponse)](../../models/operations/createatsapplicationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_ats_application

Retrieve an application

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAtsApplication" method="get" path="/ats/{connection_id}/application/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.application.get_ats_application(connection_id: '<id>', id: '<id>')

unless res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Application                                                                                                                            |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAtsApplicationQueryParamFields](../../models/operations/getatsapplicationqueryparamfields.md)>                  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAtsApplicationResponse)](../../models/operations/getatsapplicationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_ats_applications

List all applications

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAtsApplications" method="get" path="/ats/{connection_id}/application" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAtsApplicationsRequest.new(
  connection_id: '<id>',
)

res = s.application.list_ats_applications(request: req)

unless res.ats_applications.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::ListAtsApplicationsRequest](../../models/operations/listatsapplicationsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::ListAtsApplicationsResponse)](../../models/operations/listatsapplicationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_ats_application

Update an application

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAtsApplication" method="patch" path="/ats/{connection_id}/application/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAtsApplicationRequest.new(
  ats_application: Models::Shared::AtsApplication.new(
    answers: [],
    applied_at: DateTime.iso8601('2025-09-08T08:45:58.189Z'),
    created_at: DateTime.iso8601('2023-10-17T07:19:48.787Z'),
    hired_at: DateTime.iso8601('2026-04-14T14:30:49.417Z'),
    id: 'eb46d7bf-0943-4468-afea-c17576f07cc7',
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {

        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: 'a1302a79-0341-40e6-b91a-daeb95584617',
        namespace: 'application',
        slug: 'despecto',
        value: 'Argentum decretum cultellus aveho distinctio verecundia stella depono.',
      ),
    ],
    offers: [],
    original_status: 'vomica',
    original_substatus: 'allatus',
    rejected_at: DateTime.iso8601('2026-09-08T19:47:42.893Z'),
    rejected_reason: 'Cometes amplitudo videlicet talio.',
    source: 'credo',
    status: Models::Shared::AtsApplicationStatus::REVIEWING,
    updated_at: DateTime.iso8601('2026-09-15T11:06:13.633Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.application.patch_ats_application(request: req)

unless res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [Models::Operations::PatchAtsApplicationRequest](../../models/operations/patchatsapplicationrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |

### Response

**[T.nilable(Models::Operations::PatchAtsApplicationResponse)](../../models/operations/patchatsapplicationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_ats_application

Remove an application

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAtsApplication" method="delete" path="/ats/{connection_id}/application/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.application.remove_ats_application(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter             | Type                  | Required              | Description           |
| --------------------- | --------------------- | --------------------- | --------------------- |
| `connection_id`       | *::String*            | :heavy_check_mark:    | ID of the connection  |
| `id`                  | *::String*            | :heavy_check_mark:    | ID of the Application |

### Response

**[T.nilable(Models::Operations::RemoveAtsApplicationResponse)](../../models/operations/removeatsapplicationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_ats_application

Update an application

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAtsApplication" method="put" path="/ats/{connection_id}/application/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAtsApplicationRequest.new(
  ats_application: Models::Shared::AtsApplication.new(
    answers: [],
    applied_at: DateTime.iso8601('2025-09-08T08:45:58.189Z'),
    created_at: DateTime.iso8601('2023-10-17T07:19:48.787Z'),
    hired_at: DateTime.iso8601('2026-04-14T14:30:49.417Z'),
    id: 'eb46d7bf-0943-4468-afea-c17576f07cc7',
    metadata: [
      Models::Shared::AtsMetadata.new(
        extra_data: {

        },
        format: Models::Shared::AtsMetadataFormat::TEXT,
        id: 'a1302a79-0341-40e6-b91a-daeb95584617',
        namespace: 'application',
        slug: 'despecto',
        value: 'Argentum decretum cultellus aveho distinctio verecundia stella depono.',
      ),
    ],
    offers: [],
    original_status: 'vomica',
    original_substatus: 'allatus',
    rejected_at: DateTime.iso8601('2026-09-08T19:47:42.893Z'),
    rejected_reason: 'Cometes amplitudo videlicet talio.',
    source: 'credo',
    status: Models::Shared::AtsApplicationStatus::REVIEWING,
    updated_at: DateTime.iso8601('2026-09-15T11:06:13.633Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.application.update_ats_application(request: req)

unless res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::UpdateAtsApplicationRequest](../../models/operations/updateatsapplicationrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::UpdateAtsApplicationResponse)](../../models/operations/updateatsapplicationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |