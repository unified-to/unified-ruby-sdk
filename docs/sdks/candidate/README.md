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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::CreateAtsCandidateRequest.new(
  path_params=Operations::CreateAtsCandidateRequest.new(
    connection_id="string",
    ats_candidate=Shared::AtsCandidate.new(
      address=Shared::PropertyAtsCandidateAddress.new(
        address1="string",
        address2="string",
        city="South Hill",
        country="Denmark",
        country_code="KM",
        postal_code="72991-5163",
        region="string",
        region_code="string",
      ),
      company_name="Pollich - Lubowitz",
      created_at=DateTime.iso8601('2021-03-05T23:23:31.487Z'),
      emails=.new[
        Shared::AtsEmail.new(
          email="Ransom.OReilly99@yahoo.com",
          type=Shared::AtsEmailType::WORK,
        ),
      ],
      external_id="string",
      id="<ID>",
      image_url="string",
      name="string",
      raw=Shared::PropertyAtsCandidateRaw.new(),
      tags=.new[
        "string",
      ],
      telephones=.new[
        Shared::AtsTelephone.new(
          telephone="string",
          type=Shared::AtsTelephoneType::HOME,
        ),
      ],
      title="string",
      updated_at=DateTime.iso8601('2021-04-28T19:23:34.234Z'),
    ),
  ),
  ats_candidate=Shared::AtsCandidate.new(
    address=Shared::PropertyAtsCandidateAddress.new(
      address1="string",
      address2="string",
      city="Briannecester",
      country="Netherlands",
      country_code="FM",
      postal_code="97860-6377",
      region="string",
      region_code="string",
    ),
    company_name="Emmerich, Jenkins and Ritchie",
    created_at=DateTime.iso8601('2022-11-16T10:57:27.810Z'),
    emails=.new[
      Shared::AtsEmail.new(
        email="Buford.Littel17@gmail.com",
        type=Shared::AtsEmailType::WORK,
      ),
    ],
    external_id="string",
    id="<ID>",
    image_url="string",
    name="string",
    raw=Shared::PropertyAtsCandidateRaw.new(),
    tags=.new[
      "string",
    ],
    telephones=.new[
      Shared::AtsTelephone.new(
        telephone="string",
        type=Shared::AtsTelephoneType::MOBILE,
      ),
    ],
    title="string",
    updated_at=DateTime.iso8601('2022-02-24T07:57:03.296Z'),
  ),
)
    
res = s.candidate.create_ats_candidate(req)

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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::GetAtsCandidateRequest.new(
  path_params=Operations::GetAtsCandidateRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetAtsCandidateRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.candidate.get_ats_candidate(req)

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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::ListAtsCandidatesRequest.new(
  path_params=Operations::ListAtsCandidatesRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=6384.09,
    offset=7452.94,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-03-17T23:18:31.102Z'),
  ),
  query_params=Operations::ListAtsCandidatesRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=8843.15,
    offset=1095.92,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2023-07-26T12:49:16.334Z'),
  ),
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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::PatchAtsCandidateRequest.new(
  path_params=Operations::PatchAtsCandidateRequest.new(
    connection_id="string",
    id="<ID>",
    ats_candidate=Shared::AtsCandidate.new(
      address=Shared::PropertyAtsCandidateAddress.new(
        address1="string",
        address2="string",
        city="Fort Bridget",
        country="Sri Lanka",
        country_code="GI",
        postal_code="46054",
        region="string",
        region_code="string",
      ),
      company_name="Donnelly - Bartell",
      created_at=DateTime.iso8601('2023-01-06T12:13:20.908Z'),
      emails=.new[
        Shared::AtsEmail.new(
          email="Elissa62@yahoo.com",
          type=Shared::AtsEmailType::HOME,
        ),
      ],
      external_id="string",
      id="<ID>",
      image_url="string",
      name="string",
      raw=Shared::PropertyAtsCandidateRaw.new(),
      tags=.new[
        "string",
      ],
      telephones=.new[
        Shared::AtsTelephone.new(
          telephone="string",
          type=Shared::AtsTelephoneType::MOBILE,
        ),
      ],
      title="string",
      updated_at=DateTime.iso8601('2023-05-16T09:51:54.867Z'),
    ),
  ),
  ats_candidate=Shared::AtsCandidate.new(
    address=Shared::PropertyAtsCandidateAddress.new(
      address1="string",
      address2="string",
      city="North Alishashire",
      country="Svalbard & Jan Mayen Islands",
      country_code="NU",
      postal_code="32867-4562",
      region="string",
      region_code="string",
    ),
    company_name="Fadel - Crooks",
    created_at=DateTime.iso8601('2021-05-28T18:26:32.684Z'),
    emails=.new[
      Shared::AtsEmail.new(
        email="Hipolito.Jast@hotmail.com",
        type=Shared::AtsEmailType::OTHER,
      ),
    ],
    external_id="string",
    id="<ID>",
    image_url="string",
    name="string",
    raw=Shared::PropertyAtsCandidateRaw.new(),
    tags=.new[
      "string",
    ],
    telephones=.new[
      Shared::AtsTelephone.new(
        telephone="string",
        type=Shared::AtsTelephoneType::WORK,
      ),
    ],
    title="string",
    updated_at=DateTime.iso8601('2022-03-04T02:12:11.620Z'),
  ),
)
    
res = s.candidate.patch_ats_candidate(req)

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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::RemoveAtsCandidateRequest.new(
  path_params=Operations::RemoveAtsCandidateRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.candidate.remove_ats_candidate(req)

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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::UpdateAtsCandidateRequest.new(
  path_params=Operations::UpdateAtsCandidateRequest.new(
    connection_id="string",
    id="<ID>",
    ats_candidate=Shared::AtsCandidate.new(
      address=Shared::PropertyAtsCandidateAddress.new(
        address1="string",
        address2="string",
        city="Hintzborough",
        country="Afghanistan",
        country_code="TF",
        postal_code="39423",
        region="string",
        region_code="string",
      ),
      company_name="O'Reilly Inc",
      created_at=DateTime.iso8601('2022-08-30T14:37:21.726Z'),
      emails=.new[
        Shared::AtsEmail.new(
          email="Cary37@yahoo.com",
          type=Shared::AtsEmailType::OTHER,
        ),
      ],
      external_id="string",
      id="<ID>",
      image_url="string",
      name="string",
      raw=Shared::PropertyAtsCandidateRaw.new(),
      tags=.new[
        "string",
      ],
      telephones=.new[
        Shared::AtsTelephone.new(
          telephone="string",
          type=Shared::AtsTelephoneType::FAX,
        ),
      ],
      title="string",
      updated_at=DateTime.iso8601('2021-10-06T04:58:31.702Z'),
    ),
  ),
  ats_candidate=Shared::AtsCandidate.new(
    address=Shared::PropertyAtsCandidateAddress.new(
      address1="string",
      address2="string",
      city="Trantowberg",
      country="Gambia",
      country_code="TH",
      postal_code="72938-6296",
      region="string",
      region_code="string",
    ),
    company_name="Hand Group",
    created_at=DateTime.iso8601('2023-02-23T23:00:09.780Z'),
    emails=.new[
      Shared::AtsEmail.new(
        email="Nicole94@yahoo.com",
        type=Shared::AtsEmailType::OTHER,
      ),
    ],
    external_id="string",
    id="<ID>",
    image_url="string",
    name="string",
    raw=Shared::PropertyAtsCandidateRaw.new(),
    tags=.new[
      "string",
    ],
    telephones=.new[
      Shared::AtsTelephone.new(
        telephone="string",
        type=Shared::AtsTelephoneType::FAX,
      ),
    ],
    title="string",
    updated_at=DateTime.iso8601('2021-09-09T00:24:35.473Z'),
  ),
)
    
res = s.candidate.update_ats_candidate(req)

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

