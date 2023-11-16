# Job


### Available Operations

* [create_ats_job](#create_ats_job) - Create a job
* [get_ats_job](#get_ats_job) - Retrieve a job
* [list_ats_jobs](#list_ats_jobs) - List all jobs
* [patch_ats_job](#patch_ats_job) - Update a job
* [remove_ats_job](#remove_ats_job) - Remove a job
* [update_ats_job](#update_ats_job) - Update a job

## create_ats_job

Create a job

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
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
    
res = s.job.create_ats_job(req)

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


## get_ats_job

Retrieve a job

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
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
    
res = s.job.get_ats_job(req)

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


## list_ats_jobs

List all jobs

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
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
    
res = s.job.list_ats_jobs(req)

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


## patch_ats_job

Update a job

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
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
    
res = s.job.patch_ats_job(req)

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


## remove_ats_job

Remove a job

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::RemoveAtsJobRequest.new(
  path_params=Operations::RemoveAtsJobRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.job.remove_ats_job(req)

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


## update_ats_job

Update a job

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
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
    
res = s.job.update_ats_job(req)

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

