# Candidate


### Available Operations

* [create_ats_candidate](#create_ats_candidate) - Create a candidate
* [get_ats_candidate](#get_ats_candidate) - Retrieve a candidate
* [list_ats_candidates](#list_ats_candidates) - List all candidates
* [patch_ats_candidate](#patch_ats_candidate) - Update a candidate
* [remove_ats_candidate](#remove_ats_candidate) - Remove a candidate
* [update_ats_candidate](#update_ats_candidate) - Update a candidate

## create_ats_candidate

Create a candidate

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.candidate.create_ats_candidate(::UnifiedRubySDK::Operations::CreateAtsCandidateSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", ats_candidate=::UnifiedRubySDK::Shared::AtsCandidate.new())

if ! res.ats_candidate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                        | [::UnifiedRubySDK::Operations::CreateAtsCandidateSecurity](../../models/operations/createatscandidatesecurity.md) | :heavy_check_mark:                                                                                                | The security requirements to use for the request.                                                                 |
| `connection_id`                                                                                                   | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | ID of the connection                                                                                              |
| `ats_candidate`                                                                                                   | [::UnifiedRubySDK::Shared::AtsCandidate](../../models/shared/atscandidate.md)                                     | :heavy_minus_sign:                                                                                                | N/A                                                                                                               |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAtsCandidateResponse)](../../models/operations/createatscandidateresponse.md)**


## get_ats_candidate

Retrieve a candidate

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.candidate.get_ats_candidate(::UnifiedRubySDK::Operations::GetAtsCandidateSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.ats_candidate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                  | [::UnifiedRubySDK::Operations::GetAtsCandidateSecurity](../../models/operations/getatscandidatesecurity.md) | :heavy_check_mark:                                                                                          | The security requirements to use for the request.                                                           |
| `connection_id`                                                                                             | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | ID of the connection                                                                                        |
| `id`                                                                                                        | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | ID of the Candidate                                                                                         |
| `fields_`                                                                                                   | T::Array<*::String*>                                                                                        | :heavy_minus_sign:                                                                                          | Comma-delimited fields to return                                                                            |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAtsCandidateResponse)](../../models/operations/getatscandidateresponse.md)**


## list_ats_candidates

List all candidates

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListAtsCandidatesRequest.new(
  connection_id: "<value>",
)
    
res = s.candidate.list_ats_candidates(req, ::UnifiedRubySDK::Operations::ListAtsCandidatesSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.ats_candidates.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [::UnifiedRubySDK::Operations::ListAtsCandidatesRequest](../../models/operations/listatscandidatesrequest.md)   | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |
| `security`                                                                                                      | [::UnifiedRubySDK::Operations::ListAtsCandidatesSecurity](../../models/operations/listatscandidatessecurity.md) | :heavy_check_mark:                                                                                              | The security requirements to use for the request.                                                               |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAtsCandidatesResponse)](../../models/operations/listatscandidatesresponse.md)**


## patch_ats_candidate

Update a candidate

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.candidate.patch_ats_candidate(::UnifiedRubySDK::Operations::PatchAtsCandidateSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", ats_candidate=::UnifiedRubySDK::Shared::AtsCandidate.new())

if ! res.ats_candidate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                      | [::UnifiedRubySDK::Operations::PatchAtsCandidateSecurity](../../models/operations/patchatscandidatesecurity.md) | :heavy_check_mark:                                                                                              | The security requirements to use for the request.                                                               |
| `connection_id`                                                                                                 | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the connection                                                                                            |
| `id`                                                                                                            | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the Candidate                                                                                             |
| `ats_candidate`                                                                                                 | [::UnifiedRubySDK::Shared::AtsCandidate](../../models/shared/atscandidate.md)                                   | :heavy_minus_sign:                                                                                              | N/A                                                                                                             |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAtsCandidateResponse)](../../models/operations/patchatscandidateresponse.md)**


## remove_ats_candidate

Remove a candidate

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.candidate.remove_ats_candidate(::UnifiedRubySDK::Operations::RemoveAtsCandidateSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                        | [::UnifiedRubySDK::Operations::RemoveAtsCandidateSecurity](../../models/operations/removeatscandidatesecurity.md) | :heavy_check_mark:                                                                                                | The security requirements to use for the request.                                                                 |
| `connection_id`                                                                                                   | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | ID of the connection                                                                                              |
| `id`                                                                                                              | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | ID of the Candidate                                                                                               |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAtsCandidateResponse)](../../models/operations/removeatscandidateresponse.md)**


## update_ats_candidate

Update a candidate

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.candidate.update_ats_candidate(::UnifiedRubySDK::Operations::UpdateAtsCandidateSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", ats_candidate=::UnifiedRubySDK::Shared::AtsCandidate.new())

if ! res.ats_candidate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                        | [::UnifiedRubySDK::Operations::UpdateAtsCandidateSecurity](../../models/operations/updateatscandidatesecurity.md) | :heavy_check_mark:                                                                                                | The security requirements to use for the request.                                                                 |
| `connection_id`                                                                                                   | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | ID of the connection                                                                                              |
| `id`                                                                                                              | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | ID of the Candidate                                                                                               |
| `ats_candidate`                                                                                                   | [::UnifiedRubySDK::Shared::AtsCandidate](../../models/shared/atscandidate.md)                                     | :heavy_minus_sign:                                                                                                | N/A                                                                                                               |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAtsCandidateResponse)](../../models/operations/updateatscandidateresponse.md)**

