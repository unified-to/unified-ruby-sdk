# Ats


### Available Operations

* [create_ats_activity](#create_ats_activity) - Create an activity
* [create_ats_application](#create_ats_application) - Create an application
* [create_ats_candidate](#create_ats_candidate) - Create a candidate
* [create_ats_document](#create_ats_document) - Create a document
* [create_ats_interview](#create_ats_interview) - Create an interview
* [create_ats_job](#create_ats_job) - Create a job
* [create_ats_scorecard](#create_ats_scorecard) - Create a scorecard
* [get_ats_activity](#get_ats_activity) - Retrieve an activity
* [get_ats_application](#get_ats_application) - Retrieve an application
* [get_ats_candidate](#get_ats_candidate) - Retrieve a candidate
* [get_ats_company](#get_ats_company) - Retrieve a company
* [get_ats_document](#get_ats_document) - Retrieve a document
* [get_ats_interview](#get_ats_interview) - Retrieve an interview
* [get_ats_job](#get_ats_job) - Retrieve a job
* [get_ats_scorecard](#get_ats_scorecard) - Retrieve a scorecard
* [list_ats_activities](#list_ats_activities) - List all activities
* [list_ats_applications](#list_ats_applications) - List all applications
* [list_ats_applicationstatuses](#list_ats_applicationstatuses) - List all applicationstatuses
* [list_ats_candidates](#list_ats_candidates) - List all candidates
* [list_ats_companies](#list_ats_companies) - List all companies
* [list_ats_documents](#list_ats_documents) - List all documents
* [list_ats_interviews](#list_ats_interviews) - List all interviews
* [list_ats_jobs](#list_ats_jobs) - List all jobs
* [list_ats_scorecards](#list_ats_scorecards) - List all scorecards
* [patch_ats_activity](#patch_ats_activity) - Update an activity
* [patch_ats_application](#patch_ats_application) - Update an application
* [patch_ats_candidate](#patch_ats_candidate) - Update a candidate
* [patch_ats_document](#patch_ats_document) - Update a document
* [patch_ats_interview](#patch_ats_interview) - Update an interview
* [patch_ats_job](#patch_ats_job) - Update a job
* [patch_ats_scorecard](#patch_ats_scorecard) - Update a scorecard
* [remove_ats_activity](#remove_ats_activity) - Remove an activity
* [remove_ats_application](#remove_ats_application) - Remove an application
* [remove_ats_candidate](#remove_ats_candidate) - Remove a candidate
* [remove_ats_document](#remove_ats_document) - Remove a document
* [remove_ats_interview](#remove_ats_interview) - Remove an interview
* [remove_ats_job](#remove_ats_job) - Remove a job
* [remove_ats_scorecard](#remove_ats_scorecard) - Remove a scorecard
* [update_ats_activity](#update_ats_activity) - Update an activity
* [update_ats_application](#update_ats_application) - Update an application
* [update_ats_candidate](#update_ats_candidate) - Update a candidate
* [update_ats_document](#update_ats_document) - Update a document
* [update_ats_interview](#update_ats_interview) - Update an interview
* [update_ats_job](#update_ats_job) - Update a job
* [update_ats_scorecard](#update_ats_scorecard) - Update a scorecard

## create_ats_activity

Create an activity

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.create_ats_activity(connection_id="<value>", ats_activity=::UnifiedRubySDK::Shared::AtsActivity.new(
    title: "<value>",
  ))

if ! res.ats_activity.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `connection_id`                                                             | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the connection                                                        |
| `ats_activity`                                                              | [::UnifiedRubySDK::Shared::AtsActivity](../../models/shared/atsactivity.md) | :heavy_minus_sign:                                                          | N/A                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAtsActivityResponse)](../../models/operations/createatsactivityresponse.md)**


## create_ats_application

Create an application

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.create_ats_application(connection_id="<value>", ats_application=::UnifiedRubySDK::Shared::AtsApplication.new())

if ! res.ats_application.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `connection_id`                                                                   | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the connection                                                              |
| `ats_application`                                                                 | [::UnifiedRubySDK::Shared::AtsApplication](../../models/shared/atsapplication.md) | :heavy_minus_sign:                                                                | N/A                                                                               |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAtsApplicationResponse)](../../models/operations/createatsapplicationresponse.md)**


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

    
res = s.ats.create_ats_candidate(connection_id="<value>", ats_candidate=::UnifiedRubySDK::Shared::AtsCandidate.new())

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


## create_ats_document

Create a document

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.create_ats_document(connection_id="<value>", ats_document=::UnifiedRubySDK::Shared::AtsDocument.new())

if ! res.ats_document.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `connection_id`                                                             | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the connection                                                        |
| `ats_document`                                                              | [::UnifiedRubySDK::Shared::AtsDocument](../../models/shared/atsdocument.md) | :heavy_minus_sign:                                                          | N/A                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAtsDocumentResponse)](../../models/operations/createatsdocumentresponse.md)**


## create_ats_interview

Create an interview

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.create_ats_interview(connection_id="<value>", ats_interview=::UnifiedRubySDK::Shared::AtsInterview.new())

if ! res.ats_interview.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `ats_interview`                                                               | [::UnifiedRubySDK::Shared::AtsInterview](../../models/shared/atsinterview.md) | :heavy_minus_sign:                                                            | N/A                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAtsInterviewResponse)](../../models/operations/createatsinterviewresponse.md)**


## create_ats_job

Create a job

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.create_ats_job(connection_id="<value>", ats_job=::UnifiedRubySDK::Shared::AtsJob.new())

if ! res.ats_job.nil?
  # handle response
end

```



### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `connection_id`                                                   | *::String*                                                        | :heavy_check_mark:                                                | ID of the connection                                              |
| `ats_job`                                                         | [::UnifiedRubySDK::Shared::AtsJob](../../models/shared/atsjob.md) | :heavy_minus_sign:                                                | N/A                                                               |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAtsJobResponse)](../../models/operations/createatsjobresponse.md)**


## create_ats_scorecard

Create a scorecard

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.create_ats_scorecard(connection_id="<value>", ats_scorecard=::UnifiedRubySDK::Shared::AtsScorecard.new())

if ! res.ats_scorecard.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `ats_scorecard`                                                               | [::UnifiedRubySDK::Shared::AtsScorecard](../../models/shared/atsscorecard.md) | :heavy_minus_sign:                                                            | N/A                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAtsScorecardResponse)](../../models/operations/createatsscorecardresponse.md)**


## get_ats_activity

Retrieve an activity

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.get_ats_activity(connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.ats_activity.nil?
  # handle response
end

```



### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Activity               |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAtsActivityResponse)](../../models/operations/getatsactivityresponse.md)**


## get_ats_application

Retrieve an application

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.get_ats_application(connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.ats_application.nil?
  # handle response
end

```



### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Application            |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAtsApplicationResponse)](../../models/operations/getatsapplicationresponse.md)**


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

    
res = s.ats.get_ats_candidate(connection_id="<value>", id="<value>", fields_=[
    "<value>",
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


## get_ats_company

Retrieve a company

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.get_ats_company(connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.ats_company.nil?
  # handle response
end

```



### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Company                |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAtsCompanyResponse)](../../models/operations/getatscompanyresponse.md)**


## get_ats_document

Retrieve a document

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.get_ats_document(connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.ats_document.nil?
  # handle response
end

```



### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Document               |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAtsDocumentResponse)](../../models/operations/getatsdocumentresponse.md)**


## get_ats_interview

Retrieve an interview

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.get_ats_interview(connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.ats_interview.nil?
  # handle response
end

```



### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Interview              |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAtsInterviewResponse)](../../models/operations/getatsinterviewresponse.md)**


## get_ats_job

Retrieve a job

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.get_ats_job(connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.ats_job.nil?
  # handle response
end

```



### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Job                    |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAtsJobResponse)](../../models/operations/getatsjobresponse.md)**


## get_ats_scorecard

Retrieve a scorecard

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.get_ats_scorecard(connection_id="<value>", id="<value>", fields_=[
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


## list_ats_activities

List all activities

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListAtsActivitiesRequest.new(
  connection_id: "<value>",
)
    
res = s.ats.list_ats_activities(req)

if ! res.ats_activities.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [::UnifiedRubySDK::Operations::ListAtsActivitiesRequest](../../models/operations/listatsactivitiesrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAtsActivitiesResponse)](../../models/operations/listatsactivitiesresponse.md)**


## list_ats_applications

List all applications

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListAtsApplicationsRequest.new(
  connection_id: "<value>",
)
    
res = s.ats.list_ats_applications(req)

if ! res.ats_applications.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                         | [::UnifiedRubySDK::Operations::ListAtsApplicationsRequest](../../models/operations/listatsapplicationsrequest.md) | :heavy_check_mark:                                                                                                | The request object to use for the request.                                                                        |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAtsApplicationsResponse)](../../models/operations/listatsapplicationsresponse.md)**


## list_ats_applicationstatuses

List all applicationstatuses

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListAtsApplicationstatusesRequest.new(
  connection_id: "<value>",
)
    
res = s.ats.list_ats_applicationstatuses(req)

if ! res.ats_statuses.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                                       | Type                                                                                                                            | Required                                                                                                                        | Description                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                       | [::UnifiedRubySDK::Operations::ListAtsApplicationstatusesRequest](../../models/operations/listatsapplicationstatusesrequest.md) | :heavy_check_mark:                                                                                                              | The request object to use for the request.                                                                                      |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAtsApplicationstatusesResponse)](../../models/operations/listatsapplicationstatusesresponse.md)**


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
  connection_id: "<value>",
)
    
res = s.ats.list_ats_candidates(req)

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


## list_ats_companies

List all companies

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListAtsCompaniesRequest.new(
  connection_id: "<value>",
)
    
res = s.ats.list_ats_companies(req)

if ! res.ats_companies.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [::UnifiedRubySDK::Operations::ListAtsCompaniesRequest](../../models/operations/listatscompaniesrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAtsCompaniesResponse)](../../models/operations/listatscompaniesresponse.md)**


## list_ats_documents

List all documents

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListAtsDocumentsRequest.new(
  connection_id: "<value>",
)
    
res = s.ats.list_ats_documents(req)

if ! res.ats_documents.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [::UnifiedRubySDK::Operations::ListAtsDocumentsRequest](../../models/operations/listatsdocumentsrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAtsDocumentsResponse)](../../models/operations/listatsdocumentsresponse.md)**


## list_ats_interviews

List all interviews

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListAtsInterviewsRequest.new(
  connection_id: "<value>",
)
    
res = s.ats.list_ats_interviews(req)

if ! res.ats_interviews.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [::UnifiedRubySDK::Operations::ListAtsInterviewsRequest](../../models/operations/listatsinterviewsrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAtsInterviewsResponse)](../../models/operations/listatsinterviewsresponse.md)**


## list_ats_jobs

List all jobs

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListAtsJobsRequest.new(
  connection_id: "<value>",
)
    
res = s.ats.list_ats_jobs(req)

if ! res.ats_jobs.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [::UnifiedRubySDK::Operations::ListAtsJobsRequest](../../models/operations/listatsjobsrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAtsJobsResponse)](../../models/operations/listatsjobsresponse.md)**


## list_ats_scorecards

List all scorecards

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListAtsScorecardsRequest.new(
  connection_id: "<value>",
)
    
res = s.ats.list_ats_scorecards(req)

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


## patch_ats_activity

Update an activity

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.patch_ats_activity(connection_id="<value>", id="<value>", ats_activity=::UnifiedRubySDK::Shared::AtsActivity.new(
    title: "<value>",
  ))

if ! res.ats_activity.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `connection_id`                                                             | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the connection                                                        |
| `id`                                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the Activity                                                          |
| `ats_activity`                                                              | [::UnifiedRubySDK::Shared::AtsActivity](../../models/shared/atsactivity.md) | :heavy_minus_sign:                                                          | N/A                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAtsActivityResponse)](../../models/operations/patchatsactivityresponse.md)**


## patch_ats_application

Update an application

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.patch_ats_application(connection_id="<value>", id="<value>", ats_application=::UnifiedRubySDK::Shared::AtsApplication.new())

if ! res.ats_application.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `connection_id`                                                                   | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the connection                                                              |
| `id`                                                                              | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the Application                                                             |
| `ats_application`                                                                 | [::UnifiedRubySDK::Shared::AtsApplication](../../models/shared/atsapplication.md) | :heavy_minus_sign:                                                                | N/A                                                                               |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAtsApplicationResponse)](../../models/operations/patchatsapplicationresponse.md)**


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

    
res = s.ats.patch_ats_candidate(connection_id="<value>", id="<value>", ats_candidate=::UnifiedRubySDK::Shared::AtsCandidate.new())

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


## patch_ats_document

Update a document

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.patch_ats_document(connection_id="<value>", id="<value>", ats_document=::UnifiedRubySDK::Shared::AtsDocument.new())

if ! res.ats_document.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `connection_id`                                                             | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the connection                                                        |
| `id`                                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the Document                                                          |
| `ats_document`                                                              | [::UnifiedRubySDK::Shared::AtsDocument](../../models/shared/atsdocument.md) | :heavy_minus_sign:                                                          | N/A                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAtsDocumentResponse)](../../models/operations/patchatsdocumentresponse.md)**


## patch_ats_interview

Update an interview

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.patch_ats_interview(connection_id="<value>", id="<value>", ats_interview=::UnifiedRubySDK::Shared::AtsInterview.new())

if ! res.ats_interview.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `id`                                                                          | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the Interview                                                           |
| `ats_interview`                                                               | [::UnifiedRubySDK::Shared::AtsInterview](../../models/shared/atsinterview.md) | :heavy_minus_sign:                                                            | N/A                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAtsInterviewResponse)](../../models/operations/patchatsinterviewresponse.md)**


## patch_ats_job

Update a job

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.patch_ats_job(connection_id="<value>", id="<value>", ats_job=::UnifiedRubySDK::Shared::AtsJob.new())

if ! res.ats_job.nil?
  # handle response
end

```



### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `connection_id`                                                   | *::String*                                                        | :heavy_check_mark:                                                | ID of the connection                                              |
| `id`                                                              | *::String*                                                        | :heavy_check_mark:                                                | ID of the Job                                                     |
| `ats_job`                                                         | [::UnifiedRubySDK::Shared::AtsJob](../../models/shared/atsjob.md) | :heavy_minus_sign:                                                | N/A                                                               |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAtsJobResponse)](../../models/operations/patchatsjobresponse.md)**


## patch_ats_scorecard

Update a scorecard

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.patch_ats_scorecard(connection_id="<value>", id="<value>", ats_scorecard=::UnifiedRubySDK::Shared::AtsScorecard.new())

if ! res.ats_scorecard.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `id`                                                                          | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the Scorecard                                                           |
| `ats_scorecard`                                                               | [::UnifiedRubySDK::Shared::AtsScorecard](../../models/shared/atsscorecard.md) | :heavy_minus_sign:                                                            | N/A                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAtsScorecardResponse)](../../models/operations/patchatsscorecardresponse.md)**


## remove_ats_activity

Remove an activity

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.remove_ats_activity(connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```



### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Activity   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAtsActivityResponse)](../../models/operations/removeatsactivityresponse.md)**


## remove_ats_application

Remove an application

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.remove_ats_application(connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```



### Parameters

| Parameter             | Type                  | Required              | Description           |
| --------------------- | --------------------- | --------------------- | --------------------- |
| `connection_id`       | *::String*            | :heavy_check_mark:    | ID of the connection  |
| `id`                  | *::String*            | :heavy_check_mark:    | ID of the Application |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAtsApplicationResponse)](../../models/operations/removeatsapplicationresponse.md)**


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

    
res = s.ats.remove_ats_candidate(connection_id="<value>", id="<value>")

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


## remove_ats_document

Remove a document

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.remove_ats_document(connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```



### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Document   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAtsDocumentResponse)](../../models/operations/removeatsdocumentresponse.md)**


## remove_ats_interview

Remove an interview

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.remove_ats_interview(connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```



### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Interview  |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAtsInterviewResponse)](../../models/operations/removeatsinterviewresponse.md)**


## remove_ats_job

Remove a job

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.remove_ats_job(connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```



### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Job        |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAtsJobResponse)](../../models/operations/removeatsjobresponse.md)**


## remove_ats_scorecard

Remove a scorecard

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.remove_ats_scorecard(connection_id="<value>", id="<value>")

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


## update_ats_activity

Update an activity

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.update_ats_activity(connection_id="<value>", id="<value>", ats_activity=::UnifiedRubySDK::Shared::AtsActivity.new(
    title: "<value>",
  ))

if ! res.ats_activity.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `connection_id`                                                             | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the connection                                                        |
| `id`                                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the Activity                                                          |
| `ats_activity`                                                              | [::UnifiedRubySDK::Shared::AtsActivity](../../models/shared/atsactivity.md) | :heavy_minus_sign:                                                          | N/A                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAtsActivityResponse)](../../models/operations/updateatsactivityresponse.md)**


## update_ats_application

Update an application

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.update_ats_application(connection_id="<value>", id="<value>", ats_application=::UnifiedRubySDK::Shared::AtsApplication.new())

if ! res.ats_application.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `connection_id`                                                                   | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the connection                                                              |
| `id`                                                                              | *::String*                                                                        | :heavy_check_mark:                                                                | ID of the Application                                                             |
| `ats_application`                                                                 | [::UnifiedRubySDK::Shared::AtsApplication](../../models/shared/atsapplication.md) | :heavy_minus_sign:                                                                | N/A                                                                               |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAtsApplicationResponse)](../../models/operations/updateatsapplicationresponse.md)**


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

    
res = s.ats.update_ats_candidate(connection_id="<value>", id="<value>", ats_candidate=::UnifiedRubySDK::Shared::AtsCandidate.new())

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


## update_ats_document

Update a document

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.update_ats_document(connection_id="<value>", id="<value>", ats_document=::UnifiedRubySDK::Shared::AtsDocument.new())

if ! res.ats_document.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `connection_id`                                                             | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the connection                                                        |
| `id`                                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the Document                                                          |
| `ats_document`                                                              | [::UnifiedRubySDK::Shared::AtsDocument](../../models/shared/atsdocument.md) | :heavy_minus_sign:                                                          | N/A                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAtsDocumentResponse)](../../models/operations/updateatsdocumentresponse.md)**


## update_ats_interview

Update an interview

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.update_ats_interview(connection_id="<value>", id="<value>", ats_interview=::UnifiedRubySDK::Shared::AtsInterview.new())

if ! res.ats_interview.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `id`                                                                          | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the Interview                                                           |
| `ats_interview`                                                               | [::UnifiedRubySDK::Shared::AtsInterview](../../models/shared/atsinterview.md) | :heavy_minus_sign:                                                            | N/A                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAtsInterviewResponse)](../../models/operations/updateatsinterviewresponse.md)**


## update_ats_job

Update a job

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.update_ats_job(connection_id="<value>", id="<value>", ats_job=::UnifiedRubySDK::Shared::AtsJob.new())

if ! res.ats_job.nil?
  # handle response
end

```



### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `connection_id`                                                   | *::String*                                                        | :heavy_check_mark:                                                | ID of the connection                                              |
| `id`                                                              | *::String*                                                        | :heavy_check_mark:                                                | ID of the Job                                                     |
| `ats_job`                                                         | [::UnifiedRubySDK::Shared::AtsJob](../../models/shared/atsjob.md) | :heavy_minus_sign:                                                | N/A                                                               |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAtsJobResponse)](../../models/operations/updateatsjobresponse.md)**


## update_ats_scorecard

Update a scorecard

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.ats.update_ats_scorecard(connection_id="<value>", id="<value>", ats_scorecard=::UnifiedRubySDK::Shared::AtsScorecard.new())

if ! res.ats_scorecard.nil?
  # handle response
end

```



### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `id`                                                                          | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the Scorecard                                                           |
| `ats_scorecard`                                                               | [::UnifiedRubySDK::Shared::AtsScorecard](../../models/shared/atsscorecard.md) | :heavy_minus_sign:                                                            | N/A                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAtsScorecardResponse)](../../models/operations/updateatsscorecardresponse.md)**

