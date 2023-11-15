# Scorecard


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
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
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
    
res = s.scorecard.create_ats_scorecard(req)

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


## get_ats_scorecard

Retrieve a scorecard

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
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
    
res = s.scorecard.get_ats_scorecard(req)

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


## list_ats_scorecards

List all scorecards

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
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
    
res = s.scorecard.list_ats_scorecards(req)

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


## patch_ats_scorecard

Update a scorecard

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
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
    
res = s.scorecard.patch_ats_scorecard(req)

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


## remove_ats_scorecard

Remove a scorecard

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::RemoveAtsScorecardRequest.new(
  path_params=Operations::RemoveAtsScorecardRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.scorecard.remove_ats_scorecard(req)

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


## update_ats_scorecard

Update a scorecard

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
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
    
res = s.scorecard.update_ats_scorecard(req)

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

