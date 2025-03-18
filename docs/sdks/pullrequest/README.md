# Pullrequest
(*pullrequest*)

## Overview

### Available Operations

* [create_repo_pullrequest](#create_repo_pullrequest) - Create a pullrequest
* [get_repo_pullrequest](#get_repo_pullrequest) - Retrieve a pullrequest
* [list_repo_pullrequests](#list_repo_pullrequests) - List all pullrequests
* [patch_repo_pullrequest](#patch_repo_pullrequest) - Update a pullrequest
* [remove_repo_pullrequest](#remove_repo_pullrequest) - Remove a pullrequest
* [update_repo_pullrequest](#update_repo_pullrequest) - Update a pullrequest

## create_repo_pullrequest

Create a pullrequest

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.pullrequest.create_repo_pullrequest(repo_pullrequest=::UnifiedRubySDK::Shared::RepoPullrequest.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.repo_pullrequest.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `repo_pullrequest`                                                                  | [::UnifiedRubySDK::Shared::RepoPullrequest](../../models/shared/repopullrequest.md) | :heavy_check_mark:                                                                  | N/A                                                                                 |
| `connection_id`                                                                     | *::String*                                                                          | :heavy_check_mark:                                                                  | ID of the connection                                                                |
| `fields_`                                                                           | T::Array<*::String*>                                                                | :heavy_minus_sign:                                                                  | Comma-delimited fields to return                                                    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateRepoPullrequestResponse)](../../models/operations/createrepopullrequestresponse.md)**



## get_repo_pullrequest

Retrieve a pullrequest

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.pullrequest.get_repo_pullrequest(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.repo_pullrequest.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Pullrequest            |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetRepoPullrequestResponse)](../../models/operations/getrepopullrequestresponse.md)**



## list_repo_pullrequests

List all pullrequests

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListRepoPullrequestsRequest.new(
  connection_id: "<id>",
)

res = s.pullrequest.list_repo_pullrequests(req)

if ! res.repo_pullrequests.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [::UnifiedRubySDK::Operations::ListRepoPullrequestsRequest](../../models/operations/listrepopullrequestsrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListRepoPullrequestsResponse)](../../models/operations/listrepopullrequestsresponse.md)**



## patch_repo_pullrequest

Update a pullrequest

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.pullrequest.patch_repo_pullrequest(repo_pullrequest=::UnifiedRubySDK::Shared::RepoPullrequest.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.repo_pullrequest.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `repo_pullrequest`                                                                  | [::UnifiedRubySDK::Shared::RepoPullrequest](../../models/shared/repopullrequest.md) | :heavy_check_mark:                                                                  | N/A                                                                                 |
| `connection_id`                                                                     | *::String*                                                                          | :heavy_check_mark:                                                                  | ID of the connection                                                                |
| `id`                                                                                | *::String*                                                                          | :heavy_check_mark:                                                                  | ID of the Pullrequest                                                               |
| `fields_`                                                                           | T::Array<*::String*>                                                                | :heavy_minus_sign:                                                                  | Comma-delimited fields to return                                                    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchRepoPullrequestResponse)](../../models/operations/patchrepopullrequestresponse.md)**



## remove_repo_pullrequest

Remove a pullrequest

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.pullrequest.remove_repo_pullrequest(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter             | Type                  | Required              | Description           |
| --------------------- | --------------------- | --------------------- | --------------------- |
| `connection_id`       | *::String*            | :heavy_check_mark:    | ID of the connection  |
| `id`                  | *::String*            | :heavy_check_mark:    | ID of the Pullrequest |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveRepoPullrequestResponse)](../../models/operations/removerepopullrequestresponse.md)**



## update_repo_pullrequest

Update a pullrequest

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.pullrequest.update_repo_pullrequest(repo_pullrequest=::UnifiedRubySDK::Shared::RepoPullrequest.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.repo_pullrequest.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `repo_pullrequest`                                                                  | [::UnifiedRubySDK::Shared::RepoPullrequest](../../models/shared/repopullrequest.md) | :heavy_check_mark:                                                                  | N/A                                                                                 |
| `connection_id`                                                                     | *::String*                                                                          | :heavy_check_mark:                                                                  | ID of the connection                                                                |
| `id`                                                                                | *::String*                                                                          | :heavy_check_mark:                                                                  | ID of the Pullrequest                                                               |
| `fields_`                                                                           | T::Array<*::String*>                                                                | :heavy_minus_sign:                                                                  | Comma-delimited fields to return                                                    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateRepoPullrequestResponse)](../../models/operations/updaterepopullrequestresponse.md)**

