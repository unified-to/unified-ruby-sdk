# Scorecard
(*scorecard*)

## Overview

### Available Operations

* [create_ats_scorecard](#create_ats_scorecard) - Create a scorecard
* [get_ats_scorecard](#get_ats_scorecard) - Retrieve a scorecard
* [list_ats_scorecards](#list_ats_scorecards) - List all scorecards
* [patch_ats_scorecard](#patch_ats_scorecard) - Update a scorecard
* [remove_ats_scorecard](#remove_ats_scorecard) - Remove a scorecard
* [update_ats_scorecard](#update_ats_scorecard) - Update a scorecard

## create_ats_scorecard

Create a scorecard

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.scorecard.create_ats_scorecard(ats_scorecard=::UnifiedRubySDK::Shared::AtsScorecard.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.ats_scorecard.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `ats_scorecard`                                                               | [::UnifiedRubySDK::Shared::AtsScorecard](../../models/shared/atsscorecard.md) | :heavy_check_mark:                                                            | N/A                                                                           |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `fields_`                                                                     | T::Array<*::String*>                                                          | :heavy_minus_sign:                                                            | Comma-delimited fields to return                                              |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAtsScorecardResponse)](../../models/operations/createatsscorecardresponse.md)**



## get_ats_scorecard

Retrieve a scorecard

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.scorecard.get_ats_scorecard(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.ats_scorecard.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Scorecard              |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAtsScorecardResponse)](../../models/operations/getatsscorecardresponse.md)**



## list_ats_scorecards

List all scorecards

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = ::UnifiedRubySDK::Operations::ListAtsScorecardsRequest.new(
  connection_id: "<id>",
)

res = s.scorecard.list_ats_scorecards(req)

if ! res.ats_scorecards.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [::UnifiedRubySDK::Operations::ListAtsScorecardsRequest](../../models/operations/listatsscorecardsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAtsScorecardsResponse)](../../models/operations/listatsscorecardsresponse.md)**



## patch_ats_scorecard

Update a scorecard

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.scorecard.patch_ats_scorecard(ats_scorecard=::UnifiedRubySDK::Shared::AtsScorecard.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.ats_scorecard.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `ats_scorecard`                                                               | [::UnifiedRubySDK::Shared::AtsScorecard](../../models/shared/atsscorecard.md) | :heavy_check_mark:                                                            | N/A                                                                           |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `id`                                                                          | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the Scorecard                                                           |
| `fields_`                                                                     | T::Array<*::String*>                                                          | :heavy_minus_sign:                                                            | Comma-delimited fields to return                                              |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAtsScorecardResponse)](../../models/operations/patchatsscorecardresponse.md)**



## remove_ats_scorecard

Remove a scorecard

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.scorecard.remove_ats_scorecard(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Scorecard  |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAtsScorecardResponse)](../../models/operations/removeatsscorecardresponse.md)**



## update_ats_scorecard

Update a scorecard

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.scorecard.update_ats_scorecard(ats_scorecard=::UnifiedRubySDK::Shared::AtsScorecard.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.ats_scorecard.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `ats_scorecard`                                                               | [::UnifiedRubySDK::Shared::AtsScorecard](../../models/shared/atsscorecard.md) | :heavy_check_mark:                                                            | N/A                                                                           |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `id`                                                                          | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the Scorecard                                                           |
| `fields_`                                                                     | T::Array<*::String*>                                                          | :heavy_minus_sign:                                                            | Comma-delimited fields to return                                              |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAtsScorecardResponse)](../../models/operations/updateatsscorecardresponse.md)**

