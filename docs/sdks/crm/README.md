# Crm


### Available Operations

* [create_crm_company](#create_crm_company) - Create a company
* [create_crm_contact](#create_crm_contact) - Create a contact
* [create_crm_deal](#create_crm_deal) - Create a deal
* [create_crm_event](#create_crm_event) - Create a event
* [create_crm_file](#create_crm_file) - Create a file
* [create_crm_lead](#create_crm_lead) - Create a lead
* [create_crm_pipeline](#create_crm_pipeline) - Create a pipeline
* [get_crm_company](#get_crm_company) - Retrieve a company
* [get_crm_contact](#get_crm_contact) - Retrieve a contact
* [get_crm_deal](#get_crm_deal) - Retrieve a deal
* [get_crm_event](#get_crm_event) - Retrieve a event
* [get_crm_file](#get_crm_file) - Retrieve a file
* [get_crm_lead](#get_crm_lead) - Retrieve a lead
* [get_crm_pipeline](#get_crm_pipeline) - Retrieve a pipeline
* [list_crm_companies](#list_crm_companies) - List all companies
* [list_crm_contacts](#list_crm_contacts) - List all contacts
* [list_crm_deals](#list_crm_deals) - List all deals
* [list_crm_events](#list_crm_events) - List all events
* [list_crm_files](#list_crm_files) - List all files
* [list_crm_leads](#list_crm_leads) - List all leads
* [list_crm_pipelines](#list_crm_pipelines) - List all pipelines
* [patch_crm_company](#patch_crm_company) - Update a company
* [patch_crm_contact](#patch_crm_contact) - Update a contact
* [patch_crm_deal](#patch_crm_deal) - Update a deal
* [patch_crm_event](#patch_crm_event) - Update a event
* [patch_crm_file](#patch_crm_file) - Update a file
* [patch_crm_lead](#patch_crm_lead) - Update a lead
* [patch_crm_pipeline](#patch_crm_pipeline) - Update a pipeline
* [remove_crm_company](#remove_crm_company) - Remove a company
* [remove_crm_contact](#remove_crm_contact) - Remove a contact
* [remove_crm_deal](#remove_crm_deal) - Remove a deal
* [remove_crm_event](#remove_crm_event) - Remove a event
* [remove_crm_file](#remove_crm_file) - Remove a file
* [remove_crm_lead](#remove_crm_lead) - Remove a lead
* [remove_crm_pipeline](#remove_crm_pipeline) - Remove a pipeline
* [update_crm_company](#update_crm_company) - Update a company
* [update_crm_contact](#update_crm_contact) - Update a contact
* [update_crm_deal](#update_crm_deal) - Update a deal
* [update_crm_event](#update_crm_event) - Update a event
* [update_crm_file](#update_crm_file) - Update a file
* [update_crm_lead](#update_crm_lead) - Update a lead
* [update_crm_pipeline](#update_crm_pipeline) - Update a pipeline

## create_crm_company

Create a company

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreateCrmCompanyRequest.new(
  path_params=Operations::CreateCrmCompanyRequest.new(
    connection_id="string",
    crm_company=Shared::CrmCompany.new(
      address=Shared::PropertyCrmCompanyAddress.new(
        address1="string",
        address2="string",
        city="Joanieworth",
        country="Brazil",
        country_code="CW",
        postal_code="39571",
        region="string",
        region_code="string",
      ),
      created_at=DateTime.iso8601('2023-02-02T17:21:10.729Z'),
      deal_ids=.new[
        "string",
      ],
      emails=.new[
        Shared::CrmEmail.new(
          email="Precious.Wehner@yahoo.com",
          type=Shared::CrmEmailType::HOME,
        ),
      ],
      id="<ID>",
      is_active=false,
      name="string",
      raw=Shared::PropertyCrmCompanyRaw.new(),
      tags=.new[
        "string",
      ],
      telephones=.new[
        Shared::CrmTelephone.new(
          telephone="string",
          type=Shared::CrmTelephoneType::OTHER,
        ),
      ],
      updated_at=DateTime.iso8601('2022-07-18T18:29:25.490Z'),
      websites=.new[
        "string",
      ],
    ),
  ),
  crm_company=Shared::CrmCompany.new(
    address=Shared::PropertyCrmCompanyAddress.new(
      address1="string",
      address2="string",
      city="New Vivian",
      country="Mexico",
      country_code="IL",
      postal_code="22602",
      region="string",
      region_code="string",
    ),
    created_at=DateTime.iso8601('2022-01-11T10:01:27.401Z'),
    deal_ids=.new[
      "string",
    ],
    emails=.new[
      Shared::CrmEmail.new(
        email="Reyna38@gmail.com",
        type=Shared::CrmEmailType::OTHER,
      ),
    ],
    id="<ID>",
    is_active=false,
    name="string",
    raw=Shared::PropertyCrmCompanyRaw.new(),
    tags=.new[
      "string",
    ],
    telephones=.new[
      Shared::CrmTelephone.new(
        telephone="string",
        type=Shared::CrmTelephoneType::HOME,
      ),
    ],
    updated_at=DateTime.iso8601('2023-04-26T09:26:51.310Z'),
    websites=.new[
      "string",
    ],
  ),
)
    
res = s.crm.create_crm_company(req)

if ! res.crm_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                      | Type                                                                                           | Required                                                                                       | Description                                                                                    |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                | *String*                                                                                       | :heavy_check_mark:                                                                             | ID of the connection                                                                           |
| `crm_company`                                                                                  | [Shared::CrmCompany](../../models/shared/crmcompany.md)                                        | :heavy_minus_sign:                                                                             | A company represents an organization that optionally is associated with a deal and/or contacts |


### Response

**[T.nilable(Operations::CreateCrmCompanyResponse)](../../models/operations/createcrmcompanyresponse.md)**


## create_crm_contact

Create a contact

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreateCrmContactRequest.new(
  path_params=Operations::CreateCrmContactRequest.new(
    connection_id="string",
    crm_contact=Shared::CrmContact.new(
      address=Shared::PropertyCrmContactAddress.new(
        address1="string",
        address2="string",
        city="Steuberview",
        country="Bulgaria",
        country_code="QA",
        postal_code="98809",
        region="string",
        region_code="string",
      ),
      company="Pollich, Emard and Parker",
      company_ids=.new[
        "string",
      ],
      created_at=DateTime.iso8601('2023-03-07T16:46:57.366Z'),
      deal_ids=.new[
        "string",
      ],
      emails=.new[
        Shared::CrmEmail.new(
          email="Eliza63@hotmail.com",
          type=Shared::CrmEmailType::WORK,
        ),
      ],
      id="<ID>",
      name="string",
      raw=Shared::PropertyCrmContactRaw.new(),
      telephones=.new[
        Shared::CrmTelephone.new(
          telephone="string",
          type=Shared::CrmTelephoneType::WORK,
        ),
      ],
      title="string",
      updated_at=DateTime.iso8601('2022-12-17T18:52:33.837Z'),
    ),
  ),
  crm_contact=Shared::CrmContact.new(
    address=Shared::PropertyCrmContactAddress.new(
      address1="string",
      address2="string",
      city="Klingland",
      country="Israel",
      country_code="DZ",
      postal_code="40214-9763",
      region="string",
      region_code="string",
    ),
    company="Johnston, Rippin and Ziemann",
    company_ids=.new[
      "string",
    ],
    created_at=DateTime.iso8601('2023-09-19T01:08:58.565Z'),
    deal_ids=.new[
      "string",
    ],
    emails=.new[
      Shared::CrmEmail.new(
        email="Kirsten_Zboncak@hotmail.com",
        type=Shared::CrmEmailType::WORK,
      ),
    ],
    id="<ID>",
    name="string",
    raw=Shared::PropertyCrmContactRaw.new(),
    telephones=.new[
      Shared::CrmTelephone.new(
        telephone="string",
        type=Shared::CrmTelephoneType::FAX,
      ),
    ],
    title="string",
    updated_at=DateTime.iso8601('2021-08-21T01:24:09.539Z'),
  ),
)
    
res = s.crm.create_crm_contact(req)

if ! res.crm_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                | Type                                                                                     | Required                                                                                 | Description                                                                              |
| ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| `connection_id`                                                                          | *String*                                                                                 | :heavy_check_mark:                                                                       | ID of the connection                                                                     |
| `crm_contact`                                                                            | [Shared::CrmContact](../../models/shared/crmcontact.md)                                  | :heavy_minus_sign:                                                                       | A contact represents a person that optionally is associated with a deal and/or a company |


### Response

**[T.nilable(Operations::CreateCrmContactResponse)](../../models/operations/createcrmcontactresponse.md)**


## create_crm_deal

Create a deal

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreateCrmDealRequest.new(
  path_params=Operations::CreateCrmDealRequest.new(
    connection_id="string",
    crm_deal=Shared::CrmDeal.new(
      amount=1917.45,
      closed_at=DateTime.iso8601('2022-08-27T15:05:01.017Z'),
      created_at=DateTime.iso8601('2022-07-23T03:04:45.267Z'),
      currency="Cuban Peso",
      id="<ID>",
      lost_reason="string",
      name="string",
      pipeline="string",
      probability=1087.81,
      raw=Shared::PropertyCrmDealRaw.new(),
      source="string",
      stage="string",
      tags=.new[
        "string",
      ],
      updated_at=DateTime.iso8601('2022-10-13T05:28:26.663Z'),
      won_reason="string",
    ),
  ),
  crm_deal=Shared::CrmDeal.new(
    amount=9758.69,
    closed_at=DateTime.iso8601('2023-12-27T11:48:25.811Z'),
    created_at=DateTime.iso8601('2023-12-18T06:33:31.162Z'),
    currency="Latvian Lats",
    id="<ID>",
    lost_reason="string",
    name="string",
    pipeline="string",
    probability=5009.11,
    raw=Shared::PropertyCrmDealRaw.new(),
    source="string",
    stage="string",
    tags=.new[
      "string",
    ],
    updated_at=DateTime.iso8601('2023-09-14T17:02:42.959Z'),
    won_reason="string",
  ),
)
    
res = s.crm.create_crm_deal(req)

if ! res.crm_deal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `connection_id`                                                 | *String*                                                        | :heavy_check_mark:                                              | ID of the connection                                            |
| `crm_deal`                                                      | [Shared::CrmDeal](../../models/shared/crmdeal.md)               | :heavy_minus_sign:                                              | A deal represents an opportunity with companies and/or contacts |


### Response

**[T.nilable(Operations::CreateCrmDealResponse)](../../models/operations/createcrmdealresponse.md)**


## create_crm_event

Create a event

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreateCrmEventRequest.new(
  path_params=Operations::CreateCrmEventRequest.new(
    connection_id="string",
    crm_event=Shared::CrmEvent.new(
      call=Shared::PropertyCrmEventCall.new(
        description="Grass-roots intangible superstructure",
        duration=6684.26,
      ),
      company_ids=.new[
        "string",
      ],
      contact_ids=.new[
        "string",
      ],
      created_at=DateTime.iso8601('2023-07-15T01:49:08.083Z'),
      deal_ids=.new[
        "string",
      ],
      email=Shared::PropertyCrmEventEmail.new(
        body="string",
        cc=.new[
          "string",
        ],
        from="string",
        subject="string",
        to=.new[
          "string",
        ],
      ),
      id="<ID>",
      lead_ids=.new[
        "string",
      ],
      meeting=Shared::PropertyCrmEventMeeting.new(
        description="Synergized systemic adapter",
        end_at=DateTime.iso8601('2021-06-19T06:42:51.348Z'),
        start_at=DateTime.iso8601('2022-08-06T14:40:43.070Z'),
        title="string",
      ),
      note=Shared::PropertyCrmEventNote.new(
        description="Horizontal zero administration architecture",
      ),
      raw=Shared::PropertyCrmEventRaw.new(),
      task=Shared::PropertyCrmEventTask.new(
        description="Extended 5th generation artificial intelligence",
        name="string",
        status="string",
      ),
      type=Shared::CrmEventType::TASK,
      updated_at=DateTime.iso8601('2022-07-14T14:31:08.257Z'),
    ),
  ),
  crm_event=Shared::CrmEvent.new(
    call=Shared::PropertyCrmEventCall.new(
      description="Cross-group fresh-thinking circuit",
      duration=26.82,
    ),
    company_ids=.new[
      "string",
    ],
    contact_ids=.new[
      "string",
    ],
    created_at=DateTime.iso8601('2023-12-09T05:59:05.742Z'),
    deal_ids=.new[
      "string",
    ],
    email=Shared::PropertyCrmEventEmail.new(
      body="string",
      cc=.new[
        "string",
      ],
      from="string",
      subject="string",
      to=.new[
        "string",
      ],
    ),
    id="<ID>",
    lead_ids=.new[
      "string",
    ],
    meeting=Shared::PropertyCrmEventMeeting.new(
      description="Virtual homogeneous intranet",
      end_at=DateTime.iso8601('2022-02-19T23:06:43.801Z'),
      start_at=DateTime.iso8601('2021-03-05T21:23:02.258Z'),
      title="string",
    ),
    note=Shared::PropertyCrmEventNote.new(
      description="Synergistic bottom-line internet solution",
    ),
    raw=Shared::PropertyCrmEventRaw.new(),
    task=Shared::PropertyCrmEventTask.new(
      description="Vision-oriented tertiary system engine",
      name="string",
      status="string",
    ),
    type=Shared::CrmEventType::CALL,
    updated_at=DateTime.iso8601('2021-02-23T11:45:58.894Z'),
  ),
)
    
res = s.crm.create_crm_event(req)

if ! res.crm_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                                 | *String*                                                                                                        | :heavy_check_mark:                                                                                              | ID of the connection                                                                                            |
| `crm_event`                                                                                                     | [Shared::CrmEvent](../../models/shared/crmevent.md)                                                             | :heavy_minus_sign:                                                                                              | An event represents an event, activity, or engagement and is always associated with a deal, contact, or company |


### Response

**[T.nilable(Operations::CreateCrmEventResponse)](../../models/operations/createcrmeventresponse.md)**


## create_crm_file

Create a file

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreateCrmFileRequest.new(
  path_params=Operations::CreateCrmFileRequest.new(
    connection_id="string",
    crm_file=Shared::CrmFile.new(
      activity_id="string",
      company_id="string",
      contact_id="string",
      created_at=DateTime.iso8601('2023-08-23T16:58:07.247Z'),
      deal_id="string",
      description="Multi-lateral background database",
      file_name="the.mp4v",
      file_size=3460.69,
      file_type="text",
      file_url="string",
      id="<ID>",
      is_active=false,
      lead_id="string",
      raw=Shared::PropertyCrmFileRaw.new(),
      updated_at=DateTime.iso8601('2022-05-03T12:27:57.377Z'),
      user_id="string",
    ),
  ),
  crm_file=Shared::CrmFile.new(
    activity_id="string",
    company_id="string",
    contact_id="string",
    created_at=DateTime.iso8601('2023-08-10T11:37:23.312Z'),
    deal_id="string",
    description="Optional eco-centric definition",
    file_name="generate_coulomb.mp4v",
    file_size=7403.39,
    file_type="video",
    file_url="string",
    id="<ID>",
    is_active=false,
    lead_id="string",
    raw=Shared::PropertyCrmFileRaw.new(),
    updated_at=DateTime.iso8601('2023-02-24T15:04:00.401Z'),
    user_id="string",
  ),
)
    
res = s.crm.create_crm_file(req)

if ! res.crm_file.nil?
  # handle response
end

```

### Parameters

| Parameter                                         | Type                                              | Required                                          | Description                                       |
| ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- |
| `connection_id`                                   | *String*                                          | :heavy_check_mark:                                | ID of the connection                              |
| `crm_file`                                        | [Shared::CrmFile](../../models/shared/crmfile.md) | :heavy_minus_sign:                                | N/A                                               |


### Response

**[T.nilable(Operations::CreateCrmFileResponse)](../../models/operations/createcrmfileresponse.md)**


## create_crm_lead

Create a lead

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreateCrmLeadRequest.new(
  path_params=Operations::CreateCrmLeadRequest.new(
    connection_id="string",
    crm_lead=Shared::CrmLead.new(
      address=Shared::PropertyCrmLeadAddress.new(
        address1="string",
        address2="string",
        city="Lindboro",
        country="Saint Barthelemy",
        country_code="SG",
        postal_code="67307-8667",
        region="string",
        region_code="string",
      ),
      company_id="string",
      company_name="Langosh - Fritsch",
      contact_id="string",
      created_at=DateTime.iso8601('2022-12-22T23:40:58.272Z'),
      creator_user_id="string",
      emails=.new[
        Shared::CrmEmail.new(
          email="Jalyn_Johns60@hotmail.com",
          type=Shared::CrmEmailType::HOME,
        ),
      ],
      id="<ID>",
      is_active=false,
      name="string",
      raw=Shared::PropertyCrmLeadRaw.new(),
      source="string",
      status="string",
      telephones=.new[
        Shared::CrmTelephone.new(
          telephone="string",
          type=Shared::CrmTelephoneType::HOME,
        ),
      ],
      updated_at=DateTime.iso8601('2021-08-05T22:44:34.992Z'),
      user_id="string",
    ),
  ),
  crm_lead=Shared::CrmLead.new(
    address=Shared::PropertyCrmLeadAddress.new(
      address1="string",
      address2="string",
      city="Agustinaland",
      country="Kazakhstan",
      country_code="RE",
      postal_code="96384-1577",
      region="string",
      region_code="string",
    ),
    company_id="string",
    company_name="Senger - O'Keefe",
    contact_id="string",
    created_at=DateTime.iso8601('2023-09-23T09:55:53.203Z'),
    creator_user_id="string",
    emails=.new[
      Shared::CrmEmail.new(
        email="Christophe18@gmail.com",
        type=Shared::CrmEmailType::OTHER,
      ),
    ],
    id="<ID>",
    is_active=false,
    name="string",
    raw=Shared::PropertyCrmLeadRaw.new(),
    source="string",
    status="string",
    telephones=.new[
      Shared::CrmTelephone.new(
        telephone="string",
        type=Shared::CrmTelephoneType::FAX,
      ),
    ],
    updated_at=DateTime.iso8601('2022-05-12T05:20:11.253Z'),
    user_id="string",
  ),
)
    
res = s.crm.create_crm_lead(req)

if ! res.crm_lead.nil?
  # handle response
end

```

### Parameters

| Parameter                                         | Type                                              | Required                                          | Description                                       |
| ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- |
| `connection_id`                                   | *String*                                          | :heavy_check_mark:                                | ID of the connection                              |
| `crm_lead`                                        | [Shared::CrmLead](../../models/shared/crmlead.md) | :heavy_minus_sign:                                | N/A                                               |


### Response

**[T.nilable(Operations::CreateCrmLeadResponse)](../../models/operations/createcrmleadresponse.md)**


## create_crm_pipeline

Create a pipeline

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreateCrmPipelineRequest.new(
  path_params=Operations::CreateCrmPipelineRequest.new(
    connection_id="string",
    crm_pipeline=Shared::CrmPipeline.new(
      created_at=DateTime.iso8601('2023-06-24T14:15:54.218Z'),
      deal_probability=false,
      display_order=6254.97,
      id="<ID>",
      is_active=false,
      name="string",
      raw=Shared::PropertyCrmPipelineRaw.new(),
      updated_at=DateTime.iso8601('2021-12-01T06:10:18.007Z'),
    ),
  ),
  crm_pipeline=Shared::CrmPipeline.new(
    created_at=DateTime.iso8601('2021-06-06T13:49:53.753Z'),
    deal_probability=false,
    display_order=6667.79,
    id="<ID>",
    is_active=false,
    name="string",
    raw=Shared::PropertyCrmPipelineRaw.new(),
    updated_at=DateTime.iso8601('2021-01-02T18:17:15.629Z'),
  ),
)
    
res = s.crm.create_crm_pipeline(req)

if ! res.crm_pipeline.nil?
  # handle response
end

```

### Parameters

| Parameter                                                 | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `connection_id`                                           | *String*                                                  | :heavy_check_mark:                                        | ID of the connection                                      |
| `crm_pipeline`                                            | [Shared::CrmPipeline](../../models/shared/crmpipeline.md) | :heavy_minus_sign:                                        | N/A                                                       |


### Response

**[T.nilable(Operations::CreateCrmPipelineResponse)](../../models/operations/createcrmpipelineresponse.md)**


## get_crm_company

Retrieve a company

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetCrmCompanyRequest.new(
  path_params=Operations::GetCrmCompanyRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetCrmCompanyRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.crm.get_crm_company(req)

if ! res.crm_company.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Company                |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetCrmCompanyResponse)](../../models/operations/getcrmcompanyresponse.md)**


## get_crm_contact

Retrieve a contact

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetCrmContactRequest.new(
  path_params=Operations::GetCrmContactRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetCrmContactRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.crm.get_crm_contact(req)

if ! res.crm_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Contact                |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetCrmContactResponse)](../../models/operations/getcrmcontactresponse.md)**


## get_crm_deal

Retrieve a deal

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetCrmDealRequest.new(
  path_params=Operations::GetCrmDealRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetCrmDealRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.crm.get_crm_deal(req)

if ! res.crm_deal.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Deal                   |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetCrmDealResponse)](../../models/operations/getcrmdealresponse.md)**


## get_crm_event

Retrieve a event

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetCrmEventRequest.new(
  path_params=Operations::GetCrmEventRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetCrmEventRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.crm.get_crm_event(req)

if ! res.crm_event.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Event                  |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetCrmEventResponse)](../../models/operations/getcrmeventresponse.md)**


## get_crm_file

Retrieve a file

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetCrmFileRequest.new(
  path_params=Operations::GetCrmFileRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetCrmFileRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.crm.get_crm_file(req)

if ! res.crm_file.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the File                   |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetCrmFileResponse)](../../models/operations/getcrmfileresponse.md)**


## get_crm_lead

Retrieve a lead

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetCrmLeadRequest.new(
  path_params=Operations::GetCrmLeadRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetCrmLeadRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.crm.get_crm_lead(req)

if ! res.crm_lead.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Lead                   |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetCrmLeadResponse)](../../models/operations/getcrmleadresponse.md)**


## get_crm_pipeline

Retrieve a pipeline

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetCrmPipelineRequest.new(
  path_params=Operations::GetCrmPipelineRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetCrmPipelineRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.crm.get_crm_pipeline(req)

if ! res.crm_pipeline.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Pipeline               |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetCrmPipelineResponse)](../../models/operations/getcrmpipelineresponse.md)**


## list_crm_companies

List all companies

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListCrmCompaniesRequest.new(
  path_params=Operations::ListCrmCompaniesRequest.new(
    connection_id="string",
    contact_id="string",
    deal_id="string",
    fields=.new[
      "string",
    ],
    limit=9883.97,
    offset=5913.88,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2022-05-02T07:12:37.628Z'),
  ),
  query_params=Operations::ListCrmCompaniesRequest.new(
    connection_id="string",
    contact_id="string",
    deal_id="string",
    fields=.new[
      "string",
    ],
    limit=4931.86,
    offset=9358.58,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-01-24T17:35:02.685Z'),
  ),
)
    
res = s.crm.list_crm_companies(req)

if ! res.crm_companies.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Operations::ListCrmCompaniesRequest](../../models/operations/listcrmcompaniesrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |


### Response

**[T.nilable(Operations::ListCrmCompaniesResponse)](../../models/operations/listcrmcompaniesresponse.md)**


## list_crm_contacts

List all contacts

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListCrmContactsRequest.new(
  path_params=Operations::ListCrmContactsRequest.new(
    company_id="string",
    connection_id="string",
    deal_id="string",
    fields=.new[
      "string",
    ],
    limit=7110.24,
    offset=2657.43,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2022-11-15T04:38:32.631Z'),
  ),
  query_params=Operations::ListCrmContactsRequest.new(
    company_id="string",
    connection_id="string",
    deal_id="string",
    fields=.new[
      "string",
    ],
    limit=1163.91,
    offset=9174.21,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-05-29T05:01:19.423Z'),
  ),
)
    
res = s.crm.list_crm_contacts(req)

if ! res.crm_contacts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Operations::ListCrmContactsRequest](../../models/operations/listcrmcontactsrequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |


### Response

**[T.nilable(Operations::ListCrmContactsResponse)](../../models/operations/listcrmcontactsresponse.md)**


## list_crm_deals

List all deals

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListCrmDealsRequest.new(
  path_params=Operations::ListCrmDealsRequest.new(
    company_id="string",
    connection_id="string",
    contact_id="string",
    fields=.new[
      "string",
    ],
    limit=917.49,
    offset=8216.92,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2022-09-03T12:16:34.604Z'),
  ),
  query_params=Operations::ListCrmDealsRequest.new(
    company_id="string",
    connection_id="string",
    contact_id="string",
    fields=.new[
      "string",
    ],
    limit=7102.93,
    offset=1979.81,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2022-05-16T12:08:10.609Z'),
  ),
)
    
res = s.crm.list_crm_deals(req)

if ! res.crm_deals.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `request`                                                                         | [Operations::ListCrmDealsRequest](../../models/operations/listcrmdealsrequest.md) | :heavy_check_mark:                                                                | The request object to use for the request.                                        |


### Response

**[T.nilable(Operations::ListCrmDealsResponse)](../../models/operations/listcrmdealsresponse.md)**


## list_crm_events

List all events

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListCrmEventsRequest.new(
  path_params=Operations::ListCrmEventsRequest.new(
    company_id="string",
    connection_id="string",
    contact_id="string",
    deal_id="string",
    fields=.new[
      "string",
    ],
    limit=4453.11,
    offset=4555.2,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2023-04-30T09:02:38.779Z'),
  ),
  query_params=Operations::ListCrmEventsRequest.new(
    company_id="string",
    connection_id="string",
    contact_id="string",
    deal_id="string",
    fields=.new[
      "string",
    ],
    limit=8888.17,
    offset=3018.9,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-11-25T04:59:22.252Z'),
  ),
)
    
res = s.crm.list_crm_events(req)

if ! res.crm_events.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `request`                                                                           | [Operations::ListCrmEventsRequest](../../models/operations/listcrmeventsrequest.md) | :heavy_check_mark:                                                                  | The request object to use for the request.                                          |


### Response

**[T.nilable(Operations::ListCrmEventsResponse)](../../models/operations/listcrmeventsresponse.md)**


## list_crm_files

List all files

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListCrmFilesRequest.new(
  path_params=Operations::ListCrmFilesRequest.new(
    company_id="string",
    connection_id="string",
    contact_id="string",
    deal_id="string",
    fields=.new[
      "string",
    ],
    limit=7725.49,
    offset=1697.5,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2023-11-04T18:55:22.126Z'),
  ),
  query_params=Operations::ListCrmFilesRequest.new(
    company_id="string",
    connection_id="string",
    contact_id="string",
    deal_id="string",
    fields=.new[
      "string",
    ],
    limit=6015.86,
    offset=4153.39,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-04-22T07:08:20.256Z'),
  ),
)
    
res = s.crm.list_crm_files(req)

if ! res.crm_files.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `request`                                                                         | [Operations::ListCrmFilesRequest](../../models/operations/listcrmfilesrequest.md) | :heavy_check_mark:                                                                | The request object to use for the request.                                        |


### Response

**[T.nilable(Operations::ListCrmFilesResponse)](../../models/operations/listcrmfilesresponse.md)**


## list_crm_leads

List all leads

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListCrmLeadsRequest.new(
  path_params=Operations::ListCrmLeadsRequest.new(
    company_id="string",
    connection_id="string",
    contact_id="string",
    fields=.new[
      "string",
    ],
    limit=2895.08,
    offset=6446.8,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2023-01-11T15:13:29.920Z'),
  ),
  query_params=Operations::ListCrmLeadsRequest.new(
    company_id="string",
    connection_id="string",
    contact_id="string",
    fields=.new[
      "string",
    ],
    limit=5756.06,
    offset=1922.44,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2023-09-25T02:45:31.870Z'),
  ),
)
    
res = s.crm.list_crm_leads(req)

if ! res.crm_leads.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `request`                                                                         | [Operations::ListCrmLeadsRequest](../../models/operations/listcrmleadsrequest.md) | :heavy_check_mark:                                                                | The request object to use for the request.                                        |


### Response

**[T.nilable(Operations::ListCrmLeadsResponse)](../../models/operations/listcrmleadsresponse.md)**


## list_crm_pipelines

List all pipelines

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListCrmPipelinesRequest.new(
  path_params=Operations::ListCrmPipelinesRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=3318.18,
    offset=4834.28,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-04-29T15:47:27.871Z'),
  ),
  query_params=Operations::ListCrmPipelinesRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=7011.75,
    offset=2585.55,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-10-11T04:39:13.801Z'),
  ),
)
    
res = s.crm.list_crm_pipelines(req)

if ! res.crm_pipelines.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Operations::ListCrmPipelinesRequest](../../models/operations/listcrmpipelinesrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |


### Response

**[T.nilable(Operations::ListCrmPipelinesResponse)](../../models/operations/listcrmpipelinesresponse.md)**


## patch_crm_company

Update a company

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::PatchCrmCompanyRequest.new(
  path_params=Operations::PatchCrmCompanyRequest.new(
    connection_id="string",
    id="<ID>",
    crm_company=Shared::CrmCompany.new(
      address=Shared::PropertyCrmCompanyAddress.new(
        address1="string",
        address2="string",
        city="Rempelchester",
        country="Christmas Island",
        country_code="LA",
        postal_code="53644",
        region="string",
        region_code="string",
      ),
      created_at=DateTime.iso8601('2021-01-19T16:28:56.295Z'),
      deal_ids=.new[
        "string",
      ],
      emails=.new[
        Shared::CrmEmail.new(
          email="Leone.Schinner@gmail.com",
          type=Shared::CrmEmailType::WORK,
        ),
      ],
      id="<ID>",
      is_active=false,
      name="string",
      raw=Shared::PropertyCrmCompanyRaw.new(),
      tags=.new[
        "string",
      ],
      telephones=.new[
        Shared::CrmTelephone.new(
          telephone="string",
          type=Shared::CrmTelephoneType::WORK,
        ),
      ],
      updated_at=DateTime.iso8601('2023-04-28T18:51:23.410Z'),
      websites=.new[
        "string",
      ],
    ),
  ),
  crm_company=Shared::CrmCompany.new(
    address=Shared::PropertyCrmCompanyAddress.new(
      address1="string",
      address2="string",
      city="Hilpertboro",
      country="Sweden",
      country_code="DK",
      postal_code="28028-7708",
      region="string",
      region_code="string",
    ),
    created_at=DateTime.iso8601('2022-01-24T16:51:53.306Z'),
    deal_ids=.new[
      "string",
    ],
    emails=.new[
      Shared::CrmEmail.new(
        email="Shania14@hotmail.com",
        type=Shared::CrmEmailType::WORK,
      ),
    ],
    id="<ID>",
    is_active=false,
    name="string",
    raw=Shared::PropertyCrmCompanyRaw.new(),
    tags=.new[
      "string",
    ],
    telephones=.new[
      Shared::CrmTelephone.new(
        telephone="string",
        type=Shared::CrmTelephoneType::HOME,
      ),
    ],
    updated_at=DateTime.iso8601('2022-06-19T22:01:36.152Z'),
    websites=.new[
      "string",
    ],
  ),
)
    
res = s.crm.patch_crm_company(req)

if ! res.crm_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                      | Type                                                                                           | Required                                                                                       | Description                                                                                    |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                | *String*                                                                                       | :heavy_check_mark:                                                                             | ID of the connection                                                                           |
| `id`                                                                                           | *String*                                                                                       | :heavy_check_mark:                                                                             | ID of the Company                                                                              |
| `crm_company`                                                                                  | [Shared::CrmCompany](../../models/shared/crmcompany.md)                                        | :heavy_minus_sign:                                                                             | A company represents an organization that optionally is associated with a deal and/or contacts |


### Response

**[T.nilable(Operations::PatchCrmCompanyResponse)](../../models/operations/patchcrmcompanyresponse.md)**


## patch_crm_contact

Update a contact

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::PatchCrmContactRequest.new(
  path_params=Operations::PatchCrmContactRequest.new(
    connection_id="string",
    id="<ID>",
    crm_contact=Shared::CrmContact.new(
      address=Shared::PropertyCrmContactAddress.new(
        address1="string",
        address2="string",
        city="North Anne",
        country="Puerto Rico",
        country_code="GD",
        postal_code="31015",
        region="string",
        region_code="string",
      ),
      company="Goyette - Schultz",
      company_ids=.new[
        "string",
      ],
      created_at=DateTime.iso8601('2021-07-11T20:03:30.520Z'),
      deal_ids=.new[
        "string",
      ],
      emails=.new[
        Shared::CrmEmail.new(
          email="Jevon_Bruen16@gmail.com",
          type=Shared::CrmEmailType::OTHER,
        ),
      ],
      id="<ID>",
      name="string",
      raw=Shared::PropertyCrmContactRaw.new(),
      telephones=.new[
        Shared::CrmTelephone.new(
          telephone="string",
          type=Shared::CrmTelephoneType::WORK,
        ),
      ],
      title="string",
      updated_at=DateTime.iso8601('2022-10-02T09:04:43.745Z'),
    ),
  ),
  crm_contact=Shared::CrmContact.new(
    address=Shared::PropertyCrmContactAddress.new(
      address1="string",
      address2="string",
      city="East Maybelle",
      country="Kazakhstan",
      country_code="VU",
      postal_code="41163-7686",
      region="string",
      region_code="string",
    ),
    company="Runte, Harvey and Green",
    company_ids=.new[
      "string",
    ],
    created_at=DateTime.iso8601('2022-12-06T06:56:39.588Z'),
    deal_ids=.new[
      "string",
    ],
    emails=.new[
      Shared::CrmEmail.new(
        email="Valentin_Roberts10@gmail.com",
        type=Shared::CrmEmailType::HOME,
      ),
    ],
    id="<ID>",
    name="string",
    raw=Shared::PropertyCrmContactRaw.new(),
    telephones=.new[
      Shared::CrmTelephone.new(
        telephone="string",
        type=Shared::CrmTelephoneType::HOME,
      ),
    ],
    title="string",
    updated_at=DateTime.iso8601('2021-04-24T08:35:59.507Z'),
  ),
)
    
res = s.crm.patch_crm_contact(req)

if ! res.crm_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                | Type                                                                                     | Required                                                                                 | Description                                                                              |
| ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| `connection_id`                                                                          | *String*                                                                                 | :heavy_check_mark:                                                                       | ID of the connection                                                                     |
| `id`                                                                                     | *String*                                                                                 | :heavy_check_mark:                                                                       | ID of the Contact                                                                        |
| `crm_contact`                                                                            | [Shared::CrmContact](../../models/shared/crmcontact.md)                                  | :heavy_minus_sign:                                                                       | A contact represents a person that optionally is associated with a deal and/or a company |


### Response

**[T.nilable(Operations::PatchCrmContactResponse)](../../models/operations/patchcrmcontactresponse.md)**


## patch_crm_deal

Update a deal

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::PatchCrmDealRequest.new(
  path_params=Operations::PatchCrmDealRequest.new(
    connection_id="string",
    id="<ID>",
    crm_deal=Shared::CrmDeal.new(
      amount=9874.05,
      closed_at=DateTime.iso8601('2021-07-09T08:48:03.715Z'),
      created_at=DateTime.iso8601('2022-04-30T07:03:46.302Z'),
      currency="Riel",
      id="<ID>",
      lost_reason="string",
      name="string",
      pipeline="string",
      probability=9555.58,
      raw=Shared::PropertyCrmDealRaw.new(),
      source="string",
      stage="string",
      tags=.new[
        "string",
      ],
      updated_at=DateTime.iso8601('2023-02-21T14:41:27.897Z'),
      won_reason="string",
    ),
  ),
  crm_deal=Shared::CrmDeal.new(
    amount=639.27,
    closed_at=DateTime.iso8601('2021-03-27T18:57:29.941Z'),
    created_at=DateTime.iso8601('2022-03-18T14:17:53.089Z'),
    currency="New Taiwan Dollar",
    id="<ID>",
    lost_reason="string",
    name="string",
    pipeline="string",
    probability=3726.77,
    raw=Shared::PropertyCrmDealRaw.new(),
    source="string",
    stage="string",
    tags=.new[
      "string",
    ],
    updated_at=DateTime.iso8601('2022-05-20T20:08:30.204Z'),
    won_reason="string",
  ),
)
    
res = s.crm.patch_crm_deal(req)

if ! res.crm_deal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `connection_id`                                                 | *String*                                                        | :heavy_check_mark:                                              | ID of the connection                                            |
| `id`                                                            | *String*                                                        | :heavy_check_mark:                                              | ID of the Deal                                                  |
| `crm_deal`                                                      | [Shared::CrmDeal](../../models/shared/crmdeal.md)               | :heavy_minus_sign:                                              | A deal represents an opportunity with companies and/or contacts |


### Response

**[T.nilable(Operations::PatchCrmDealResponse)](../../models/operations/patchcrmdealresponse.md)**


## patch_crm_event

Update a event

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::PatchCrmEventRequest.new(
  path_params=Operations::PatchCrmEventRequest.new(
    connection_id="string",
    id="<ID>",
    crm_event=Shared::CrmEvent.new(
      call=Shared::PropertyCrmEventCall.new(
        description="Multi-layered well-modulated middleware",
        duration=8718.07,
      ),
      company_ids=.new[
        "string",
      ],
      contact_ids=.new[
        "string",
      ],
      created_at=DateTime.iso8601('2022-07-20T20:04:26.682Z'),
      deal_ids=.new[
        "string",
      ],
      email=Shared::PropertyCrmEventEmail.new(
        body="string",
        cc=.new[
          "string",
        ],
        from="string",
        subject="string",
        to=.new[
          "string",
        ],
      ),
      id="<ID>",
      lead_ids=.new[
        "string",
      ],
      meeting=Shared::PropertyCrmEventMeeting.new(
        description="Horizontal uniform access",
        end_at=DateTime.iso8601('2022-11-19T03:29:57.620Z'),
        start_at=DateTime.iso8601('2021-05-11T20:55:56.558Z'),
        title="string",
      ),
      note=Shared::PropertyCrmEventNote.new(
        description="Exclusive non-volatile conglomeration",
      ),
      raw=Shared::PropertyCrmEventRaw.new(),
      task=Shared::PropertyCrmEventTask.new(
        description="Cross-platform bi-directional open architecture",
        name="string",
        status="string",
      ),
      type=Shared::CrmEventType::TASK,
      updated_at=DateTime.iso8601('2023-11-30T20:46:48.999Z'),
    ),
  ),
  crm_event=Shared::CrmEvent.new(
    call=Shared::PropertyCrmEventCall.new(
      description="Diverse content-based circuit",
      duration=8142.36,
    ),
    company_ids=.new[
      "string",
    ],
    contact_ids=.new[
      "string",
    ],
    created_at=DateTime.iso8601('2022-10-23T05:51:18.046Z'),
    deal_ids=.new[
      "string",
    ],
    email=Shared::PropertyCrmEventEmail.new(
      body="string",
      cc=.new[
        "string",
      ],
      from="string",
      subject="string",
      to=.new[
        "string",
      ],
    ),
    id="<ID>",
    lead_ids=.new[
      "string",
    ],
    meeting=Shared::PropertyCrmEventMeeting.new(
      description="Networked solution-oriented pricing structure",
      end_at=DateTime.iso8601('2021-04-04T22:32:03.633Z'),
      start_at=DateTime.iso8601('2023-09-07T12:04:09.815Z'),
      title="string",
    ),
    note=Shared::PropertyCrmEventNote.new(
      description="Multi-tiered object-oriented time-frame",
    ),
    raw=Shared::PropertyCrmEventRaw.new(),
    task=Shared::PropertyCrmEventTask.new(
      description="User-friendly bi-directional core",
      name="string",
      status="string",
    ),
    type=Shared::CrmEventType::CALL,
    updated_at=DateTime.iso8601('2021-04-08T05:57:23.257Z'),
  ),
)
    
res = s.crm.patch_crm_event(req)

if ! res.crm_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                                 | *String*                                                                                                        | :heavy_check_mark:                                                                                              | ID of the connection                                                                                            |
| `id`                                                                                                            | *String*                                                                                                        | :heavy_check_mark:                                                                                              | ID of the Event                                                                                                 |
| `crm_event`                                                                                                     | [Shared::CrmEvent](../../models/shared/crmevent.md)                                                             | :heavy_minus_sign:                                                                                              | An event represents an event, activity, or engagement and is always associated with a deal, contact, or company |


### Response

**[T.nilable(Operations::PatchCrmEventResponse)](../../models/operations/patchcrmeventresponse.md)**


## patch_crm_file

Update a file

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::PatchCrmFileRequest.new(
  path_params=Operations::PatchCrmFileRequest.new(
    connection_id="string",
    id="<ID>",
    crm_file=Shared::CrmFile.new(
      activity_id="string",
      company_id="string",
      contact_id="string",
      created_at=DateTime.iso8601('2021-08-02T16:08:30.860Z'),
      deal_id="string",
      description="Networked multimedia database",
      file_name="country.wav",
      file_size=7551.13,
      file_type="image",
      file_url="string",
      id="<ID>",
      is_active=false,
      lead_id="string",
      raw=Shared::PropertyCrmFileRaw.new(),
      updated_at=DateTime.iso8601('2023-06-07T04:39:27.375Z'),
      user_id="string",
    ),
  ),
  crm_file=Shared::CrmFile.new(
    activity_id="string",
    company_id="string",
    contact_id="string",
    created_at=DateTime.iso8601('2022-11-28T15:45:27.179Z'),
    deal_id="string",
    description="Assimilated tertiary circuit",
    file_name="default.jpg",
    file_size=3321.2,
    file_type="text",
    file_url="string",
    id="<ID>",
    is_active=false,
    lead_id="string",
    raw=Shared::PropertyCrmFileRaw.new(),
    updated_at=DateTime.iso8601('2021-07-08T15:56:09.015Z'),
    user_id="string",
  ),
)
    
res = s.crm.patch_crm_file(req)

if ! res.crm_file.nil?
  # handle response
end

```

### Parameters

| Parameter                                         | Type                                              | Required                                          | Description                                       |
| ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- |
| `connection_id`                                   | *String*                                          | :heavy_check_mark:                                | ID of the connection                              |
| `id`                                              | *String*                                          | :heavy_check_mark:                                | ID of the File                                    |
| `crm_file`                                        | [Shared::CrmFile](../../models/shared/crmfile.md) | :heavy_minus_sign:                                | N/A                                               |


### Response

**[T.nilable(Operations::PatchCrmFileResponse)](../../models/operations/patchcrmfileresponse.md)**


## patch_crm_lead

Update a lead

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::PatchCrmLeadRequest.new(
  path_params=Operations::PatchCrmLeadRequest.new(
    connection_id="string",
    id="<ID>",
    crm_lead=Shared::CrmLead.new(
      address=Shared::PropertyCrmLeadAddress.new(
        address1="string",
        address2="string",
        city="Caseyberg",
        country="Cote d'Ivoire",
        country_code="LK",
        postal_code="22291",
        region="string",
        region_code="string",
      ),
      company_id="string",
      company_name="Altenwerth, Lebsack and Wintheiser",
      contact_id="string",
      created_at=DateTime.iso8601('2022-12-15T21:54:30.872Z'),
      creator_user_id="string",
      emails=.new[
        Shared::CrmEmail.new(
          email="Hazle_Satterfield@gmail.com",
          type=Shared::CrmEmailType::HOME,
        ),
      ],
      id="<ID>",
      is_active=false,
      name="string",
      raw=Shared::PropertyCrmLeadRaw.new(),
      source="string",
      status="string",
      telephones=.new[
        Shared::CrmTelephone.new(
          telephone="string",
          type=Shared::CrmTelephoneType::HOME,
        ),
      ],
      updated_at=DateTime.iso8601('2021-01-23T08:42:46.802Z'),
      user_id="string",
    ),
  ),
  crm_lead=Shared::CrmLead.new(
    address=Shared::PropertyCrmLeadAddress.new(
      address1="string",
      address2="string",
      city="South Weston",
      country="Guatemala",
      country_code="MA",
      postal_code="34441-0731",
      region="string",
      region_code="string",
    ),
    company_id="string",
    company_name="Price, Flatley and Toy",
    contact_id="string",
    created_at=DateTime.iso8601('2022-03-04T09:28:39.755Z'),
    creator_user_id="string",
    emails=.new[
      Shared::CrmEmail.new(
        email="Aurelio.Littel@yahoo.com",
        type=Shared::CrmEmailType::WORK,
      ),
    ],
    id="<ID>",
    is_active=false,
    name="string",
    raw=Shared::PropertyCrmLeadRaw.new(),
    source="string",
    status="string",
    telephones=.new[
      Shared::CrmTelephone.new(
        telephone="string",
        type=Shared::CrmTelephoneType::FAX,
      ),
    ],
    updated_at=DateTime.iso8601('2022-06-08T19:19:31.481Z'),
    user_id="string",
  ),
)
    
res = s.crm.patch_crm_lead(req)

if ! res.crm_lead.nil?
  # handle response
end

```

### Parameters

| Parameter                                         | Type                                              | Required                                          | Description                                       |
| ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- |
| `connection_id`                                   | *String*                                          | :heavy_check_mark:                                | ID of the connection                              |
| `id`                                              | *String*                                          | :heavy_check_mark:                                | ID of the Lead                                    |
| `crm_lead`                                        | [Shared::CrmLead](../../models/shared/crmlead.md) | :heavy_minus_sign:                                | N/A                                               |


### Response

**[T.nilable(Operations::PatchCrmLeadResponse)](../../models/operations/patchcrmleadresponse.md)**


## patch_crm_pipeline

Update a pipeline

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::PatchCrmPipelineRequest.new(
  path_params=Operations::PatchCrmPipelineRequest.new(
    connection_id="string",
    id="<ID>",
    crm_pipeline=Shared::CrmPipeline.new(
      created_at=DateTime.iso8601('2023-08-26T17:19:01.949Z'),
      deal_probability=false,
      display_order=8620.92,
      id="<ID>",
      is_active=false,
      name="string",
      raw=Shared::PropertyCrmPipelineRaw.new(),
      updated_at=DateTime.iso8601('2022-04-03T12:55:27.421Z'),
    ),
  ),
  crm_pipeline=Shared::CrmPipeline.new(
    created_at=DateTime.iso8601('2021-02-25T11:56:03.682Z'),
    deal_probability=false,
    display_order=2072.1,
    id="<ID>",
    is_active=false,
    name="string",
    raw=Shared::PropertyCrmPipelineRaw.new(),
    updated_at=DateTime.iso8601('2021-09-02T03:10:12.625Z'),
  ),
)
    
res = s.crm.patch_crm_pipeline(req)

if ! res.crm_pipeline.nil?
  # handle response
end

```

### Parameters

| Parameter                                                 | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `connection_id`                                           | *String*                                                  | :heavy_check_mark:                                        | ID of the connection                                      |
| `id`                                                      | *String*                                                  | :heavy_check_mark:                                        | ID of the Pipeline                                        |
| `crm_pipeline`                                            | [Shared::CrmPipeline](../../models/shared/crmpipeline.md) | :heavy_minus_sign:                                        | N/A                                                       |


### Response

**[T.nilable(Operations::PatchCrmPipelineResponse)](../../models/operations/patchcrmpipelineresponse.md)**


## remove_crm_company

Remove a company

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveCrmCompanyRequest.new(
  path_params=Operations::RemoveCrmCompanyRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.crm.remove_crm_company(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Company    |


### Response

**[T.nilable(Operations::RemoveCrmCompanyResponse)](../../models/operations/removecrmcompanyresponse.md)**


## remove_crm_contact

Remove a contact

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveCrmContactRequest.new(
  path_params=Operations::RemoveCrmContactRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.crm.remove_crm_contact(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Contact    |


### Response

**[T.nilable(Operations::RemoveCrmContactResponse)](../../models/operations/removecrmcontactresponse.md)**


## remove_crm_deal

Remove a deal

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveCrmDealRequest.new(
  path_params=Operations::RemoveCrmDealRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.crm.remove_crm_deal(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Deal       |


### Response

**[T.nilable(Operations::RemoveCrmDealResponse)](../../models/operations/removecrmdealresponse.md)**


## remove_crm_event

Remove a event

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveCrmEventRequest.new(
  path_params=Operations::RemoveCrmEventRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.crm.remove_crm_event(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Event      |


### Response

**[T.nilable(Operations::RemoveCrmEventResponse)](../../models/operations/removecrmeventresponse.md)**


## remove_crm_file

Remove a file

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveCrmFileRequest.new(
  path_params=Operations::RemoveCrmFileRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.crm.remove_crm_file(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the File       |


### Response

**[T.nilable(Operations::RemoveCrmFileResponse)](../../models/operations/removecrmfileresponse.md)**


## remove_crm_lead

Remove a lead

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveCrmLeadRequest.new(
  path_params=Operations::RemoveCrmLeadRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.crm.remove_crm_lead(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Lead       |


### Response

**[T.nilable(Operations::RemoveCrmLeadResponse)](../../models/operations/removecrmleadresponse.md)**


## remove_crm_pipeline

Remove a pipeline

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveCrmPipelineRequest.new(
  path_params=Operations::RemoveCrmPipelineRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.crm.remove_crm_pipeline(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Pipeline   |


### Response

**[T.nilable(Operations::RemoveCrmPipelineResponse)](../../models/operations/removecrmpipelineresponse.md)**


## update_crm_company

Update a company

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::UpdateCrmCompanyRequest.new(
  path_params=Operations::UpdateCrmCompanyRequest.new(
    connection_id="string",
    id="<ID>",
    crm_company=Shared::CrmCompany.new(
      address=Shared::PropertyCrmCompanyAddress.new(
        address1="string",
        address2="string",
        city="Margeshire",
        country="Bahrain",
        country_code="WS",
        postal_code="27563",
        region="string",
        region_code="string",
      ),
      created_at=DateTime.iso8601('2022-06-18T22:28:27.597Z'),
      deal_ids=.new[
        "string",
      ],
      emails=.new[
        Shared::CrmEmail.new(
          email="Yasmine55@yahoo.com",
          type=Shared::CrmEmailType::HOME,
        ),
      ],
      id="<ID>",
      is_active=false,
      name="string",
      raw=Shared::PropertyCrmCompanyRaw.new(),
      tags=.new[
        "string",
      ],
      telephones=.new[
        Shared::CrmTelephone.new(
          telephone="string",
          type=Shared::CrmTelephoneType::HOME,
        ),
      ],
      updated_at=DateTime.iso8601('2021-09-16T02:31:51.995Z'),
      websites=.new[
        "string",
      ],
    ),
  ),
  crm_company=Shared::CrmCompany.new(
    address=Shared::PropertyCrmCompanyAddress.new(
      address1="string",
      address2="string",
      city="Port Stephen",
      country="Netherlands Antilles",
      country_code="YT",
      postal_code="14844-8452",
      region="string",
      region_code="string",
    ),
    created_at=DateTime.iso8601('2022-10-31T02:59:23.327Z'),
    deal_ids=.new[
      "string",
    ],
    emails=.new[
      Shared::CrmEmail.new(
        email="Winston36@hotmail.com",
        type=Shared::CrmEmailType::WORK,
      ),
    ],
    id="<ID>",
    is_active=false,
    name="string",
    raw=Shared::PropertyCrmCompanyRaw.new(),
    tags=.new[
      "string",
    ],
    telephones=.new[
      Shared::CrmTelephone.new(
        telephone="string",
        type=Shared::CrmTelephoneType::OTHER,
      ),
    ],
    updated_at=DateTime.iso8601('2023-04-09T07:26:09.162Z'),
    websites=.new[
      "string",
    ],
  ),
)
    
res = s.crm.update_crm_company(req)

if ! res.crm_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                      | Type                                                                                           | Required                                                                                       | Description                                                                                    |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                | *String*                                                                                       | :heavy_check_mark:                                                                             | ID of the connection                                                                           |
| `id`                                                                                           | *String*                                                                                       | :heavy_check_mark:                                                                             | ID of the Company                                                                              |
| `crm_company`                                                                                  | [Shared::CrmCompany](../../models/shared/crmcompany.md)                                        | :heavy_minus_sign:                                                                             | A company represents an organization that optionally is associated with a deal and/or contacts |


### Response

**[T.nilable(Operations::UpdateCrmCompanyResponse)](../../models/operations/updatecrmcompanyresponse.md)**


## update_crm_contact

Update a contact

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::UpdateCrmContactRequest.new(
  path_params=Operations::UpdateCrmContactRequest.new(
    connection_id="string",
    id="<ID>",
    crm_contact=Shared::CrmContact.new(
      address=Shared::PropertyCrmContactAddress.new(
        address1="string",
        address2="string",
        city="Fort Carlee",
        country="Greenland",
        country_code="AQ",
        postal_code="88650",
        region="string",
        region_code="string",
      ),
      company="Hoeger Group",
      company_ids=.new[
        "string",
      ],
      created_at=DateTime.iso8601('2021-02-12T11:36:07.720Z'),
      deal_ids=.new[
        "string",
      ],
      emails=.new[
        Shared::CrmEmail.new(
          email="Layla_Bode@yahoo.com",
          type=Shared::CrmEmailType::WORK,
        ),
      ],
      id="<ID>",
      name="string",
      raw=Shared::PropertyCrmContactRaw.new(),
      telephones=.new[
        Shared::CrmTelephone.new(
          telephone="string",
          type=Shared::CrmTelephoneType::WORK,
        ),
      ],
      title="string",
      updated_at=DateTime.iso8601('2022-09-07T15:51:05.306Z'),
    ),
  ),
  crm_contact=Shared::CrmContact.new(
    address=Shared::PropertyCrmContactAddress.new(
      address1="string",
      address2="string",
      city="Lake Charles",
      country="Australia",
      country_code="BW",
      postal_code="83405",
      region="string",
      region_code="string",
    ),
    company="Kub - Robel",
    company_ids=.new[
      "string",
    ],
    created_at=DateTime.iso8601('2021-04-21T15:39:49.531Z'),
    deal_ids=.new[
      "string",
    ],
    emails=.new[
      Shared::CrmEmail.new(
        email="Daron.Cole45@gmail.com",
        type=Shared::CrmEmailType::WORK,
      ),
    ],
    id="<ID>",
    name="string",
    raw=Shared::PropertyCrmContactRaw.new(),
    telephones=.new[
      Shared::CrmTelephone.new(
        telephone="string",
        type=Shared::CrmTelephoneType::WORK,
      ),
    ],
    title="string",
    updated_at=DateTime.iso8601('2022-07-27T03:01:06.395Z'),
  ),
)
    
res = s.crm.update_crm_contact(req)

if ! res.crm_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                | Type                                                                                     | Required                                                                                 | Description                                                                              |
| ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| `connection_id`                                                                          | *String*                                                                                 | :heavy_check_mark:                                                                       | ID of the connection                                                                     |
| `id`                                                                                     | *String*                                                                                 | :heavy_check_mark:                                                                       | ID of the Contact                                                                        |
| `crm_contact`                                                                            | [Shared::CrmContact](../../models/shared/crmcontact.md)                                  | :heavy_minus_sign:                                                                       | A contact represents a person that optionally is associated with a deal and/or a company |


### Response

**[T.nilable(Operations::UpdateCrmContactResponse)](../../models/operations/updatecrmcontactresponse.md)**


## update_crm_deal

Update a deal

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::UpdateCrmDealRequest.new(
  path_params=Operations::UpdateCrmDealRequest.new(
    connection_id="string",
    id="<ID>",
    crm_deal=Shared::CrmDeal.new(
      amount=854.3,
      closed_at=DateTime.iso8601('2022-01-13T07:04:58.998Z'),
      created_at=DateTime.iso8601('2021-11-20T16:49:31.989Z'),
      currency="Pound Sterling",
      id="<ID>",
      lost_reason="string",
      name="string",
      pipeline="string",
      probability=2970.01,
      raw=Shared::PropertyCrmDealRaw.new(),
      source="string",
      stage="string",
      tags=.new[
        "string",
      ],
      updated_at=DateTime.iso8601('2022-01-31T15:37:01.475Z'),
      won_reason="string",
    ),
  ),
  crm_deal=Shared::CrmDeal.new(
    amount=4059.95,
    closed_at=DateTime.iso8601('2023-02-16T21:28:03.065Z'),
    created_at=DateTime.iso8601('2021-12-04T07:17:25.283Z'),
    currency="Russian Ruble",
    id="<ID>",
    lost_reason="string",
    name="string",
    pipeline="string",
    probability=6183.88,
    raw=Shared::PropertyCrmDealRaw.new(),
    source="string",
    stage="string",
    tags=.new[
      "string",
    ],
    updated_at=DateTime.iso8601('2023-07-13T20:40:24.523Z'),
    won_reason="string",
  ),
)
    
res = s.crm.update_crm_deal(req)

if ! res.crm_deal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `connection_id`                                                 | *String*                                                        | :heavy_check_mark:                                              | ID of the connection                                            |
| `id`                                                            | *String*                                                        | :heavy_check_mark:                                              | ID of the Deal                                                  |
| `crm_deal`                                                      | [Shared::CrmDeal](../../models/shared/crmdeal.md)               | :heavy_minus_sign:                                              | A deal represents an opportunity with companies and/or contacts |


### Response

**[T.nilable(Operations::UpdateCrmDealResponse)](../../models/operations/updatecrmdealresponse.md)**


## update_crm_event

Update a event

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::UpdateCrmEventRequest.new(
  path_params=Operations::UpdateCrmEventRequest.new(
    connection_id="string",
    id="<ID>",
    crm_event=Shared::CrmEvent.new(
      call=Shared::PropertyCrmEventCall.new(
        description="Intuitive incremental orchestration",
        duration=4665.81,
      ),
      company_ids=.new[
        "string",
      ],
      contact_ids=.new[
        "string",
      ],
      created_at=DateTime.iso8601('2021-09-01T00:40:18.553Z'),
      deal_ids=.new[
        "string",
      ],
      email=Shared::PropertyCrmEventEmail.new(
        body="string",
        cc=.new[
          "string",
        ],
        from="string",
        subject="string",
        to=.new[
          "string",
        ],
      ),
      id="<ID>",
      lead_ids=.new[
        "string",
      ],
      meeting=Shared::PropertyCrmEventMeeting.new(
        description="Optional real-time process improvement",
        end_at=DateTime.iso8601('2023-10-22T11:59:17.612Z'),
        start_at=DateTime.iso8601('2023-01-03T21:08:02.575Z'),
        title="string",
      ),
      note=Shared::PropertyCrmEventNote.new(
        description="Switchable zero defect approach",
      ),
      raw=Shared::PropertyCrmEventRaw.new(),
      task=Shared::PropertyCrmEventTask.new(
        description="Pre-emptive system-worthy open system",
        name="string",
        status="string",
      ),
      type=Shared::CrmEventType::EMAIL,
      updated_at=DateTime.iso8601('2021-06-26T08:01:25.242Z'),
    ),
  ),
  crm_event=Shared::CrmEvent.new(
    call=Shared::PropertyCrmEventCall.new(
      description="Team-oriented secondary framework",
      duration=5110.43,
    ),
    company_ids=.new[
      "string",
    ],
    contact_ids=.new[
      "string",
    ],
    created_at=DateTime.iso8601('2023-12-12T06:51:37.177Z'),
    deal_ids=.new[
      "string",
    ],
    email=Shared::PropertyCrmEventEmail.new(
      body="string",
      cc=.new[
        "string",
      ],
      from="string",
      subject="string",
      to=.new[
        "string",
      ],
    ),
    id="<ID>",
    lead_ids=.new[
      "string",
    ],
    meeting=Shared::PropertyCrmEventMeeting.new(
      description="Assimilated logistical Graphic Interface",
      end_at=DateTime.iso8601('2022-12-09T02:28:34.901Z'),
      start_at=DateTime.iso8601('2022-08-16T12:29:55.598Z'),
      title="string",
    ),
    note=Shared::PropertyCrmEventNote.new(
      description="Organized full-range productivity",
    ),
    raw=Shared::PropertyCrmEventRaw.new(),
    task=Shared::PropertyCrmEventTask.new(
      description="Devolved coherent collaboration",
      name="string",
      status="string",
    ),
    type=Shared::CrmEventType::CALL,
    updated_at=DateTime.iso8601('2022-11-14T17:38:48.959Z'),
  ),
)
    
res = s.crm.update_crm_event(req)

if ! res.crm_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                                 | *String*                                                                                                        | :heavy_check_mark:                                                                                              | ID of the connection                                                                                            |
| `id`                                                                                                            | *String*                                                                                                        | :heavy_check_mark:                                                                                              | ID of the Event                                                                                                 |
| `crm_event`                                                                                                     | [Shared::CrmEvent](../../models/shared/crmevent.md)                                                             | :heavy_minus_sign:                                                                                              | An event represents an event, activity, or engagement and is always associated with a deal, contact, or company |


### Response

**[T.nilable(Operations::UpdateCrmEventResponse)](../../models/operations/updatecrmeventresponse.md)**


## update_crm_file

Update a file

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::UpdateCrmFileRequest.new(
  path_params=Operations::UpdateCrmFileRequest.new(
    connection_id="string",
    id="<ID>",
    crm_file=Shared::CrmFile.new(
      activity_id="string",
      company_id="string",
      contact_id="string",
      created_at=DateTime.iso8601('2021-02-11T14:36:52.051Z'),
      deal_id="string",
      description="Quality-focused mobile orchestration",
      file_name="circuit_extended.jpe",
      file_size=2826.44,
      file_type="text",
      file_url="string",
      id="<ID>",
      is_active=false,
      lead_id="string",
      raw=Shared::PropertyCrmFileRaw.new(),
      updated_at=DateTime.iso8601('2021-09-11T08:15:48.719Z'),
      user_id="string",
    ),
  ),
  crm_file=Shared::CrmFile.new(
    activity_id="string",
    company_id="string",
    contact_id="string",
    created_at=DateTime.iso8601('2021-06-13T10:20:52.691Z'),
    deal_id="string",
    description="Assimilated composite service-desk",
    file_name="content_sorrowful_lead.jpg",
    file_size=8907.01,
    file_type="text",
    file_url="string",
    id="<ID>",
    is_active=false,
    lead_id="string",
    raw=Shared::PropertyCrmFileRaw.new(),
    updated_at=DateTime.iso8601('2022-03-26T15:24:00.323Z'),
    user_id="string",
  ),
)
    
res = s.crm.update_crm_file(req)

if ! res.crm_file.nil?
  # handle response
end

```

### Parameters

| Parameter                                         | Type                                              | Required                                          | Description                                       |
| ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- |
| `connection_id`                                   | *String*                                          | :heavy_check_mark:                                | ID of the connection                              |
| `id`                                              | *String*                                          | :heavy_check_mark:                                | ID of the File                                    |
| `crm_file`                                        | [Shared::CrmFile](../../models/shared/crmfile.md) | :heavy_minus_sign:                                | N/A                                               |


### Response

**[T.nilable(Operations::UpdateCrmFileResponse)](../../models/operations/updatecrmfileresponse.md)**


## update_crm_lead

Update a lead

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::UpdateCrmLeadRequest.new(
  path_params=Operations::UpdateCrmLeadRequest.new(
    connection_id="string",
    id="<ID>",
    crm_lead=Shared::CrmLead.new(
      address=Shared::PropertyCrmLeadAddress.new(
        address1="string",
        address2="string",
        city="West Vernerworth",
        country="Suriname",
        country_code="ID",
        postal_code="87400-2256",
        region="string",
        region_code="string",
      ),
      company_id="string",
      company_name="Gibson - Cummings",
      contact_id="string",
      created_at=DateTime.iso8601('2023-12-12T09:21:19.873Z'),
      creator_user_id="string",
      emails=.new[
        Shared::CrmEmail.new(
          email="Ada98@yahoo.com",
          type=Shared::CrmEmailType::OTHER,
        ),
      ],
      id="<ID>",
      is_active=false,
      name="string",
      raw=Shared::PropertyCrmLeadRaw.new(),
      source="string",
      status="string",
      telephones=.new[
        Shared::CrmTelephone.new(
          telephone="string",
          type=Shared::CrmTelephoneType::HOME,
        ),
      ],
      updated_at=DateTime.iso8601('2023-04-22T17:10:39.980Z'),
      user_id="string",
    ),
  ),
  crm_lead=Shared::CrmLead.new(
    address=Shared::PropertyCrmLeadAddress.new(
      address1="string",
      address2="string",
      city="Nampa",
      country="Guyana",
      country_code="MH",
      postal_code="41068-2252",
      region="string",
      region_code="string",
    ),
    company_id="string",
    company_name="Friesen and Sons",
    contact_id="string",
    created_at=DateTime.iso8601('2021-10-18T15:18:41.262Z'),
    creator_user_id="string",
    emails=.new[
      Shared::CrmEmail.new(
        email="Maude_Pacocha92@gmail.com",
        type=Shared::CrmEmailType::HOME,
      ),
    ],
    id="<ID>",
    is_active=false,
    name="string",
    raw=Shared::PropertyCrmLeadRaw.new(),
    source="string",
    status="string",
    telephones=.new[
      Shared::CrmTelephone.new(
        telephone="string",
        type=Shared::CrmTelephoneType::WORK,
      ),
    ],
    updated_at=DateTime.iso8601('2022-09-14T03:12:22.300Z'),
    user_id="string",
  ),
)
    
res = s.crm.update_crm_lead(req)

if ! res.crm_lead.nil?
  # handle response
end

```

### Parameters

| Parameter                                         | Type                                              | Required                                          | Description                                       |
| ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- |
| `connection_id`                                   | *String*                                          | :heavy_check_mark:                                | ID of the connection                              |
| `id`                                              | *String*                                          | :heavy_check_mark:                                | ID of the Lead                                    |
| `crm_lead`                                        | [Shared::CrmLead](../../models/shared/crmlead.md) | :heavy_minus_sign:                                | N/A                                               |


### Response

**[T.nilable(Operations::UpdateCrmLeadResponse)](../../models/operations/updatecrmleadresponse.md)**


## update_crm_pipeline

Update a pipeline

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::UpdateCrmPipelineRequest.new(
  path_params=Operations::UpdateCrmPipelineRequest.new(
    connection_id="string",
    id="<ID>",
    crm_pipeline=Shared::CrmPipeline.new(
      created_at=DateTime.iso8601('2021-12-27T08:28:05.275Z'),
      deal_probability=false,
      display_order=8923.83,
      id="<ID>",
      is_active=false,
      name="string",
      raw=Shared::PropertyCrmPipelineRaw.new(),
      updated_at=DateTime.iso8601('2022-07-18T01:45:20.441Z'),
    ),
  ),
  crm_pipeline=Shared::CrmPipeline.new(
    created_at=DateTime.iso8601('2022-11-02T11:59:18.760Z'),
    deal_probability=false,
    display_order=173.26,
    id="<ID>",
    is_active=false,
    name="string",
    raw=Shared::PropertyCrmPipelineRaw.new(),
    updated_at=DateTime.iso8601('2021-05-08T14:25:08.546Z'),
  ),
)
    
res = s.crm.update_crm_pipeline(req)

if ! res.crm_pipeline.nil?
  # handle response
end

```

### Parameters

| Parameter                                                 | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `connection_id`                                           | *String*                                                  | :heavy_check_mark:                                        | ID of the connection                                      |
| `id`                                                      | *String*                                                  | :heavy_check_mark:                                        | ID of the Pipeline                                        |
| `crm_pipeline`                                            | [Shared::CrmPipeline](../../models/shared/crmpipeline.md) | :heavy_minus_sign:                                        | N/A                                                       |


### Response

**[T.nilable(Operations::UpdateCrmPipelineResponse)](../../models/operations/updatecrmpipelineresponse.md)**

