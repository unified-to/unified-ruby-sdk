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
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.candidate.create_ats_candidate(connection_id="string", ats_candidate=::UnifiedRubySDK::Shared::AtsCandidate.new(
    address: ::UnifiedRubySDK::Shared::PropertyAtsCandidateAddress.new(),
    emails: [
      ::UnifiedRubySDK::Shared::AtsEmail.new(
        email: "Robin_Feeney@hotmail.com",
      ),
    ],
    link_urls: [
      "string",
    ],
    raw: {
      "radian": "string",
    },
    tags: [
      "string",
    ],
    telephones: [
      ::UnifiedRubySDK::Shared::AtsTelephone.new(
        telephone: "string",
      ),
    ],
  ))

if ! res.ats_candidate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `ats_candidate`                                                               | [::UnifiedRubySDK::Shared::AtsCandidate](../../models/shared/atscandidate.md) | :heavy_minus_sign:                                                            | N/A                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAtsCandidateResponse)](../../models/operations/createatscandidateresponse.md)**


## get_ats_candidate

Retrieve a candidate

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.candidate.get_ats_candidate(connection_id="string", id="string", fields_=[
    "string",
  ])

if ! res.ats_candidate.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Candidate              |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAtsCandidateResponse)](../../models/operations/getatscandidateresponse.md)**


## list_ats_candidates

List all candidates

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListAtsCandidatesRequest.new(
  connection_id: "string",
  fields_: [
    "string",
  ],
)
    
res = s.candidate.list_ats_candidates(req)

if ! res.ats_candidates.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [::UnifiedRubySDK::Operations::ListAtsCandidatesRequest](../../models/operations/listatscandidatesrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAtsCandidatesResponse)](../../models/operations/listatscandidatesresponse.md)**


## patch_ats_candidate

Update a candidate

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.candidate.patch_ats_candidate(connection_id="string", id="string", ats_candidate=::UnifiedRubySDK::Shared::AtsCandidate.new(
    address: ::UnifiedRubySDK::Shared::PropertyAtsCandidateAddress.new(),
    emails: [
      ::UnifiedRubySDK::Shared::AtsEmail.new(
        email: "Tracy.Collins13@gmail.com",
      ),
    ],
    link_urls: [
      "string",
    ],
    raw: {
      "Credit": "string",
    },
    tags: [
      "string",
    ],
    telephones: [
      ::UnifiedRubySDK::Shared::AtsTelephone.new(
        telephone: "string",
      ),
    ],
  ))

if ! res.ats_candidate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `id`                                                                          | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the Candidate                                                           |
| `ats_candidate`                                                               | [::UnifiedRubySDK::Shared::AtsCandidate](../../models/shared/atscandidate.md) | :heavy_minus_sign:                                                            | N/A                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAtsCandidateResponse)](../../models/operations/patchatscandidateresponse.md)**


## remove_ats_candidate

Remove a candidate

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.candidate.remove_ats_candidate(connection_id="string", id="string")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Candidate  |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAtsCandidateResponse)](../../models/operations/removeatscandidateresponse.md)**


## update_ats_candidate

Update a candidate

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.candidate.update_ats_candidate(connection_id="string", id="string", ats_candidate=::UnifiedRubySDK::Shared::AtsCandidate.new(
    address: ::UnifiedRubySDK::Shared::PropertyAtsCandidateAddress.new(),
    emails: [
      ::UnifiedRubySDK::Shared::AtsEmail.new(
        email: "Gaetano86@hotmail.com",
      ),
    ],
    link_urls: [
      "string",
    ],
    raw: {
      "B2C": "string",
    },
    tags: [
      "string",
    ],
    telephones: [
      ::UnifiedRubySDK::Shared::AtsTelephone.new(
        telephone: "string",
      ),
    ],
  ))

if ! res.ats_candidate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `id`                                                                          | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the Candidate                                                           |
| `ats_candidate`                                                               | [::UnifiedRubySDK::Shared::AtsCandidate](../../models/shared/atscandidate.md) | :heavy_minus_sign:                                                            | N/A                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAtsCandidateResponse)](../../models/operations/updateatscandidateresponse.md)**

