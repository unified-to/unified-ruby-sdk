# Ats


### Available Operations

* [create_ats_application](#create_ats_application) - Create an application
* [create_ats_candidate](#create_ats_candidate) - Create a candidate
* [create_ats_document](#create_ats_document) - Create a document
* [create_ats_interview](#create_ats_interview) - Create a interview
* [create_ats_job](#create_ats_job) - Create a job
* [create_ats_scorecard](#create_ats_scorecard) - Create a scorecard
* [get_ats_application](#get_ats_application) - Retrieve an application
* [get_ats_candidate](#get_ats_candidate) - Retrieve a candidate
* [get_ats_document](#get_ats_document) - Retrieve a document
* [get_ats_interview](#get_ats_interview) - Retrieve a interview
* [get_ats_job](#get_ats_job) - Retrieve a job
* [get_ats_scorecard](#get_ats_scorecard) - Retrieve a scorecard
* [list_ats_applications](#list_ats_applications) - List all applications
* [list_ats_candidates](#list_ats_candidates) - List all candidates
* [list_ats_documents](#list_ats_documents) - List all documents
* [list_ats_interviews](#list_ats_interviews) - List all interviews
* [list_ats_jobs](#list_ats_jobs) - List all jobs
* [list_ats_scorecards](#list_ats_scorecards) - List all scorecards
* [patch_ats_application](#patch_ats_application) - Update an application
* [patch_ats_candidate](#patch_ats_candidate) - Update a candidate
* [patch_ats_document](#patch_ats_document) - Update a document
* [patch_ats_interview](#patch_ats_interview) - Update a interview
* [patch_ats_job](#patch_ats_job) - Update a job
* [patch_ats_scorecard](#patch_ats_scorecard) - Update a scorecard
* [remove_ats_application](#remove_ats_application) - Remove an application
* [remove_ats_candidate](#remove_ats_candidate) - Remove a candidate
* [remove_ats_document](#remove_ats_document) - Remove a document
* [remove_ats_interview](#remove_ats_interview) - Remove a interview
* [remove_ats_job](#remove_ats_job) - Remove a job
* [remove_ats_scorecard](#remove_ats_scorecard) - Remove a scorecard
* [update_ats_application](#update_ats_application) - Update an application
* [update_ats_candidate](#update_ats_candidate) - Update a candidate
* [update_ats_document](#update_ats_document) - Update a document
* [update_ats_interview](#update_ats_interview) - Update a interview
* [update_ats_job](#update_ats_job) - Update a job
* [update_ats_scorecard](#update_ats_scorecard) - Update a scorecard

## create_ats_application

Create an application

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::CreateAtsApplicationRequest.new(
  connection_id="string",
  ats_application=Shared::AtsApplication.new(
    raw=Shared::PropertyAtsApplicationRaw.new(),
  ),
)
    
res = s.ats.create_ats_application(connection_id="string", ats_application=Shared::AtsApplication.new(
    raw=Shared::PropertyAtsApplicationRaw.new(),
  ))

if ! res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `connection_id`                                                 | *String*                                                        | :heavy_check_mark:                                              | ID of the connection                                            |
| `ats_application`                                               | [Shared::AtsApplication](../../models/shared/atsapplication.md) | :heavy_minus_sign:                                              | N/A                                                             |


### Response

**[T.nilable(Operations::CreateAtsApplicationResponse)](../../models/operations/createatsapplicationresponse.md)**


## create_ats_candidate

Create a candidate

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
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
    
res = s.ats.create_ats_candidate(connection_id="string", ats_candidate=Shared::AtsCandidate.new(
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


## create_ats_document

Create a document

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::CreateAtsDocumentRequest.new(
  connection_id="string",
  ats_document=Shared::AtsDocument.new(
    raw=Shared::PropertyAtsDocumentRaw.new(),
  ),
)
    
res = s.ats.create_ats_document(connection_id="string", ats_document=Shared::AtsDocument.new(
    raw=Shared::PropertyAtsDocumentRaw.new(),
  ))

if ! res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                 | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `connection_id`                                           | *String*                                                  | :heavy_check_mark:                                        | ID of the connection                                      |
| `ats_document`                                            | [Shared::AtsDocument](../../models/shared/atsdocument.md) | :heavy_minus_sign:                                        | N/A                                                       |


### Response

**[T.nilable(Operations::CreateAtsDocumentResponse)](../../models/operations/createatsdocumentresponse.md)**


## create_ats_interview

Create a interview

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::CreateAtsInterviewRequest.new(
  connection_id="string",
  ats_interview=Shared::AtsInterview.new(
    raw=Shared::PropertyAtsInterviewRaw.new(),
    user_ids=[
      "string",
    ],
  ),
)
    
res = s.ats.create_ats_interview(connection_id="string", ats_interview=Shared::AtsInterview.new(
    raw=Shared::PropertyAtsInterviewRaw.new(),
    user_ids=[
      "string",
    ],
  ))

if ! res.ats_interview.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `connection_id`                                             | *String*                                                    | :heavy_check_mark:                                          | ID of the connection                                        |
| `ats_interview`                                             | [Shared::AtsInterview](../../models/shared/atsinterview.md) | :heavy_minus_sign:                                          | N/A                                                         |


### Response

**[T.nilable(Operations::CreateAtsInterviewResponse)](../../models/operations/createatsinterviewresponse.md)**


## create_ats_job

Create a job

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::CreateAtsJobRequest.new(
  connection_id="string",
  ats_job=Shared::AtsJob.new(
    addresses=[
      Shared::AtsAddress.new(),
    ],
    compensation=[
      Shared::AtsCompensation.new(
        type=Shared::AtsCompensationType::SALARY,
      ),
    ],
    departments=[
      "string",
    ],
    hiring_manager_ids=[
      "string",
    ],
    public_job_urls=[
      "string",
    ],
    raw=Shared::PropertyAtsJobRaw.new(),
    recruiter_ids=[
      "string",
    ],
  ),
)
    
res = s.ats.create_ats_job(connection_id="string", ats_job=Shared::AtsJob.new(
    addresses=[
      Shared::AtsAddress.new(),
    ],
    compensation=[
      Shared::AtsCompensation.new(
        type=Shared::AtsCompensationType::STOCK_OPTIONS,
      ),
    ],
    departments=[
      "string",
    ],
    hiring_manager_ids=[
      "string",
    ],
    public_job_urls=[
      "string",
    ],
    raw=Shared::PropertyAtsJobRaw.new(),
    recruiter_ids=[
      "string",
    ],
  ))

if ! res.ats_job.nil?
  # handle response
end

```

### Parameters

| Parameter                                       | Type                                            | Required                                        | Description                                     |
| ----------------------------------------------- | ----------------------------------------------- | ----------------------------------------------- | ----------------------------------------------- |
| `connection_id`                                 | *String*                                        | :heavy_check_mark:                              | ID of the connection                            |
| `ats_job`                                       | [Shared::AtsJob](../../models/shared/atsjob.md) | :heavy_minus_sign:                              | N/A                                             |


### Response

**[T.nilable(Operations::CreateAtsJobResponse)](../../models/operations/createatsjobresponse.md)**


## create_ats_scorecard

Create a scorecard

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::CreateAtsScorecardRequest.new(
  connection_id="string",
  ats_scorecard=Shared::AtsScorecard.new(
    raw=Shared::PropertyAtsScorecardRaw.new(),
  ),
)
    
res = s.ats.create_ats_scorecard(connection_id="string", ats_scorecard=Shared::AtsScorecard.new(
    raw=Shared::PropertyAtsScorecardRaw.new(),
  ))

if ! res.ats_scorecard.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `connection_id`                                             | *String*                                                    | :heavy_check_mark:                                          | ID of the connection                                        |
| `ats_scorecard`                                             | [Shared::AtsScorecard](../../models/shared/atsscorecard.md) | :heavy_minus_sign:                                          | N/A                                                         |


### Response

**[T.nilable(Operations::CreateAtsScorecardResponse)](../../models/operations/createatsscorecardresponse.md)**


## get_ats_application

Retrieve an application

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetAtsApplicationRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.ats.get_ats_application(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Application            |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetAtsApplicationResponse)](../../models/operations/getatsapplicationresponse.md)**


## get_ats_candidate

Retrieve a candidate

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
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
    
res = s.ats.get_ats_candidate(connection_id="string", id="string", fields=[
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


## get_ats_document

Retrieve a document

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetAtsDocumentRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.ats.get_ats_document(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Document               |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetAtsDocumentResponse)](../../models/operations/getatsdocumentresponse.md)**


## get_ats_interview

Retrieve a interview

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetAtsInterviewRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.ats.get_ats_interview(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.ats_interview.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Interview              |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetAtsInterviewResponse)](../../models/operations/getatsinterviewresponse.md)**


## get_ats_job

Retrieve a job

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetAtsJobRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.ats.get_ats_job(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.ats_job.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Job                    |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetAtsJobResponse)](../../models/operations/getatsjobresponse.md)**


## get_ats_scorecard

Retrieve a scorecard

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetAtsScorecardRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.ats.get_ats_scorecard(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.ats_scorecard.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Scorecard              |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetAtsScorecardResponse)](../../models/operations/getatsscorecardresponse.md)**


## list_ats_applications

List all applications

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListAtsApplicationsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.ats.list_ats_applications(req)

if ! res.ats_applications.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Operations::ListAtsApplicationsRequest](../../models/operations/listatsapplicationsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |


### Response

**[T.nilable(Operations::ListAtsApplicationsResponse)](../../models/operations/listatsapplicationsresponse.md)**


## list_ats_candidates

List all candidates

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
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
    
res = s.ats.list_ats_candidates(req)

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


## list_ats_documents

List all documents

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListAtsDocumentsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.ats.list_ats_documents(req)

if ! res.ats_documents.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Operations::ListAtsDocumentsRequest](../../models/operations/listatsdocumentsrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |


### Response

**[T.nilable(Operations::ListAtsDocumentsResponse)](../../models/operations/listatsdocumentsresponse.md)**


## list_ats_interviews

List all interviews

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListAtsInterviewsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.ats.list_ats_interviews(req)

if ! res.ats_interviews.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Operations::ListAtsInterviewsRequest](../../models/operations/listatsinterviewsrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |


### Response

**[T.nilable(Operations::ListAtsInterviewsResponse)](../../models/operations/listatsinterviewsresponse.md)**


## list_ats_jobs

List all jobs

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListAtsJobsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.ats.list_ats_jobs(req)

if ! res.ats_jobs.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                       | Type                                                                            | Required                                                                        | Description                                                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| `request`                                                                       | [Operations::ListAtsJobsRequest](../../models/operations/listatsjobsrequest.md) | :heavy_check_mark:                                                              | The request object to use for the request.                                      |


### Response

**[T.nilable(Operations::ListAtsJobsResponse)](../../models/operations/listatsjobsresponse.md)**


## list_ats_scorecards

List all scorecards

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListAtsScorecardsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.ats.list_ats_scorecards(req)

if ! res.ats_scorecards.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Operations::ListAtsScorecardsRequest](../../models/operations/listatsscorecardsrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |


### Response

**[T.nilable(Operations::ListAtsScorecardsResponse)](../../models/operations/listatsscorecardsresponse.md)**


## patch_ats_application

Update an application

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::PatchAtsApplicationRequest.new(
  connection_id="string",
  id="<ID>",
  ats_application=Shared::AtsApplication.new(
    raw=Shared::PropertyAtsApplicationRaw.new(),
  ),
)
    
res = s.ats.patch_ats_application(connection_id="string", id="string", ats_application=Shared::AtsApplication.new(
    raw=Shared::PropertyAtsApplicationRaw.new(),
  ))

if ! res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `connection_id`                                                 | *String*                                                        | :heavy_check_mark:                                              | ID of the connection                                            |
| `id`                                                            | *String*                                                        | :heavy_check_mark:                                              | ID of the Application                                           |
| `ats_application`                                               | [Shared::AtsApplication](../../models/shared/atsapplication.md) | :heavy_minus_sign:                                              | N/A                                                             |


### Response

**[T.nilable(Operations::PatchAtsApplicationResponse)](../../models/operations/patchatsapplicationresponse.md)**


## patch_ats_candidate

Update a candidate

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
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
    
res = s.ats.patch_ats_candidate(connection_id="string", id="string", ats_candidate=Shared::AtsCandidate.new(
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


## patch_ats_document

Update a document

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::PatchAtsDocumentRequest.new(
  connection_id="string",
  id="<ID>",
  ats_document=Shared::AtsDocument.new(
    raw=Shared::PropertyAtsDocumentRaw.new(),
  ),
)
    
res = s.ats.patch_ats_document(connection_id="string", id="string", ats_document=Shared::AtsDocument.new(
    raw=Shared::PropertyAtsDocumentRaw.new(),
  ))

if ! res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                 | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `connection_id`                                           | *String*                                                  | :heavy_check_mark:                                        | ID of the connection                                      |
| `id`                                                      | *String*                                                  | :heavy_check_mark:                                        | ID of the Document                                        |
| `ats_document`                                            | [Shared::AtsDocument](../../models/shared/atsdocument.md) | :heavy_minus_sign:                                        | N/A                                                       |


### Response

**[T.nilable(Operations::PatchAtsDocumentResponse)](../../models/operations/patchatsdocumentresponse.md)**


## patch_ats_interview

Update a interview

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::PatchAtsInterviewRequest.new(
  connection_id="string",
  id="<ID>",
  ats_interview=Shared::AtsInterview.new(
    raw=Shared::PropertyAtsInterviewRaw.new(),
    user_ids=[
      "string",
    ],
  ),
)
    
res = s.ats.patch_ats_interview(connection_id="string", id="string", ats_interview=Shared::AtsInterview.new(
    raw=Shared::PropertyAtsInterviewRaw.new(),
    user_ids=[
      "string",
    ],
  ))

if ! res.ats_interview.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `connection_id`                                             | *String*                                                    | :heavy_check_mark:                                          | ID of the connection                                        |
| `id`                                                        | *String*                                                    | :heavy_check_mark:                                          | ID of the Interview                                         |
| `ats_interview`                                             | [Shared::AtsInterview](../../models/shared/atsinterview.md) | :heavy_minus_sign:                                          | N/A                                                         |


### Response

**[T.nilable(Operations::PatchAtsInterviewResponse)](../../models/operations/patchatsinterviewresponse.md)**


## patch_ats_job

Update a job

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::PatchAtsJobRequest.new(
  connection_id="string",
  id="<ID>",
  ats_job=Shared::AtsJob.new(
    addresses=[
      Shared::AtsAddress.new(),
    ],
    compensation=[
      Shared::AtsCompensation.new(
        type=Shared::AtsCompensationType::BONUS,
      ),
    ],
    departments=[
      "string",
    ],
    hiring_manager_ids=[
      "string",
    ],
    public_job_urls=[
      "string",
    ],
    raw=Shared::PropertyAtsJobRaw.new(),
    recruiter_ids=[
      "string",
    ],
  ),
)
    
res = s.ats.patch_ats_job(connection_id="string", id="string", ats_job=Shared::AtsJob.new(
    addresses=[
      Shared::AtsAddress.new(),
    ],
    compensation=[
      Shared::AtsCompensation.new(
        type=Shared::AtsCompensationType::SALARY,
      ),
    ],
    departments=[
      "string",
    ],
    hiring_manager_ids=[
      "string",
    ],
    public_job_urls=[
      "string",
    ],
    raw=Shared::PropertyAtsJobRaw.new(),
    recruiter_ids=[
      "string",
    ],
  ))

if ! res.ats_job.nil?
  # handle response
end

```

### Parameters

| Parameter                                       | Type                                            | Required                                        | Description                                     |
| ----------------------------------------------- | ----------------------------------------------- | ----------------------------------------------- | ----------------------------------------------- |
| `connection_id`                                 | *String*                                        | :heavy_check_mark:                              | ID of the connection                            |
| `id`                                            | *String*                                        | :heavy_check_mark:                              | ID of the Job                                   |
| `ats_job`                                       | [Shared::AtsJob](../../models/shared/atsjob.md) | :heavy_minus_sign:                              | N/A                                             |


### Response

**[T.nilable(Operations::PatchAtsJobResponse)](../../models/operations/patchatsjobresponse.md)**


## patch_ats_scorecard

Update a scorecard

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::PatchAtsScorecardRequest.new(
  connection_id="string",
  id="<ID>",
  ats_scorecard=Shared::AtsScorecard.new(
    raw=Shared::PropertyAtsScorecardRaw.new(),
  ),
)
    
res = s.ats.patch_ats_scorecard(connection_id="string", id="string", ats_scorecard=Shared::AtsScorecard.new(
    raw=Shared::PropertyAtsScorecardRaw.new(),
  ))

if ! res.ats_scorecard.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `connection_id`                                             | *String*                                                    | :heavy_check_mark:                                          | ID of the connection                                        |
| `id`                                                        | *String*                                                    | :heavy_check_mark:                                          | ID of the Scorecard                                         |
| `ats_scorecard`                                             | [Shared::AtsScorecard](../../models/shared/atsscorecard.md) | :heavy_minus_sign:                                          | N/A                                                         |


### Response

**[T.nilable(Operations::PatchAtsScorecardResponse)](../../models/operations/patchatsscorecardresponse.md)**


## remove_ats_application

Remove an application

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::RemoveAtsApplicationRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.ats.remove_ats_application(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter             | Type                  | Required              | Description           |
| --------------------- | --------------------- | --------------------- | --------------------- |
| `connection_id`       | *String*              | :heavy_check_mark:    | ID of the connection  |
| `id`                  | *String*              | :heavy_check_mark:    | ID of the Application |


### Response

**[T.nilable(Operations::RemoveAtsApplicationResponse)](../../models/operations/removeatsapplicationresponse.md)**


## remove_ats_candidate

Remove a candidate

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::RemoveAtsCandidateRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.ats.remove_ats_candidate(connection_id="string", id="string")

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


## remove_ats_document

Remove a document

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::RemoveAtsDocumentRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.ats.remove_ats_document(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Document   |


### Response

**[T.nilable(Operations::RemoveAtsDocumentResponse)](../../models/operations/removeatsdocumentresponse.md)**


## remove_ats_interview

Remove a interview

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::RemoveAtsInterviewRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.ats.remove_ats_interview(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Interview  |


### Response

**[T.nilable(Operations::RemoveAtsInterviewResponse)](../../models/operations/removeatsinterviewresponse.md)**


## remove_ats_job

Remove a job

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::RemoveAtsJobRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.ats.remove_ats_job(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Job        |


### Response

**[T.nilable(Operations::RemoveAtsJobResponse)](../../models/operations/removeatsjobresponse.md)**


## remove_ats_scorecard

Remove a scorecard

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::RemoveAtsScorecardRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.ats.remove_ats_scorecard(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Scorecard  |


### Response

**[T.nilable(Operations::RemoveAtsScorecardResponse)](../../models/operations/removeatsscorecardresponse.md)**


## update_ats_application

Update an application

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::UpdateAtsApplicationRequest.new(
  connection_id="string",
  id="<ID>",
  ats_application=Shared::AtsApplication.new(
    raw=Shared::PropertyAtsApplicationRaw.new(),
  ),
)
    
res = s.ats.update_ats_application(connection_id="string", id="string", ats_application=Shared::AtsApplication.new(
    raw=Shared::PropertyAtsApplicationRaw.new(),
  ))

if ! res.ats_application.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `connection_id`                                                 | *String*                                                        | :heavy_check_mark:                                              | ID of the connection                                            |
| `id`                                                            | *String*                                                        | :heavy_check_mark:                                              | ID of the Application                                           |
| `ats_application`                                               | [Shared::AtsApplication](../../models/shared/atsapplication.md) | :heavy_minus_sign:                                              | N/A                                                             |


### Response

**[T.nilable(Operations::UpdateAtsApplicationResponse)](../../models/operations/updateatsapplicationresponse.md)**


## update_ats_candidate

Update a candidate

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
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
    
res = s.ats.update_ats_candidate(connection_id="string", id="string", ats_candidate=Shared::AtsCandidate.new(
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


## update_ats_document

Update a document

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::UpdateAtsDocumentRequest.new(
  connection_id="string",
  id="<ID>",
  ats_document=Shared::AtsDocument.new(
    raw=Shared::PropertyAtsDocumentRaw.new(),
  ),
)
    
res = s.ats.update_ats_document(connection_id="string", id="string", ats_document=Shared::AtsDocument.new(
    raw=Shared::PropertyAtsDocumentRaw.new(),
  ))

if ! res.ats_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                 | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `connection_id`                                           | *String*                                                  | :heavy_check_mark:                                        | ID of the connection                                      |
| `id`                                                      | *String*                                                  | :heavy_check_mark:                                        | ID of the Document                                        |
| `ats_document`                                            | [Shared::AtsDocument](../../models/shared/atsdocument.md) | :heavy_minus_sign:                                        | N/A                                                       |


### Response

**[T.nilable(Operations::UpdateAtsDocumentResponse)](../../models/operations/updateatsdocumentresponse.md)**


## update_ats_interview

Update a interview

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::UpdateAtsInterviewRequest.new(
  connection_id="string",
  id="<ID>",
  ats_interview=Shared::AtsInterview.new(
    raw=Shared::PropertyAtsInterviewRaw.new(),
    user_ids=[
      "string",
    ],
  ),
)
    
res = s.ats.update_ats_interview(connection_id="string", id="string", ats_interview=Shared::AtsInterview.new(
    raw=Shared::PropertyAtsInterviewRaw.new(),
    user_ids=[
      "string",
    ],
  ))

if ! res.ats_interview.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `connection_id`                                             | *String*                                                    | :heavy_check_mark:                                          | ID of the connection                                        |
| `id`                                                        | *String*                                                    | :heavy_check_mark:                                          | ID of the Interview                                         |
| `ats_interview`                                             | [Shared::AtsInterview](../../models/shared/atsinterview.md) | :heavy_minus_sign:                                          | N/A                                                         |


### Response

**[T.nilable(Operations::UpdateAtsInterviewResponse)](../../models/operations/updateatsinterviewresponse.md)**


## update_ats_job

Update a job

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::UpdateAtsJobRequest.new(
  connection_id="string",
  id="<ID>",
  ats_job=Shared::AtsJob.new(
    addresses=[
      Shared::AtsAddress.new(),
    ],
    compensation=[
      Shared::AtsCompensation.new(
        type=Shared::AtsCompensationType::EQUITY,
      ),
    ],
    departments=[
      "string",
    ],
    hiring_manager_ids=[
      "string",
    ],
    public_job_urls=[
      "string",
    ],
    raw=Shared::PropertyAtsJobRaw.new(),
    recruiter_ids=[
      "string",
    ],
  ),
)
    
res = s.ats.update_ats_job(connection_id="string", id="string", ats_job=Shared::AtsJob.new(
    addresses=[
      Shared::AtsAddress.new(),
    ],
    compensation=[
      Shared::AtsCompensation.new(
        type=Shared::AtsCompensationType::BONUS,
      ),
    ],
    departments=[
      "string",
    ],
    hiring_manager_ids=[
      "string",
    ],
    public_job_urls=[
      "string",
    ],
    raw=Shared::PropertyAtsJobRaw.new(),
    recruiter_ids=[
      "string",
    ],
  ))

if ! res.ats_job.nil?
  # handle response
end

```

### Parameters

| Parameter                                       | Type                                            | Required                                        | Description                                     |
| ----------------------------------------------- | ----------------------------------------------- | ----------------------------------------------- | ----------------------------------------------- |
| `connection_id`                                 | *String*                                        | :heavy_check_mark:                              | ID of the connection                            |
| `id`                                            | *String*                                        | :heavy_check_mark:                              | ID of the Job                                   |
| `ats_job`                                       | [Shared::AtsJob](../../models/shared/atsjob.md) | :heavy_minus_sign:                              | N/A                                             |


### Response

**[T.nilable(Operations::UpdateAtsJobResponse)](../../models/operations/updateatsjobresponse.md)**


## update_ats_scorecard

Update a scorecard

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::UpdateAtsScorecardRequest.new(
  connection_id="string",
  id="<ID>",
  ats_scorecard=Shared::AtsScorecard.new(
    raw=Shared::PropertyAtsScorecardRaw.new(),
  ),
)
    
res = s.ats.update_ats_scorecard(connection_id="string", id="string", ats_scorecard=Shared::AtsScorecard.new(
    raw=Shared::PropertyAtsScorecardRaw.new(),
  ))

if ! res.ats_scorecard.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `connection_id`                                             | *String*                                                    | :heavy_check_mark:                                          | ID of the connection                                        |
| `id`                                                        | *String*                                                    | :heavy_check_mark:                                          | ID of the Scorecard                                         |
| `ats_scorecard`                                             | [Shared::AtsScorecard](../../models/shared/atsscorecard.md) | :heavy_minus_sign:                                          | N/A                                                         |


### Response

**[T.nilable(Operations::UpdateAtsScorecardResponse)](../../models/operations/updateatsscorecardresponse.md)**

