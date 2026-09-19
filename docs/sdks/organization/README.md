# Organization
(*organization*)

## Overview

### Available Operations

* [create_ads_organization](#create_ads_organization) - Create an organization
* [create_repo_organization](#create_repo_organization) - Create an organization
* [get_accounting_organization](#get_accounting_organization) - Retrieve an organization
* [get_ads_organization](#get_ads_organization) - Retrieve an organization
* [get_repo_organization](#get_repo_organization) - Retrieve an organization
* [list_accounting_organizations](#list_accounting_organizations) - List all organizations
* [list_ads_organizations](#list_ads_organizations) - List all organizations
* [list_repo_organizations](#list_repo_organizations) - List all organizations
* [patch_ads_organization](#patch_ads_organization) - Update an organization
* [patch_repo_organization](#patch_repo_organization) - Update an organization
* [remove_ads_organization](#remove_ads_organization) - Remove an organization
* [remove_repo_organization](#remove_repo_organization) - Remove an organization
* [update_ads_organization](#update_ads_organization) - Update an organization
* [update_repo_organization](#update_repo_organization) - Update an organization

## create_ads_organization

Create an organization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAdsOrganization" method="post" path="/ads/{connection_id}/organization" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.organization.create_ads_organization(ads_organization: Models::Shared::AdsOrganization.new(
  account_number: 'LQUJx8zQBW',
  created_at: DateTime.iso8601('2020-07-23T21:47:11.440Z'),
  currency: 'USD',
  id: '18882c56-c1f5-426c-ae97-103e068bd8b3',
  managers: [
    Models::Shared::AdsManager.new(
      id: 'e4fd87df-9f8b-4fa0-a77b-b7d18669e350',
      name: 'Parker, Leannon and Gibson',
    ),
  ],
  name: 'Ankunding Inc',
  status: Models::Shared::AdsOrganizationStatus::PROCESSING,
  timezone: 'Europe/Chisinau',
  updated_at: DateTime.iso8601('2026-02-28T01:05:19.323Z'),
), connection_id: '<id>')

unless res.ads_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `ads_organization`                                                                                                                               | [Models::Shared::AdsOrganization](../../models/shared/adsorganization.md)                                                                        | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateAdsOrganizationQueryParamFields](../../models/operations/createadsorganizationqueryparamfields.md)>          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateAdsOrganizationResponse)](../../models/operations/createadsorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_repo_organization

Create an organization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createRepoOrganization" method="post" path="/repo/{connection_id}/organization" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.organization.create_repo_organization(repo_organization: Models::Shared::RepoOrganization.new(
  avatar_url: 'https://picsum.photos/seed/fGl6Lb/3157/3173',
  created_at: DateTime.iso8601('2022-07-07T00:18:40.748Z'),
  description: 'Trepide defendo supra testimonium ager.',
  id: 'ef42b40b-e008-470b-b345-9190966fff75',
  name: 'Denesik - Lemke',
  updated_at: DateTime.iso8601('2023-08-13T06:04:51.055Z'),
  web_url: 'https://turbulent-overheard.biz',
), connection_id: '<id>')

unless res.repo_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `repo_organization`                                                                                                                              | [Models::Shared::RepoOrganization](../../models/shared/repoorganization.md)                                                                      | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateRepoOrganizationQueryParamFields](../../models/operations/createrepoorganizationqueryparamfields.md)>        | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateRepoOrganizationResponse)](../../models/operations/createrepoorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_accounting_organization

Retrieve an organization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountingOrganization" method="get" path="/accounting/{connection_id}/organization/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.organization.get_accounting_organization(connection_id: '<id>', id: '<id>')

unless res.accounting_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Organization                                                                                                                           |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAccountingOrganizationQueryParamFields](../../models/operations/getaccountingorganizationqueryparamfields.md)>  | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAccountingOrganizationResponse)](../../models/operations/getaccountingorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_ads_organization

Retrieve an organization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAdsOrganization" method="get" path="/ads/{connection_id}/organization/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.organization.get_ads_organization(connection_id: '<id>', id: '<id>')

unless res.ads_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Organization                                                                                                                           |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetAdsOrganizationQueryParamFields](../../models/operations/getadsorganizationqueryparamfields.md)>                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetAdsOrganizationResponse)](../../models/operations/getadsorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_repo_organization

Retrieve an organization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getRepoOrganization" method="get" path="/repo/{connection_id}/organization/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.organization.get_repo_organization(connection_id: '<id>', id: '<id>')

unless res.repo_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Organization                                                                                                                           |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetRepoOrganizationQueryParamFields](../../models/operations/getrepoorganizationqueryparamfields.md)>              | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetRepoOrganizationResponse)](../../models/operations/getrepoorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_accounting_organizations

List all organizations

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccountingOrganizations" method="get" path="/accounting/{connection_id}/organization" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAccountingOrganizationsRequest.new(
  connection_id: '<id>',
)

res = s.organization.list_accounting_organizations(request: req)

unless res.accounting_organizations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [Models::Operations::ListAccountingOrganizationsRequest](../../models/operations/listaccountingorganizationsrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(Models::Operations::ListAccountingOrganizationsResponse)](../../models/operations/listaccountingorganizationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_ads_organizations

List all organizations

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAdsOrganizations" method="get" path="/ads/{connection_id}/organization" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListAdsOrganizationsRequest.new(
  connection_id: '<id>',
)

res = s.organization.list_ads_organizations(request: req)

unless res.ads_organizations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::ListAdsOrganizationsRequest](../../models/operations/listadsorganizationsrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::ListAdsOrganizationsResponse)](../../models/operations/listadsorganizationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_repo_organizations

List all organizations

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listRepoOrganizations" method="get" path="/repo/{connection_id}/organization" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListRepoOrganizationsRequest.new(
  connection_id: '<id>',
)

res = s.organization.list_repo_organizations(request: req)

unless res.repo_organizations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::ListRepoOrganizationsRequest](../../models/operations/listrepoorganizationsrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::ListRepoOrganizationsResponse)](../../models/operations/listrepoorganizationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_ads_organization

Update an organization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchAdsOrganization" method="patch" path="/ads/{connection_id}/organization/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchAdsOrganizationRequest.new(
  ads_organization: Models::Shared::AdsOrganization.new(
    account_number: 'LQUJx8zQBW',
    created_at: DateTime.iso8601('2020-07-23T21:47:11.440Z'),
    currency: 'USD',
    id: 'f7dfc8ea-504a-4551-8318-5b6de3e6cacb',
    managers: [
      Models::Shared::AdsManager.new(
        id: 'e4fd87df-9f8b-4fa0-a77b-b7d18669e350',
        name: 'Parker, Leannon and Gibson',
      ),
    ],
    name: 'Ankunding Inc',
    status: Models::Shared::AdsOrganizationStatus::PROCESSING,
    timezone: 'Europe/Chisinau',
    updated_at: DateTime.iso8601('2026-02-28T01:05:19.333Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.organization.patch_ads_organization(request: req)

unless res.ads_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [Models::Operations::PatchAdsOrganizationRequest](../../models/operations/patchadsorganizationrequest.md) | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |

### Response

**[T.nilable(Models::Operations::PatchAdsOrganizationResponse)](../../models/operations/patchadsorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_repo_organization

Update an organization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchRepoOrganization" method="patch" path="/repo/{connection_id}/organization/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchRepoOrganizationRequest.new(
  repo_organization: Models::Shared::RepoOrganization.new(
    avatar_url: 'https://picsum.photos/seed/fGl6Lb/3157/3173',
    created_at: DateTime.iso8601('2022-07-07T00:18:40.748Z'),
    description: 'Trepide defendo supra testimonium ager.',
    id: '1cd65209-45da-48b6-a3f5-319fda12f872',
    name: 'Denesik - Lemke',
    updated_at: DateTime.iso8601('2023-08-13T06:04:51.057Z'),
    web_url: 'https://turbulent-overheard.biz',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.organization.patch_repo_organization(request: req)

unless res.repo_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::PatchRepoOrganizationRequest](../../models/operations/patchrepoorganizationrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::PatchRepoOrganizationResponse)](../../models/operations/patchrepoorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_ads_organization

Remove an organization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeAdsOrganization" method="delete" path="/ads/{connection_id}/organization/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.organization.remove_ads_organization(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `connection_id`        | *::String*             | :heavy_check_mark:     | ID of the connection   |
| `id`                   | *::String*             | :heavy_check_mark:     | ID of the Organization |

### Response

**[T.nilable(Models::Operations::RemoveAdsOrganizationResponse)](../../models/operations/removeadsorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_repo_organization

Remove an organization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeRepoOrganization" method="delete" path="/repo/{connection_id}/organization/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.organization.remove_repo_organization(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `connection_id`        | *::String*             | :heavy_check_mark:     | ID of the connection   |
| `id`                   | *::String*             | :heavy_check_mark:     | ID of the Organization |

### Response

**[T.nilable(Models::Operations::RemoveRepoOrganizationResponse)](../../models/operations/removerepoorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_ads_organization

Update an organization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAdsOrganization" method="put" path="/ads/{connection_id}/organization/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateAdsOrganizationRequest.new(
  ads_organization: Models::Shared::AdsOrganization.new(
    account_number: 'LQUJx8zQBW',
    created_at: DateTime.iso8601('2020-07-23T21:47:11.440Z'),
    currency: 'USD',
    id: 'f7dfc8ea-504a-4551-8318-5b6de3e6cacb',
    managers: [
      Models::Shared::AdsManager.new(
        id: 'e4fd87df-9f8b-4fa0-a77b-b7d18669e350',
        name: 'Parker, Leannon and Gibson',
      ),
    ],
    name: 'Ankunding Inc',
    status: Models::Shared::AdsOrganizationStatus::PROCESSING,
    timezone: 'Europe/Chisinau',
    updated_at: DateTime.iso8601('2026-02-28T01:05:19.333Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.organization.update_ads_organization(request: req)

unless res.ads_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::UpdateAdsOrganizationRequest](../../models/operations/updateadsorganizationrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::UpdateAdsOrganizationResponse)](../../models/operations/updateadsorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_repo_organization

Update an organization

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateRepoOrganization" method="put" path="/repo/{connection_id}/organization/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateRepoOrganizationRequest.new(
  repo_organization: Models::Shared::RepoOrganization.new(
    avatar_url: 'https://picsum.photos/seed/fGl6Lb/3157/3173',
    created_at: DateTime.iso8601('2022-07-07T00:18:40.748Z'),
    description: 'Trepide defendo supra testimonium ager.',
    id: '1cd65209-45da-48b6-a3f5-319fda12f872',
    name: 'Denesik - Lemke',
    updated_at: DateTime.iso8601('2023-08-13T06:04:51.057Z'),
    web_url: 'https://turbulent-overheard.biz',
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.organization.update_repo_organization(request: req)

unless res.repo_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [Models::Operations::UpdateRepoOrganizationRequest](../../models/operations/updaterepoorganizationrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(Models::Operations::UpdateRepoOrganizationResponse)](../../models/operations/updaterepoorganizationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |