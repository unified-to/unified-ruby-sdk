# User
(*user*)

## Overview

### Available Operations

* [create_scim_users](#create_scim_users) - Create user
* [get_scim_users](#get_scim_users) - Get user
* [list_scim_users](#list_scim_users) - List users
* [patch_scim_users](#patch_scim_users) - Update user
* [remove_scim_users](#remove_scim_users) - Delete user
* [update_scim_users](#update_scim_users) - Update user

## create_scim_users

Create user

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createScimUsers" method="post" path="/scim/{connection_id}/users" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::CreateScimUsersRequest.new(
  scim_user: Models::Shared::ScimUser.new(),
  connection_id: '<id>',
)

res = s.user.create_scim_users(request: req)

unless res.scim_user.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::CreateScimUsersRequest](../../models/operations/createscimusersrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::CreateScimUsersResponse)](../../models/operations/createscimusersresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_scim_users

Get user

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getScimUsers" method="get" path="/scim/{connection_id}/users/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.user.get_scim_users(connection_id: '<id>', id: '<id>')

unless res.scim_user.nil?
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the User       |

### Response

**[T.nilable(Models::Operations::GetScimUsersResponse)](../../models/operations/getscimusersresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_scim_users

List users

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listScimUsers" method="get" path="/scim/{connection_id}/users" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListScimUsersRequest.new(
  connection_id: '<id>',
)

res = s.user.list_scim_users(request: req)

unless res.scim_users.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::ListScimUsersRequest](../../models/operations/listscimusersrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::ListScimUsersResponse)](../../models/operations/listscimusersresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_scim_users

Update user

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchScimUsers" method="patch" path="/scim/{connection_id}/users/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.user.patch_scim_users(scim_user: Models::Shared::ScimUser.new(), connection_id: '<id>', id: '<id>')

unless res.scim_user.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `scim_user`                                                 | [Models::Shared::ScimUser](../../models/shared/scimuser.md) | :heavy_check_mark:                                          | N/A                                                         |
| `connection_id`                                             | *::String*                                                  | :heavy_check_mark:                                          | ID of the connection                                        |
| `id`                                                        | *::String*                                                  | :heavy_check_mark:                                          | ID of the User                                              |

### Response

**[T.nilable(Models::Operations::PatchScimUsersResponse)](../../models/operations/patchscimusersresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_scim_users

Delete user

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeScimUsers" method="delete" path="/scim/{connection_id}/users/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.user.remove_scim_users(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the User       |

### Response

**[T.nilable(Models::Operations::RemoveScimUsersResponse)](../../models/operations/removescimusersresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_scim_users

Update user

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateScimUsers" method="put" path="/scim/{connection_id}/users/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.user.update_scim_users(scim_user: Models::Shared::ScimUser.new(), connection_id: '<id>', id: '<id>')

unless res.scim_user.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `scim_user`                                                 | [Models::Shared::ScimUser](../../models/shared/scimuser.md) | :heavy_check_mark:                                          | N/A                                                         |
| `connection_id`                                             | *::String*                                                  | :heavy_check_mark:                                          | ID of the connection                                        |
| `id`                                                        | *::String*                                                  | :heavy_check_mark:                                          | ID of the User                                              |

### Response

**[T.nilable(Models::Operations::UpdateScimUsersResponse)](../../models/operations/updatescimusersresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |