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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::CreateCrmCompanyRequest.new(
  connection_id="string",
  crm_company=Shared::CrmCompany.new(
    address=Shared::PropertyCrmCompanyAddress.new(),
    deal_ids=[
      "string",
    ],
    emails=[
      Shared::CrmEmail.new(),
    ],
    raw=Shared::PropertyCrmCompanyRaw.new(),
    tags=[
      "string",
    ],
    telephones=[
      Shared::CrmTelephone.new(
        telephone="string",
      ),
    ],
    websites=[
      "string",
    ],
  ),
)
    
res = s.crm.create_crm_company(connection_id="string", crm_company=Shared::CrmCompany.new(
    address=Shared::PropertyCrmCompanyAddress.new(),
    deal_ids=[
      "string",
    ],
    emails=[
      Shared::CrmEmail.new(),
    ],
    raw=Shared::PropertyCrmCompanyRaw.new(),
    tags=[
      "string",
    ],
    telephones=[
      Shared::CrmTelephone.new(
        telephone="string",
      ),
    ],
    websites=[
      "string",
    ],
  ))

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::CreateCrmContactRequest.new(
  connection_id="string",
  crm_contact=Shared::CrmContact.new(
    address=Shared::PropertyCrmContactAddress.new(),
    company_ids=[
      "string",
    ],
    deal_ids=[
      "string",
    ],
    emails=[
      Shared::CrmEmail.new(),
    ],
    raw=Shared::PropertyCrmContactRaw.new(),
    telephones=[
      Shared::CrmTelephone.new(
        telephone="string",
      ),
    ],
  ),
)
    
res = s.crm.create_crm_contact(connection_id="string", crm_contact=Shared::CrmContact.new(
    address=Shared::PropertyCrmContactAddress.new(),
    company_ids=[
      "string",
    ],
    deal_ids=[
      "string",
    ],
    emails=[
      Shared::CrmEmail.new(),
    ],
    raw=Shared::PropertyCrmContactRaw.new(),
    telephones=[
      Shared::CrmTelephone.new(
        telephone="string",
      ),
    ],
  ))

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::CreateCrmDealRequest.new(
  connection_id="string",
  crm_deal=Shared::CrmDeal.new(
    raw=Shared::PropertyCrmDealRaw.new(),
    tags=[
      "string",
    ],
  ),
)
    
res = s.crm.create_crm_deal(connection_id="string", crm_deal=Shared::CrmDeal.new(
    raw=Shared::PropertyCrmDealRaw.new(),
    tags=[
      "string",
    ],
  ))

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::CreateCrmEventRequest.new(
  connection_id="string",
  crm_event=Shared::CrmEvent.new(
    call=Shared::PropertyCrmEventCall.new(),
    company_ids=[
      "string",
    ],
    contact_ids=[
      "string",
    ],
    deal_ids=[
      "string",
    ],
    email=Shared::PropertyCrmEventEmail.new(
      cc=[
        "string",
      ],
      to=[
        "string",
      ],
    ),
    lead_ids=[
      "string",
    ],
    meeting=Shared::PropertyCrmEventMeeting.new(),
    note=Shared::PropertyCrmEventNote.new(),
    raw=Shared::PropertyCrmEventRaw.new(),
    task=Shared::PropertyCrmEventTask.new(),
  ),
)
    
res = s.crm.create_crm_event(connection_id="string", crm_event=Shared::CrmEvent.new(
    call=Shared::PropertyCrmEventCall.new(),
    company_ids=[
      "string",
    ],
    contact_ids=[
      "string",
    ],
    deal_ids=[
      "string",
    ],
    email=Shared::PropertyCrmEventEmail.new(
      cc=[
        "string",
      ],
      to=[
        "string",
      ],
    ),
    lead_ids=[
      "string",
    ],
    meeting=Shared::PropertyCrmEventMeeting.new(),
    note=Shared::PropertyCrmEventNote.new(),
    raw=Shared::PropertyCrmEventRaw.new(),
    task=Shared::PropertyCrmEventTask.new(),
  ))

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::CreateCrmFileRequest.new(
  connection_id="string",
  crm_file=Shared::CrmFile.new(
    raw=Shared::PropertyCrmFileRaw.new(),
  ),
)
    
res = s.crm.create_crm_file(connection_id="string", crm_file=Shared::CrmFile.new(
    raw=Shared::PropertyCrmFileRaw.new(),
  ))

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::CreateCrmLeadRequest.new(
  connection_id="string",
  crm_lead=Shared::CrmLead.new(
    address=Shared::PropertyCrmLeadAddress.new(),
    emails=[
      Shared::CrmEmail.new(),
    ],
    raw=Shared::PropertyCrmLeadRaw.new(),
    telephones=[
      Shared::CrmTelephone.new(
        telephone="string",
      ),
    ],
  ),
)
    
res = s.crm.create_crm_lead(connection_id="string", crm_lead=Shared::CrmLead.new(
    address=Shared::PropertyCrmLeadAddress.new(),
    emails=[
      Shared::CrmEmail.new(),
    ],
    raw=Shared::PropertyCrmLeadRaw.new(),
    telephones=[
      Shared::CrmTelephone.new(
        telephone="string",
      ),
    ],
  ))

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::CreateCrmPipelineRequest.new(
  connection_id="string",
  crm_pipeline=Shared::CrmPipeline.new(
    raw=Shared::PropertyCrmPipelineRaw.new(),
  ),
)
    
res = s.crm.create_crm_pipeline(connection_id="string", crm_pipeline=Shared::CrmPipeline.new(
    raw=Shared::PropertyCrmPipelineRaw.new(),
  ))

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetCrmCompanyRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.crm.get_crm_company(connection_id="string", id="string", fields=[
    "string",
  ])

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetCrmContactRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.crm.get_crm_contact(connection_id="string", id="string", fields=[
    "string",
  ])

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetCrmDealRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.crm.get_crm_deal(connection_id="string", id="string", fields=[
    "string",
  ])

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetCrmEventRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.crm.get_crm_event(connection_id="string", id="string", fields=[
    "string",
  ])

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetCrmFileRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.crm.get_crm_file(connection_id="string", id="string", fields=[
    "string",
  ])

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetCrmLeadRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.crm.get_crm_lead(connection_id="string", id="string", fields=[
    "string",
  ])

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetCrmPipelineRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.crm.get_crm_pipeline(connection_id="string", id="string", fields=[
    "string",
  ])

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListCrmCompaniesRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListCrmContactsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListCrmDealsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListCrmEventsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListCrmFilesRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListCrmLeadsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListCrmPipelinesRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::PatchCrmCompanyRequest.new(
  connection_id="string",
  id="<ID>",
  crm_company=Shared::CrmCompany.new(
    address=Shared::PropertyCrmCompanyAddress.new(),
    deal_ids=[
      "string",
    ],
    emails=[
      Shared::CrmEmail.new(),
    ],
    raw=Shared::PropertyCrmCompanyRaw.new(),
    tags=[
      "string",
    ],
    telephones=[
      Shared::CrmTelephone.new(
        telephone="string",
      ),
    ],
    websites=[
      "string",
    ],
  ),
)
    
res = s.crm.patch_crm_company(connection_id="string", id="string", crm_company=Shared::CrmCompany.new(
    address=Shared::PropertyCrmCompanyAddress.new(),
    deal_ids=[
      "string",
    ],
    emails=[
      Shared::CrmEmail.new(),
    ],
    raw=Shared::PropertyCrmCompanyRaw.new(),
    tags=[
      "string",
    ],
    telephones=[
      Shared::CrmTelephone.new(
        telephone="string",
      ),
    ],
    websites=[
      "string",
    ],
  ))

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::PatchCrmContactRequest.new(
  connection_id="string",
  id="<ID>",
  crm_contact=Shared::CrmContact.new(
    address=Shared::PropertyCrmContactAddress.new(),
    company_ids=[
      "string",
    ],
    deal_ids=[
      "string",
    ],
    emails=[
      Shared::CrmEmail.new(),
    ],
    raw=Shared::PropertyCrmContactRaw.new(),
    telephones=[
      Shared::CrmTelephone.new(
        telephone="string",
      ),
    ],
  ),
)
    
res = s.crm.patch_crm_contact(connection_id="string", id="string", crm_contact=Shared::CrmContact.new(
    address=Shared::PropertyCrmContactAddress.new(),
    company_ids=[
      "string",
    ],
    deal_ids=[
      "string",
    ],
    emails=[
      Shared::CrmEmail.new(),
    ],
    raw=Shared::PropertyCrmContactRaw.new(),
    telephones=[
      Shared::CrmTelephone.new(
        telephone="string",
      ),
    ],
  ))

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::PatchCrmDealRequest.new(
  connection_id="string",
  id="<ID>",
  crm_deal=Shared::CrmDeal.new(
    raw=Shared::PropertyCrmDealRaw.new(),
    tags=[
      "string",
    ],
  ),
)
    
res = s.crm.patch_crm_deal(connection_id="string", id="string", crm_deal=Shared::CrmDeal.new(
    raw=Shared::PropertyCrmDealRaw.new(),
    tags=[
      "string",
    ],
  ))

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::PatchCrmEventRequest.new(
  connection_id="string",
  id="<ID>",
  crm_event=Shared::CrmEvent.new(
    call=Shared::PropertyCrmEventCall.new(),
    company_ids=[
      "string",
    ],
    contact_ids=[
      "string",
    ],
    deal_ids=[
      "string",
    ],
    email=Shared::PropertyCrmEventEmail.new(
      cc=[
        "string",
      ],
      to=[
        "string",
      ],
    ),
    lead_ids=[
      "string",
    ],
    meeting=Shared::PropertyCrmEventMeeting.new(),
    note=Shared::PropertyCrmEventNote.new(),
    raw=Shared::PropertyCrmEventRaw.new(),
    task=Shared::PropertyCrmEventTask.new(),
  ),
)
    
res = s.crm.patch_crm_event(connection_id="string", id="string", crm_event=Shared::CrmEvent.new(
    call=Shared::PropertyCrmEventCall.new(),
    company_ids=[
      "string",
    ],
    contact_ids=[
      "string",
    ],
    deal_ids=[
      "string",
    ],
    email=Shared::PropertyCrmEventEmail.new(
      cc=[
        "string",
      ],
      to=[
        "string",
      ],
    ),
    lead_ids=[
      "string",
    ],
    meeting=Shared::PropertyCrmEventMeeting.new(),
    note=Shared::PropertyCrmEventNote.new(),
    raw=Shared::PropertyCrmEventRaw.new(),
    task=Shared::PropertyCrmEventTask.new(),
  ))

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::PatchCrmFileRequest.new(
  connection_id="string",
  id="<ID>",
  crm_file=Shared::CrmFile.new(
    raw=Shared::PropertyCrmFileRaw.new(),
  ),
)
    
res = s.crm.patch_crm_file(connection_id="string", id="string", crm_file=Shared::CrmFile.new(
    raw=Shared::PropertyCrmFileRaw.new(),
  ))

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::PatchCrmLeadRequest.new(
  connection_id="string",
  id="<ID>",
  crm_lead=Shared::CrmLead.new(
    address=Shared::PropertyCrmLeadAddress.new(),
    emails=[
      Shared::CrmEmail.new(),
    ],
    raw=Shared::PropertyCrmLeadRaw.new(),
    telephones=[
      Shared::CrmTelephone.new(
        telephone="string",
      ),
    ],
  ),
)
    
res = s.crm.patch_crm_lead(connection_id="string", id="string", crm_lead=Shared::CrmLead.new(
    address=Shared::PropertyCrmLeadAddress.new(),
    emails=[
      Shared::CrmEmail.new(),
    ],
    raw=Shared::PropertyCrmLeadRaw.new(),
    telephones=[
      Shared::CrmTelephone.new(
        telephone="string",
      ),
    ],
  ))

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::PatchCrmPipelineRequest.new(
  connection_id="string",
  id="<ID>",
  crm_pipeline=Shared::CrmPipeline.new(
    raw=Shared::PropertyCrmPipelineRaw.new(),
  ),
)
    
res = s.crm.patch_crm_pipeline(connection_id="string", id="string", crm_pipeline=Shared::CrmPipeline.new(
    raw=Shared::PropertyCrmPipelineRaw.new(),
  ))

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::RemoveCrmCompanyRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.crm.remove_crm_company(connection_id="string", id="string")

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::RemoveCrmContactRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.crm.remove_crm_contact(connection_id="string", id="string")

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::RemoveCrmDealRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.crm.remove_crm_deal(connection_id="string", id="string")

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::RemoveCrmEventRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.crm.remove_crm_event(connection_id="string", id="string")

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::RemoveCrmFileRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.crm.remove_crm_file(connection_id="string", id="string")

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::RemoveCrmLeadRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.crm.remove_crm_lead(connection_id="string", id="string")

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::RemoveCrmPipelineRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.crm.remove_crm_pipeline(connection_id="string", id="string")

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::UpdateCrmCompanyRequest.new(
  connection_id="string",
  id="<ID>",
  crm_company=Shared::CrmCompany.new(
    address=Shared::PropertyCrmCompanyAddress.new(),
    deal_ids=[
      "string",
    ],
    emails=[
      Shared::CrmEmail.new(),
    ],
    raw=Shared::PropertyCrmCompanyRaw.new(),
    tags=[
      "string",
    ],
    telephones=[
      Shared::CrmTelephone.new(
        telephone="string",
      ),
    ],
    websites=[
      "string",
    ],
  ),
)
    
res = s.crm.update_crm_company(connection_id="string", id="string", crm_company=Shared::CrmCompany.new(
    address=Shared::PropertyCrmCompanyAddress.new(),
    deal_ids=[
      "string",
    ],
    emails=[
      Shared::CrmEmail.new(),
    ],
    raw=Shared::PropertyCrmCompanyRaw.new(),
    tags=[
      "string",
    ],
    telephones=[
      Shared::CrmTelephone.new(
        telephone="string",
      ),
    ],
    websites=[
      "string",
    ],
  ))

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::UpdateCrmContactRequest.new(
  connection_id="string",
  id="<ID>",
  crm_contact=Shared::CrmContact.new(
    address=Shared::PropertyCrmContactAddress.new(),
    company_ids=[
      "string",
    ],
    deal_ids=[
      "string",
    ],
    emails=[
      Shared::CrmEmail.new(),
    ],
    raw=Shared::PropertyCrmContactRaw.new(),
    telephones=[
      Shared::CrmTelephone.new(
        telephone="string",
      ),
    ],
  ),
)
    
res = s.crm.update_crm_contact(connection_id="string", id="string", crm_contact=Shared::CrmContact.new(
    address=Shared::PropertyCrmContactAddress.new(),
    company_ids=[
      "string",
    ],
    deal_ids=[
      "string",
    ],
    emails=[
      Shared::CrmEmail.new(),
    ],
    raw=Shared::PropertyCrmContactRaw.new(),
    telephones=[
      Shared::CrmTelephone.new(
        telephone="string",
      ),
    ],
  ))

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::UpdateCrmDealRequest.new(
  connection_id="string",
  id="<ID>",
  crm_deal=Shared::CrmDeal.new(
    raw=Shared::PropertyCrmDealRaw.new(),
    tags=[
      "string",
    ],
  ),
)
    
res = s.crm.update_crm_deal(connection_id="string", id="string", crm_deal=Shared::CrmDeal.new(
    raw=Shared::PropertyCrmDealRaw.new(),
    tags=[
      "string",
    ],
  ))

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::UpdateCrmEventRequest.new(
  connection_id="string",
  id="<ID>",
  crm_event=Shared::CrmEvent.new(
    call=Shared::PropertyCrmEventCall.new(),
    company_ids=[
      "string",
    ],
    contact_ids=[
      "string",
    ],
    deal_ids=[
      "string",
    ],
    email=Shared::PropertyCrmEventEmail.new(
      cc=[
        "string",
      ],
      to=[
        "string",
      ],
    ),
    lead_ids=[
      "string",
    ],
    meeting=Shared::PropertyCrmEventMeeting.new(),
    note=Shared::PropertyCrmEventNote.new(),
    raw=Shared::PropertyCrmEventRaw.new(),
    task=Shared::PropertyCrmEventTask.new(),
  ),
)
    
res = s.crm.update_crm_event(connection_id="string", id="string", crm_event=Shared::CrmEvent.new(
    call=Shared::PropertyCrmEventCall.new(),
    company_ids=[
      "string",
    ],
    contact_ids=[
      "string",
    ],
    deal_ids=[
      "string",
    ],
    email=Shared::PropertyCrmEventEmail.new(
      cc=[
        "string",
      ],
      to=[
        "string",
      ],
    ),
    lead_ids=[
      "string",
    ],
    meeting=Shared::PropertyCrmEventMeeting.new(),
    note=Shared::PropertyCrmEventNote.new(),
    raw=Shared::PropertyCrmEventRaw.new(),
    task=Shared::PropertyCrmEventTask.new(),
  ))

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::UpdateCrmFileRequest.new(
  connection_id="string",
  id="<ID>",
  crm_file=Shared::CrmFile.new(
    raw=Shared::PropertyCrmFileRaw.new(),
  ),
)
    
res = s.crm.update_crm_file(connection_id="string", id="string", crm_file=Shared::CrmFile.new(
    raw=Shared::PropertyCrmFileRaw.new(),
  ))

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::UpdateCrmLeadRequest.new(
  connection_id="string",
  id="<ID>",
  crm_lead=Shared::CrmLead.new(
    address=Shared::PropertyCrmLeadAddress.new(),
    emails=[
      Shared::CrmEmail.new(),
    ],
    raw=Shared::PropertyCrmLeadRaw.new(),
    telephones=[
      Shared::CrmTelephone.new(
        telephone="string",
      ),
    ],
  ),
)
    
res = s.crm.update_crm_lead(connection_id="string", id="string", crm_lead=Shared::CrmLead.new(
    address=Shared::PropertyCrmLeadAddress.new(),
    emails=[
      Shared::CrmEmail.new(),
    ],
    raw=Shared::PropertyCrmLeadRaw.new(),
    telephones=[
      Shared::CrmTelephone.new(
        telephone="string",
      ),
    ],
  ))

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


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::UpdateCrmPipelineRequest.new(
  connection_id="string",
  id="<ID>",
  crm_pipeline=Shared::CrmPipeline.new(
    raw=Shared::PropertyCrmPipelineRaw.new(),
  ),
)
    
res = s.crm.update_crm_pipeline(connection_id="string", id="string", crm_pipeline=Shared::CrmPipeline.new(
    raw=Shared::PropertyCrmPipelineRaw.new(),
  ))

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

