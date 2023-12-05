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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::CreateAtsCandidateRequest.new(
  connection_id="string",
  ats_candidate=Shared::AtsCandidate.new(
    address=Shared::PropertyAtsCandidateAddress.new(),
    emails=[
      Shared::AtsEmail.new(
        email="Robin_Feeney@hotmail.com",
      ),
    ],
    link_urls=[
      "string",
    ],
    raw=Shared::PropertyAtsCandidateRaw.new(),
    tags=[
      "string",
    ],
    telephones=[
      Shared::AtsTelephone.new(
        telephone="string",
      ),
    ],
  ),
)
    
res = s.candidate.create_ats_candidate(connection_id="string", ats_candidate=Shared::AtsCandidate.new(
    address=Shared::PropertyAtsCandidateAddress.new(),
    emails=[
      Shared::AtsEmail.new(
        email="Delilah.Turner59@hotmail.com",
      ),
    ],
    link_urls=[
      "string",
    ],
    raw=Shared::PropertyAtsCandidateRaw.new(),
    tags=[
      "string",
    ],
    telephones=[
      Shared::AtsTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.ats_candidate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `connection_id`                                             | *String*                                                    | :heavy_check_mark:                                          | ID of the connection                                        |
| `ats_candidate`                                             | [Shared::AtsCandidate](../../models/shared/atscandidate.md) | :heavy_minus_sign:                                          | N/A                                                         |


### Response

**[T.nilable(Operations::CreateAtsCandidateResponse)](../../models/operations/createatscandidateresponse.md)**


## get_ats_candidate

Retrieve a candidate

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetAtsCandidateRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.candidate.get_ats_candidate(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.ats_candidate.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Candidate              |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetAtsCandidateResponse)](../../models/operations/getatscandidateresponse.md)**


## list_ats_candidates

List all candidates

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListAtsCandidatesRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.candidate.list_ats_candidates(req)

if ! res.ats_candidates.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Operations::ListAtsCandidatesRequest](../../models/operations/listatscandidatesrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |


### Response

**[T.nilable(Operations::ListAtsCandidatesResponse)](../../models/operations/listatscandidatesresponse.md)**


## patch_ats_candidate

Update a candidate

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::PatchAtsCandidateRequest.new(
  connection_id="string",
  id="<ID>",
  ats_candidate=Shared::AtsCandidate.new(
    address=Shared::PropertyAtsCandidateAddress.new(),
    emails=[
      Shared::AtsEmail.new(
        email="Tracy.Collins13@gmail.com",
      ),
    ],
    link_urls=[
      "string",
    ],
    raw=Shared::PropertyAtsCandidateRaw.new(),
    tags=[
      "string",
    ],
    telephones=[
      Shared::AtsTelephone.new(
        telephone="string",
      ),
    ],
  ),
)
    
res = s.candidate.patch_ats_candidate(connection_id="string", id="string", ats_candidate=Shared::AtsCandidate.new(
    address=Shared::PropertyAtsCandidateAddress.new(),
    emails=[
      Shared::AtsEmail.new(
        email="Lowell.Boyle@yahoo.com",
      ),
    ],
    link_urls=[
      "string",
    ],
    raw=Shared::PropertyAtsCandidateRaw.new(),
    tags=[
      "string",
    ],
    telephones=[
      Shared::AtsTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.ats_candidate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `connection_id`                                             | *String*                                                    | :heavy_check_mark:                                          | ID of the connection                                        |
| `id`                                                        | *String*                                                    | :heavy_check_mark:                                          | ID of the Candidate                                         |
| `ats_candidate`                                             | [Shared::AtsCandidate](../../models/shared/atscandidate.md) | :heavy_minus_sign:                                          | N/A                                                         |


### Response

**[T.nilable(Operations::PatchAtsCandidateResponse)](../../models/operations/patchatscandidateresponse.md)**


## remove_ats_candidate

Remove a candidate

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::RemoveAtsCandidateRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.candidate.remove_ats_candidate(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Candidate  |


### Response

**[T.nilable(Operations::RemoveAtsCandidateResponse)](../../models/operations/removeatscandidateresponse.md)**


## update_ats_candidate

Update a candidate

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::UpdateAtsCandidateRequest.new(
  connection_id="string",
  id="<ID>",
  ats_candidate=Shared::AtsCandidate.new(
    address=Shared::PropertyAtsCandidateAddress.new(),
    emails=[
      Shared::AtsEmail.new(
        email="Gaetano86@hotmail.com",
      ),
    ],
    link_urls=[
      "string",
    ],
    raw=Shared::PropertyAtsCandidateRaw.new(),
    tags=[
      "string",
    ],
    telephones=[
      Shared::AtsTelephone.new(
        telephone="string",
      ),
    ],
  ),
)
    
res = s.candidate.update_ats_candidate(connection_id="string", id="string", ats_candidate=Shared::AtsCandidate.new(
    address=Shared::PropertyAtsCandidateAddress.new(),
    emails=[
      Shared::AtsEmail.new(
        email="Elnora.Upton@gmail.com",
      ),
    ],
    link_urls=[
      "string",
    ],
    raw=Shared::PropertyAtsCandidateRaw.new(),
    tags=[
      "string",
    ],
    telephones=[
      Shared::AtsTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.ats_candidate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `connection_id`                                             | *String*                                                    | :heavy_check_mark:                                          | ID of the connection                                        |
| `id`                                                        | *String*                                                    | :heavy_check_mark:                                          | ID of the Candidate                                         |
| `ats_candidate`                                             | [Shared::AtsCandidate](../../models/shared/atscandidate.md) | :heavy_minus_sign:                                          | N/A                                                         |


### Response

**[T.nilable(Operations::UpdateAtsCandidateResponse)](../../models/operations/updateatscandidateresponse.md)**

