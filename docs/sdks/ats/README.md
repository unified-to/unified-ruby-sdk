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
    jwt=.foo"",
  )
)

   
req = Operations::CreateAtsApplicationRequest.new(
  path_params=Operations::CreateAtsApplicationRequest.new(
    connection_id="string",
    ats_application=Shared::AtsApplication.new(
      applied_at=DateTime.iso8601('2023-03-09T11:35:08.252Z'),
      candidate_id="string",
      created_at=DateTime.iso8601('2023-09-22T15:02:56.144Z'),
      id="<ID>",
      job_id="string",
      raw=Shared::PropertyAtsApplicationRaw.new(),
      rejected_at=DateTime.iso8601('2022-01-18T22:03:17.799Z'),
      rejected_reason="string",
      source="string",
      status=Shared::Status::FIRST_INTERVIEW,
      updated_at=DateTime.iso8601('2022-04-22T10:02:31.440Z'),
    ),
  ),
  ats_application=Shared::AtsApplication.new(
    applied_at=DateTime.iso8601('2023-09-21T23:44:32.523Z'),
    candidate_id="string",
    created_at=DateTime.iso8601('2022-05-01T07:06:52.908Z'),
    id="<ID>",
    job_id="string",
    raw=Shared::PropertyAtsApplicationRaw.new(),
    rejected_at=DateTime.iso8601('2023-01-12T06:42:01.504Z'),
    rejected_reason="string",
    source="string",
    status=Shared::Status::REJECTED,
    updated_at=DateTime.iso8601('2022-03-25T22:13:40.187Z'),
  ),
)
    
res = s.ats.create_ats_application(req)

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
    jwt=.foo"",
  )
)

   
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
      link_urls=.new[
        "string",
      ],
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
    link_urls=.new[
      "string",
    ],
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
    
res = s.ats.create_ats_candidate(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::CreateAtsDocumentRequest.new(
  path_params=Operations::CreateAtsDocumentRequest.new(
    connection_id="string",
    ats_document=Shared::AtsDocument.new(
      application_id="string",
      candidate_id="string",
      created_at=DateTime.iso8601('2021-04-24T22:30:56.289Z'),
      document_data="string",
      document_url="string",
      filename="mouse_per_missouri.mp4",
      id="<ID>",
      job_id="string",
      raw=Shared::PropertyAtsDocumentRaw.new(),
      type=Shared::AtsDocumentType::OFFER_PACKET,
      updated_at=DateTime.iso8601('2021-12-28T09:27:32.859Z'),
      user_id="string",
    ),
  ),
  ats_document=Shared::AtsDocument.new(
    application_id="string",
    candidate_id="string",
    created_at=DateTime.iso8601('2021-10-22T13:12:11.941Z'),
    document_data="string",
    document_url="string",
    filename="tcp.mp4",
    id="<ID>",
    job_id="string",
    raw=Shared::PropertyAtsDocumentRaw.new(),
    type=Shared::AtsDocumentType::RESUME,
    updated_at=DateTime.iso8601('2023-03-23T01:41:49.560Z'),
    user_id="string",
  ),
)
    
res = s.ats.create_ats_document(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::CreateAtsInterviewRequest.new(
  path_params=Operations::CreateAtsInterviewRequest.new(
    connection_id="string",
    ats_interview=Shared::AtsInterview.new(
      application_id="string",
      candidate_id="string",
      created_at=DateTime.iso8601('2022-01-10T19:55:26.926Z'),
      end_at=DateTime.iso8601('2023-12-21T09:01:54.390Z'),
      external_event_xref="string",
      id="<ID>",
      job_id="string",
      location="string",
      raw=Shared::PropertyAtsInterviewRaw.new(),
      start_at=DateTime.iso8601('2022-11-19T09:10:03.014Z'),
      status=Shared::AtsInterviewStatus::COMPLETE,
      updated_at=DateTime.iso8601('2021-02-07T14:25:56.954Z'),
      user_ids=.new[
        "string",
      ],
    ),
  ),
  ats_interview=Shared::AtsInterview.new(
    application_id="string",
    candidate_id="string",
    created_at=DateTime.iso8601('2021-09-28T19:45:38.094Z'),
    end_at=DateTime.iso8601('2023-10-20T10:19:43.322Z'),
    external_event_xref="string",
    id="<ID>",
    job_id="string",
    location="string",
    raw=Shared::PropertyAtsInterviewRaw.new(),
    start_at=DateTime.iso8601('2022-05-05T10:11:26.881Z'),
    status=Shared::AtsInterviewStatus::SCHEDULED,
    updated_at=DateTime.iso8601('2023-05-17T22:03:34.997Z'),
    user_ids=.new[
      "string",
    ],
  ),
)
    
res = s.ats.create_ats_interview(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::CreateAtsJobRequest.new(
  path_params=Operations::CreateAtsJobRequest.new(
    connection_id="string",
    ats_job=Shared::AtsJob.new(
      addresses=.new[
        Shared::AtsAddress.new(
          address1="string",
          address2="string",
          city="South Pinkiebury",
          country="Malaysia",
          country_code="AE",
          postal_code="98694-2065",
          region="string",
          region_code="string",
        ),
      ],
      closed_at=DateTime.iso8601('2022-03-18T02:27:55.596Z'),
      compensation=.new[
        Shared::AtsCompensation.new(
          currency="Tunisian Dinar",
          frequency=Shared::Frequency::HOUR,
          max=4687.22,
          min=6744,
          type=Shared::AtsCompensationType::EQUITY,
        ),
      ],
      created_at=DateTime.iso8601('2021-10-06T09:13:45.693Z'),
      departments=.new[
        "string",
      ],
      description="Networked 24 hour moderator",
      employment_type=Shared::EmploymentType::CONSULTANT,
      hiring_manager_ids=.new[
        "string",
      ],
      id="<ID>",
      language_locale="string",
      name="string",
      public_job_urls=.new[
        "string",
      ],
      raw=Shared::PropertyAtsJobRaw.new(),
      recruiter_ids=.new[
        "string",
      ],
      remote=false,
      status=Shared::AtsJobStatus::PENDING,
      updated_at=DateTime.iso8601('2022-05-18T00:48:13.917Z'),
    ),
  ),
  ats_job=Shared::AtsJob.new(
    addresses=.new[
      Shared::AtsAddress.new(
        address1="string",
        address2="string",
        city="Taylorhaven",
        country="Madagascar",
        country_code="KW",
        postal_code="64879",
        region="string",
        region_code="string",
      ),
    ],
    closed_at=DateTime.iso8601('2023-08-31T02:37:43.872Z'),
    compensation=.new[
      Shared::AtsCompensation.new(
        currency="Congolese Franc",
        frequency=Shared::Frequency::HOUR,
        max=6113.89,
        min=3695.77,
        type=Shared::AtsCompensationType::BONUS,
      ),
    ],
    created_at=DateTime.iso8601('2022-08-01T13:34:22.957Z'),
    departments=.new[
      "string",
    ],
    description="Horizontal fault-tolerant success",
    employment_type=Shared::EmploymentType::FREELANCE,
    hiring_manager_ids=.new[
      "string",
    ],
    id="<ID>",
    language_locale="string",
    name="string",
    public_job_urls=.new[
      "string",
    ],
    raw=Shared::PropertyAtsJobRaw.new(),
    recruiter_ids=.new[
      "string",
    ],
    remote=false,
    status=Shared::AtsJobStatus::ARCHIVED,
    updated_at=DateTime.iso8601('2022-09-24T19:15:34.734Z'),
  ),
)
    
res = s.ats.create_ats_job(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::CreateAtsScorecardRequest.new(
  path_params=Operations::CreateAtsScorecardRequest.new(
    connection_id="string",
    ats_scorecard=Shared::AtsScorecard.new(
      application_id="string",
      candidate_id="string",
      comment="The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J",
      created_at=DateTime.iso8601('2021-04-24T07:49:32.768Z'),
      id="<ID>",
      interview_id="string",
      interviewer_id="string",
      job_id="string",
      raw=Shared::PropertyAtsScorecardRaw.new(),
      recommendation=Shared::Recommendation::NO,
      updated_at=DateTime.iso8601('2022-04-01T17:31:47.454Z'),
    ),
  ),
  ats_scorecard=Shared::AtsScorecard.new(
    application_id="string",
    candidate_id="string",
    comment="Boston's most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles",
    created_at=DateTime.iso8601('2023-12-16T16:30:24.432Z'),
    id="<ID>",
    interview_id="string",
    interviewer_id="string",
    job_id="string",
    raw=Shared::PropertyAtsScorecardRaw.new(),
    recommendation=Shared::Recommendation::NO,
    updated_at=DateTime.iso8601('2021-07-03T14:50:39.962Z'),
  ),
)
    
res = s.ats.create_ats_scorecard(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::GetAtsApplicationRequest.new(
  path_params=Operations::GetAtsApplicationRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetAtsApplicationRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.ats.get_ats_application(req)

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
    jwt=.foo"",
  )
)

   
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
    
res = s.ats.get_ats_candidate(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::GetAtsDocumentRequest.new(
  path_params=Operations::GetAtsDocumentRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetAtsDocumentRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.ats.get_ats_document(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::GetAtsInterviewRequest.new(
  path_params=Operations::GetAtsInterviewRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetAtsInterviewRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.ats.get_ats_interview(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::GetAtsJobRequest.new(
  path_params=Operations::GetAtsJobRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetAtsJobRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.ats.get_ats_job(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::GetAtsScorecardRequest.new(
  path_params=Operations::GetAtsScorecardRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetAtsScorecardRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.ats.get_ats_scorecard(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::ListAtsApplicationsRequest.new(
  path_params=Operations::ListAtsApplicationsRequest.new(
    candidate_id="string",
    connection_id="string",
    fields=.new[
      "string",
    ],
    job_id="string",
    limit=441.56,
    offset=1448.74,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-12-21T12:43:47.690Z'),
  ),
  query_params=Operations::ListAtsApplicationsRequest.new(
    candidate_id="string",
    connection_id="string",
    fields=.new[
      "string",
    ],
    job_id="string",
    limit=7080.71,
    offset=8548.34,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2023-11-06T06:30:20.241Z'),
  ),
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
    jwt=.foo"",
  )
)

   
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
    jwt=.foo"",
  )
)

   
req = Operations::ListAtsDocumentsRequest.new(
  path_params=Operations::ListAtsDocumentsRequest.new(
    application_id="string",
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=9635.37,
    offset=8402.77,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2022-08-30T11:38:20.739Z'),
  ),
  query_params=Operations::ListAtsDocumentsRequest.new(
    application_id="string",
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=9163.39,
    offset=1924.01,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2023-08-31T21:41:32.642Z'),
  ),
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
    jwt=.foo"",
  )
)

   
req = Operations::ListAtsInterviewsRequest.new(
  path_params=Operations::ListAtsInterviewsRequest.new(
    application_id="string",
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=2562.12,
    offset=1185.02,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-09-28T09:19:25.744Z'),
  ),
  query_params=Operations::ListAtsInterviewsRequest.new(
    application_id="string",
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=2248.65,
    offset=786.42,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-04-28T17:44:00.140Z'),
  ),
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
    jwt=.foo"",
  )
)

   
req = Operations::ListAtsJobsRequest.new(
  path_params=Operations::ListAtsJobsRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=3958.99,
    offset=3223.84,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2022-03-03T15:53:00.086Z'),
  ),
  query_params=Operations::ListAtsJobsRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=4715.52,
    offset=7320.18,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2022-06-26T18:28:54.594Z'),
  ),
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
    jwt=.foo"",
  )
)

   
req = Operations::ListAtsScorecardsRequest.new(
  path_params=Operations::ListAtsScorecardsRequest.new(
    application_id="string",
    candidate_id="string",
    connection_id="string",
    fields=.new[
      "string",
    ],
    interview_id="string",
    job_id="string",
    limit=5126.98,
    offset=8077.44,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2023-08-19T17:42:56.145Z'),
  ),
  query_params=Operations::ListAtsScorecardsRequest.new(
    application_id="string",
    candidate_id="string",
    connection_id="string",
    fields=.new[
      "string",
    ],
    interview_id="string",
    job_id="string",
    limit=8270.76,
    offset=1452.51,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2023-08-27T14:54:31.526Z'),
  ),
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
    jwt=.foo"",
  )
)

   
req = Operations::PatchAtsApplicationRequest.new(
  path_params=Operations::PatchAtsApplicationRequest.new(
    connection_id="string",
    id="<ID>",
    ats_application=Shared::AtsApplication.new(
      applied_at=DateTime.iso8601('2022-12-15T04:58:14.527Z'),
      candidate_id="string",
      created_at=DateTime.iso8601('2021-01-06T05:50:03.360Z'),
      id="<ID>",
      job_id="string",
      raw=Shared::PropertyAtsApplicationRaw.new(),
      rejected_at=DateTime.iso8601('2022-12-04T13:56:12.670Z'),
      rejected_reason="string",
      source="string",
      status=Shared::Status::SCREENING,
      updated_at=DateTime.iso8601('2022-02-02T14:46:44.919Z'),
    ),
  ),
  ats_application=Shared::AtsApplication.new(
    applied_at=DateTime.iso8601('2023-01-24T01:05:36.238Z'),
    candidate_id="string",
    created_at=DateTime.iso8601('2023-01-13T04:21:41.030Z'),
    id="<ID>",
    job_id="string",
    raw=Shared::PropertyAtsApplicationRaw.new(),
    rejected_at=DateTime.iso8601('2021-11-18T09:34:12.055Z'),
    rejected_reason="string",
    source="string",
    status=Shared::Status::FIRST_INTERVIEW,
    updated_at=DateTime.iso8601('2022-01-12T23:23:01.903Z'),
  ),
)
    
res = s.ats.patch_ats_application(req)

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
    jwt=.foo"",
  )
)

   
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
      link_urls=.new[
        "string",
      ],
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
    link_urls=.new[
      "string",
    ],
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
    
res = s.ats.patch_ats_candidate(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::PatchAtsDocumentRequest.new(
  path_params=Operations::PatchAtsDocumentRequest.new(
    connection_id="string",
    id="<ID>",
    ats_document=Shared::AtsDocument.new(
      application_id="string",
      candidate_id="string",
      created_at=DateTime.iso8601('2021-04-01T09:34:15.248Z'),
      document_data="string",
      document_url="string",
      filename="future_underpin.mp4v",
      id="<ID>",
      job_id="string",
      raw=Shared::PropertyAtsDocumentRaw.new(),
      type=Shared::AtsDocumentType::OFFER_LETTER,
      updated_at=DateTime.iso8601('2022-02-14T01:39:21.030Z'),
      user_id="string",
    ),
  ),
  ats_document=Shared::AtsDocument.new(
    application_id="string",
    candidate_id="string",
    created_at=DateTime.iso8601('2023-08-12T20:41:57.042Z'),
    document_data="string",
    document_url="string",
    filename="turquoise_winds.gif",
    id="<ID>",
    job_id="string",
    raw=Shared::PropertyAtsDocumentRaw.new(),
    type=Shared::AtsDocumentType::TAKE_HOME_TEST,
    updated_at=DateTime.iso8601('2022-02-26T21:15:09.888Z'),
    user_id="string",
  ),
)
    
res = s.ats.patch_ats_document(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::PatchAtsInterviewRequest.new(
  path_params=Operations::PatchAtsInterviewRequest.new(
    connection_id="string",
    id="<ID>",
    ats_interview=Shared::AtsInterview.new(
      application_id="string",
      candidate_id="string",
      created_at=DateTime.iso8601('2023-09-11T21:35:40.790Z'),
      end_at=DateTime.iso8601('2021-05-28T19:11:29.616Z'),
      external_event_xref="string",
      id="<ID>",
      job_id="string",
      location="string",
      raw=Shared::PropertyAtsInterviewRaw.new(),
      start_at=DateTime.iso8601('2021-09-10T02:01:13.488Z'),
      status=Shared::AtsInterviewStatus::COMPLETE,
      updated_at=DateTime.iso8601('2023-03-18T09:12:18.749Z'),
      user_ids=.new[
        "string",
      ],
    ),
  ),
  ats_interview=Shared::AtsInterview.new(
    application_id="string",
    candidate_id="string",
    created_at=DateTime.iso8601('2021-03-14T21:48:10.753Z'),
    end_at=DateTime.iso8601('2023-11-05T23:28:42.001Z'),
    external_event_xref="string",
    id="<ID>",
    job_id="string",
    location="string",
    raw=Shared::PropertyAtsInterviewRaw.new(),
    start_at=DateTime.iso8601('2022-04-11T00:39:45.140Z'),
    status=Shared::AtsInterviewStatus::AWAITING_FEEDBACK,
    updated_at=DateTime.iso8601('2023-01-07T11:09:53.991Z'),
    user_ids=.new[
      "string",
    ],
  ),
)
    
res = s.ats.patch_ats_interview(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::PatchAtsJobRequest.new(
  path_params=Operations::PatchAtsJobRequest.new(
    connection_id="string",
    id="<ID>",
    ats_job=Shared::AtsJob.new(
      addresses=.new[
        Shared::AtsAddress.new(
          address1="string",
          address2="string",
          city="East Patricia",
          country="Belarus",
          country_code="ES",
          postal_code="60095",
          region="string",
          region_code="string",
        ),
      ],
      closed_at=DateTime.iso8601('2022-07-29T03:31:24.641Z'),
      compensation=.new[
        Shared::AtsCompensation.new(
          currency="Yuan Renminbi",
          frequency=Shared::Frequency::MONTH,
          max=6533.86,
          min=9524.54,
          type=Shared::AtsCompensationType::OTHER,
        ),
      ],
      created_at=DateTime.iso8601('2021-04-14T00:53:03.546Z'),
      departments=.new[
        "string",
      ],
      description="Expanded systemic encoding",
      employment_type=Shared::EmploymentType::CONSULTANT,
      hiring_manager_ids=.new[
        "string",
      ],
      id="<ID>",
      language_locale="string",
      name="string",
      public_job_urls=.new[
        "string",
      ],
      raw=Shared::PropertyAtsJobRaw.new(),
      recruiter_ids=.new[
        "string",
      ],
      remote=false,
      status=Shared::AtsJobStatus::PENDING,
      updated_at=DateTime.iso8601('2021-02-12T18:21:45.224Z'),
    ),
  ),
  ats_job=Shared::AtsJob.new(
    addresses=.new[
      Shared::AtsAddress.new(
        address1="string",
        address2="string",
        city="Shanaburgh",
        country="Mexico",
        country_code="TZ",
        postal_code="29576-4769",
        region="string",
        region_code="string",
      ),
    ],
    closed_at=DateTime.iso8601('2023-03-07T06:21:55.571Z'),
    compensation=.new[
      Shared::AtsCompensation.new(
        currency="Kuwaiti Dinar",
        frequency=Shared::Frequency::DAY,
        max=2091.46,
        min=5130.51,
        type=Shared::AtsCompensationType::EQUITY,
      ),
    ],
    created_at=DateTime.iso8601('2023-08-26T15:06:09.969Z'),
    departments=.new[
      "string",
    ],
    description="Proactive foreground projection",
    employment_type=Shared::EmploymentType::FREELANCE,
    hiring_manager_ids=.new[
      "string",
    ],
    id="<ID>",
    language_locale="string",
    name="string",
    public_job_urls=.new[
      "string",
    ],
    raw=Shared::PropertyAtsJobRaw.new(),
    recruiter_ids=.new[
      "string",
    ],
    remote=false,
    status=Shared::AtsJobStatus::DRAFT,
    updated_at=DateTime.iso8601('2022-06-08T14:48:56.074Z'),
  ),
)
    
res = s.ats.patch_ats_job(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::PatchAtsScorecardRequest.new(
  path_params=Operations::PatchAtsScorecardRequest.new(
    connection_id="string",
    id="<ID>",
    ats_scorecard=Shared::AtsScorecard.new(
      application_id="string",
      candidate_id="string",
      comment="Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support",
      created_at=DateTime.iso8601('2023-10-06T15:26:03.447Z'),
      id="<ID>",
      interview_id="string",
      interviewer_id="string",
      job_id="string",
      raw=Shared::PropertyAtsScorecardRaw.new(),
      recommendation=Shared::Recommendation::YES,
      updated_at=DateTime.iso8601('2021-11-28T07:58:12.100Z'),
    ),
  ),
  ats_scorecard=Shared::AtsScorecard.new(
    application_id="string",
    candidate_id="string",
    comment="Carbonite web goalkeeper gloves are ergonomically designed to give easy fit",
    created_at=DateTime.iso8601('2021-08-07T09:27:30.028Z'),
    id="<ID>",
    interview_id="string",
    interviewer_id="string",
    job_id="string",
    raw=Shared::PropertyAtsScorecardRaw.new(),
    recommendation=Shared::Recommendation::DEFINITELY_NO,
    updated_at=DateTime.iso8601('2022-08-04T15:09:40.480Z'),
  ),
)
    
res = s.ats.patch_ats_scorecard(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::RemoveAtsApplicationRequest.new(
  path_params=Operations::RemoveAtsApplicationRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.ats.remove_ats_application(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::RemoveAtsCandidateRequest.new(
  path_params=Operations::RemoveAtsCandidateRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.ats.remove_ats_candidate(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::RemoveAtsDocumentRequest.new(
  path_params=Operations::RemoveAtsDocumentRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.ats.remove_ats_document(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::RemoveAtsInterviewRequest.new(
  path_params=Operations::RemoveAtsInterviewRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.ats.remove_ats_interview(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::RemoveAtsJobRequest.new(
  path_params=Operations::RemoveAtsJobRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.ats.remove_ats_job(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::RemoveAtsScorecardRequest.new(
  path_params=Operations::RemoveAtsScorecardRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.ats.remove_ats_scorecard(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::UpdateAtsApplicationRequest.new(
  path_params=Operations::UpdateAtsApplicationRequest.new(
    connection_id="string",
    id="<ID>",
    ats_application=Shared::AtsApplication.new(
      applied_at=DateTime.iso8601('2021-08-22T07:14:38.941Z'),
      candidate_id="string",
      created_at=DateTime.iso8601('2021-06-04T09:23:07.789Z'),
      id="<ID>",
      job_id="string",
      raw=Shared::PropertyAtsApplicationRaw.new(),
      rejected_at=DateTime.iso8601('2021-02-09T08:05:18.054Z'),
      rejected_reason="string",
      source="string",
      status=Shared::Status::REJECTED,
      updated_at=DateTime.iso8601('2022-11-28T16:36:33.801Z'),
    ),
  ),
  ats_application=Shared::AtsApplication.new(
    applied_at=DateTime.iso8601('2022-03-16T17:33:44.222Z'),
    candidate_id="string",
    created_at=DateTime.iso8601('2023-08-16T12:20:07.563Z'),
    id="<ID>",
    job_id="string",
    raw=Shared::PropertyAtsApplicationRaw.new(),
    rejected_at=DateTime.iso8601('2023-08-09T15:35:56.357Z'),
    rejected_reason="string",
    source="string",
    status=Shared::Status::HIRED,
    updated_at=DateTime.iso8601('2022-06-25T18:54:45.418Z'),
  ),
)
    
res = s.ats.update_ats_application(req)

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
    jwt=.foo"",
  )
)

   
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
      link_urls=.new[
        "string",
      ],
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
    link_urls=.new[
      "string",
    ],
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
    
res = s.ats.update_ats_candidate(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::UpdateAtsDocumentRequest.new(
  path_params=Operations::UpdateAtsDocumentRequest.new(
    connection_id="string",
    id="<ID>",
    ats_document=Shared::AtsDocument.new(
      application_id="string",
      candidate_id="string",
      created_at=DateTime.iso8601('2021-07-05T13:01:49.006Z'),
      document_data="string",
      document_url="string",
      filename="unbranded_reprehenderit.jpg",
      id="<ID>",
      job_id="string",
      raw=Shared::PropertyAtsDocumentRaw.new(),
      type=Shared::AtsDocumentType::OFFER_PACKET,
      updated_at=DateTime.iso8601('2021-12-02T17:00:21.700Z'),
      user_id="string",
    ),
  ),
  ats_document=Shared::AtsDocument.new(
    application_id="string",
    candidate_id="string",
    created_at=DateTime.iso8601('2022-02-01T02:34:13.751Z'),
    document_data="string",
    document_url="string",
    filename="customizable_soul.mpga",
    id="<ID>",
    job_id="string",
    raw=Shared::PropertyAtsDocumentRaw.new(),
    type=Shared::AtsDocumentType::OTHER,
    updated_at=DateTime.iso8601('2021-04-10T13:59:39.668Z'),
    user_id="string",
  ),
)
    
res = s.ats.update_ats_document(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::UpdateAtsInterviewRequest.new(
  path_params=Operations::UpdateAtsInterviewRequest.new(
    connection_id="string",
    id="<ID>",
    ats_interview=Shared::AtsInterview.new(
      application_id="string",
      candidate_id="string",
      created_at=DateTime.iso8601('2023-05-06T10:37:46.574Z'),
      end_at=DateTime.iso8601('2022-03-29T10:34:23.230Z'),
      external_event_xref="string",
      id="<ID>",
      job_id="string",
      location="string",
      raw=Shared::PropertyAtsInterviewRaw.new(),
      start_at=DateTime.iso8601('2023-05-05T12:38:13.018Z'),
      status=Shared::AtsInterviewStatus::AWAITING_FEEDBACK,
      updated_at=DateTime.iso8601('2021-05-01T14:26:12.006Z'),
      user_ids=.new[
        "string",
      ],
    ),
  ),
  ats_interview=Shared::AtsInterview.new(
    application_id="string",
    candidate_id="string",
    created_at=DateTime.iso8601('2022-09-27T11:41:49.964Z'),
    end_at=DateTime.iso8601('2022-09-27T08:43:26.931Z'),
    external_event_xref="string",
    id="<ID>",
    job_id="string",
    location="string",
    raw=Shared::PropertyAtsInterviewRaw.new(),
    start_at=DateTime.iso8601('2022-10-25T12:47:06.682Z'),
    status=Shared::AtsInterviewStatus::SCHEDULED,
    updated_at=DateTime.iso8601('2021-09-19T11:28:26.105Z'),
    user_ids=.new[
      "string",
    ],
  ),
)
    
res = s.ats.update_ats_interview(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::UpdateAtsJobRequest.new(
  path_params=Operations::UpdateAtsJobRequest.new(
    connection_id="string",
    id="<ID>",
    ats_job=Shared::AtsJob.new(
      addresses=.new[
        Shared::AtsAddress.new(
          address1="string",
          address2="string",
          city="Franeckibury",
          country="Guam",
          country_code="PN",
          postal_code="96046",
          region="string",
          region_code="string",
        ),
      ],
      closed_at=DateTime.iso8601('2022-09-15T02:46:18.656Z'),
      compensation=.new[
        Shared::AtsCompensation.new(
          currency="Zambian Kwacha",
          frequency=Shared::Frequency::QUARTER,
          max=5341.71,
          min=4462.71,
          type=Shared::AtsCompensationType::STOCK_OPTIONS,
        ),
      ],
      created_at=DateTime.iso8601('2022-09-05T16:58:34.936Z'),
      departments=.new[
        "string",
      ],
      description="Monitored dynamic open system",
      employment_type=Shared::EmploymentType::CASUAL,
      hiring_manager_ids=.new[
        "string",
      ],
      id="<ID>",
      language_locale="string",
      name="string",
      public_job_urls=.new[
        "string",
      ],
      raw=Shared::PropertyAtsJobRaw.new(),
      recruiter_ids=.new[
        "string",
      ],
      remote=false,
      status=Shared::AtsJobStatus::OPEN,
      updated_at=DateTime.iso8601('2023-07-04T17:13:30.517Z'),
    ),
  ),
  ats_job=Shared::AtsJob.new(
    addresses=.new[
      Shared::AtsAddress.new(
        address1="string",
        address2="string",
        city="Walshfield",
        country="Palau",
        country_code="AM",
        postal_code="66150-4616",
        region="string",
        region_code="string",
      ),
    ],
    closed_at=DateTime.iso8601('2023-06-07T14:58:16.970Z'),
    compensation=.new[
      Shared::AtsCompensation.new(
        currency="Lebanese Pound",
        frequency=Shared::Frequency::ONE_TIME,
        max=7139.13,
        min=9690.4,
        type=Shared::AtsCompensationType::SALARY,
      ),
    ],
    created_at=DateTime.iso8601('2022-09-25T19:09:51.905Z'),
    departments=.new[
      "string",
    ],
    description="Optional uniform migration",
    employment_type=Shared::EmploymentType::INTERN,
    hiring_manager_ids=.new[
      "string",
    ],
    id="<ID>",
    language_locale="string",
    name="string",
    public_job_urls=.new[
      "string",
    ],
    raw=Shared::PropertyAtsJobRaw.new(),
    recruiter_ids=.new[
      "string",
    ],
    remote=false,
    status=Shared::AtsJobStatus::DRAFT,
    updated_at=DateTime.iso8601('2021-11-02T05:46:53.024Z'),
  ),
)
    
res = s.ats.update_ats_job(req)

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
    jwt=.foo"",
  )
)

   
req = Operations::UpdateAtsScorecardRequest.new(
  path_params=Operations::UpdateAtsScorecardRequest.new(
    connection_id="string",
    id="<ID>",
    ats_scorecard=Shared::AtsScorecard.new(
      application_id="string",
      candidate_id="string",
      comment="The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive",
      created_at=DateTime.iso8601('2021-07-10T12:08:12.226Z'),
      id="<ID>",
      interview_id="string",
      interviewer_id="string",
      job_id="string",
      raw=Shared::PropertyAtsScorecardRaw.new(),
      recommendation=Shared::Recommendation::NO,
      updated_at=DateTime.iso8601('2021-07-26T04:45:45.856Z'),
    ),
  ),
  ats_scorecard=Shared::AtsScorecard.new(
    application_id="string",
    candidate_id="string",
    comment="Carbonite web goalkeeper gloves are ergonomically designed to give easy fit",
    created_at=DateTime.iso8601('2023-03-16T18:41:45.959Z'),
    id="<ID>",
    interview_id="string",
    interviewer_id="string",
    job_id="string",
    raw=Shared::PropertyAtsScorecardRaw.new(),
    recommendation=Shared::Recommendation::STRONG_YES,
    updated_at=DateTime.iso8601('2022-07-09T21:46:17.308Z'),
  ),
)
    
res = s.ats.update_ats_scorecard(req)

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

