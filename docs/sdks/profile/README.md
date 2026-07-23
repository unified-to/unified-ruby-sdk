# Profile
(*profile*)

## Overview

### Available Operations

* [create_cdp_profile](#create_cdp_profile) - Create a profile
* [get_cdp_profile](#get_cdp_profile) - Retrieve a profile
* [list_cdp_profiles](#list_cdp_profiles) - List all profiles
* [patch_cdp_profile](#patch_cdp_profile) - Update a profile
* [remove_cdp_profile](#remove_cdp_profile) - Remove a profile
* [update_cdp_profile](#update_cdp_profile) - Update a profile

## create_cdp_profile

Create a profile

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCdpProfile" method="post" path="/cdp/{connection_id}/profile" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.profile.create_cdp_profile(cdp_profile: Models::Shared::CdpProfile.new(), connection_id: '<id>')

unless res.cdp_profile.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `cdp_profile`                                                                                                                                    | [Models::Shared::CdpProfile](../../models/shared/cdpprofile.md)                                                                                  | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCdpProfileQueryParamFields](../../models/operations/createcdpprofilequeryparamfields.md)>                    | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCdpProfileResponse)](../../models/operations/createcdpprofileresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_cdp_profile

Retrieve a profile

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCdpProfile" method="get" path="/cdp/{connection_id}/profile/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.profile.get_cdp_profile(connection_id: '<id>', id: '<id>')

unless res.cdp_profile.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Profile                                                                                                                                |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCdpProfileQueryParamFields](../../models/operations/getcdpprofilequeryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCdpProfileResponse)](../../models/operations/getcdpprofileresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_cdp_profiles

List all profiles

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCdpProfiles" method="get" path="/cdp/{connection_id}/profile" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCdpProfilesRequest.new(
  connection_id: '<id>',
)

res = s.profile.list_cdp_profiles(request: req)

unless res.cdp_profiles.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::ListCdpProfilesRequest](../../models/operations/listcdpprofilesrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::ListCdpProfilesResponse)](../../models/operations/listcdpprofilesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_cdp_profile

Update a profile

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCdpProfile" method="patch" path="/cdp/{connection_id}/profile/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCdpProfileRequest.new(
  cdp_profile: Models::Shared::CdpProfile.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.profile.patch_cdp_profile(request: req)

unless res.cdp_profile.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::PatchCdpProfileRequest](../../models/operations/patchcdpprofilerequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::PatchCdpProfileResponse)](../../models/operations/patchcdpprofileresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_cdp_profile

Remove a profile

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCdpProfile" method="delete" path="/cdp/{connection_id}/profile/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.profile.remove_cdp_profile(connection_id: '<id>', id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Profile    |

### Response

**[T.nilable(Models::Operations::RemoveCdpProfileResponse)](../../models/operations/removecdpprofileresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_cdp_profile

Update a profile

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCdpProfile" method="put" path="/cdp/{connection_id}/profile/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCdpProfileRequest.new(
  cdp_profile: Models::Shared::CdpProfile.new(),
  connection_id: '<id>',
  id: '<id>',
)

res = s.profile.update_cdp_profile(request: req)

unless res.cdp_profile.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::UpdateCdpProfileRequest](../../models/operations/updatecdpprofilerequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::UpdateCdpProfileResponse)](../../models/operations/updatecdpprofileresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |