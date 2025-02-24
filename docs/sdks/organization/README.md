# Organization
(*organization*)

## Overview

### Available Operations

* [create_repo_organization](#create_repo_organization) - Create an organization
* [get_accounting_organization](#get_accounting_organization) - Retrieve an organization
* [get_repo_organization](#get_repo_organization) - Retrieve an organization
* [list_accounting_organizations](#list_accounting_organizations) - List all organizations
* [list_repo_organizations](#list_repo_organizations) - List all organizations
* [patch_repo_organization](#patch_repo_organization) - Update an organization
* [remove_repo_organization](#remove_repo_organization) - Remove an organization
* [update_repo_organization](#update_repo_organization) - Update an organization

## create_repo_organization

Create an organization

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.organization.create_repo_organization(repo_organization=::UnifiedRubySDK::Shared::RepoOrganization.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.repo_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `repo_organization`                                                                   | [::UnifiedRubySDK::Shared::RepoOrganization](../../models/shared/repoorganization.md) | :heavy_check_mark:                                                                    | N/A                                                                                   |
| `connection_id`                                                                       | *::String*                                                                            | :heavy_check_mark:                                                                    | ID of the connection                                                                  |
| `fields_`                                                                             | T::Array<*::String*>                                                                  | :heavy_minus_sign:                                                                    | Comma-delimited fields to return                                                      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateRepoOrganizationResponse)](../../models/operations/createrepoorganizationresponse.md)**



## get_accounting_organization

Retrieve an organization

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.organization.get_accounting_organization(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Organization           |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingOrganizationResponse)](../../models/operations/getaccountingorganizationresponse.md)**



## get_repo_organization

Retrieve an organization

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.organization.get_repo_organization(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.repo_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Organization           |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetRepoOrganizationResponse)](../../models/operations/getrepoorganizationresponse.md)**



## list_accounting_organizations

List all organizations

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListAccountingOrganizationsRequest.new(
  connection_id: "<id>",
)
    
res = s.organization.list_accounting_organizations(req)

if ! res.accounting_organizations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                         | Type                                                                                                                              | Required                                                                                                                          | Description                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                         | [::UnifiedRubySDK::Operations::ListAccountingOrganizationsRequest](../../models/operations/listaccountingorganizationsrequest.md) | :heavy_check_mark:                                                                                                                | The request object to use for the request.                                                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingOrganizationsResponse)](../../models/operations/listaccountingorganizationsresponse.md)**



## list_repo_organizations

List all organizations

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListRepoOrganizationsRequest.new(
  connection_id: "<id>",
)
    
res = s.organization.list_repo_organizations(req)

if ! res.repo_organizations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [::UnifiedRubySDK::Operations::ListRepoOrganizationsRequest](../../models/operations/listrepoorganizationsrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListRepoOrganizationsResponse)](../../models/operations/listrepoorganizationsresponse.md)**



## patch_repo_organization

Update an organization

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.organization.patch_repo_organization(repo_organization=::UnifiedRubySDK::Shared::RepoOrganization.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.repo_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `repo_organization`                                                                   | [::UnifiedRubySDK::Shared::RepoOrganization](../../models/shared/repoorganization.md) | :heavy_check_mark:                                                                    | N/A                                                                                   |
| `connection_id`                                                                       | *::String*                                                                            | :heavy_check_mark:                                                                    | ID of the connection                                                                  |
| `id`                                                                                  | *::String*                                                                            | :heavy_check_mark:                                                                    | ID of the Organization                                                                |
| `fields_`                                                                             | T::Array<*::String*>                                                                  | :heavy_minus_sign:                                                                    | Comma-delimited fields to return                                                      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchRepoOrganizationResponse)](../../models/operations/patchrepoorganizationresponse.md)**



## remove_repo_organization

Remove an organization

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.organization.remove_repo_organization(connection_id="<id>", id="<id>")

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

**[T.nilable(::UnifiedRubySDK::Operations::RemoveRepoOrganizationResponse)](../../models/operations/removerepoorganizationresponse.md)**



## update_repo_organization

Update an organization

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.organization.update_repo_organization(repo_organization=::UnifiedRubySDK::Shared::RepoOrganization.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.repo_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `repo_organization`                                                                   | [::UnifiedRubySDK::Shared::RepoOrganization](../../models/shared/repoorganization.md) | :heavy_check_mark:                                                                    | N/A                                                                                   |
| `connection_id`                                                                       | *::String*                                                                            | :heavy_check_mark:                                                                    | ID of the connection                                                                  |
| `id`                                                                                  | *::String*                                                                            | :heavy_check_mark:                                                                    | ID of the Organization                                                                |
| `fields_`                                                                             | T::Array<*::String*>                                                                  | :heavy_minus_sign:                                                                    | Comma-delimited fields to return                                                      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateRepoOrganizationResponse)](../../models/operations/updaterepoorganizationresponse.md)**

