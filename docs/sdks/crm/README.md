# Crm
(*crm*)

## Overview

### Available Operations

* [create_crm_company](#create_crm_company) - Create a company
* [create_crm_contact](#create_crm_contact) - Create a contact
* [create_crm_deal](#create_crm_deal) - Create a deal
* [create_crm_event](#create_crm_event) - Create an event
* [create_crm_lead](#create_crm_lead) - Create a lead
* [create_crm_pipeline](#create_crm_pipeline) - Create a pipeline
* [get_crm_company](#get_crm_company) - Retrieve a company
* [get_crm_contact](#get_crm_contact) - Retrieve a contact
* [get_crm_deal](#get_crm_deal) - Retrieve a deal
* [get_crm_event](#get_crm_event) - Retrieve an event
* [get_crm_lead](#get_crm_lead) - Retrieve a lead
* [get_crm_pipeline](#get_crm_pipeline) - Retrieve a pipeline
* [list_crm_companies](#list_crm_companies) - List all companies
* [list_crm_contacts](#list_crm_contacts) - List all contacts
* [list_crm_deals](#list_crm_deals) - List all deals
* [list_crm_events](#list_crm_events) - List all events
* [list_crm_leads](#list_crm_leads) - List all leads
* [list_crm_pipelines](#list_crm_pipelines) - List all pipelines
* [patch_crm_company](#patch_crm_company) - Update a company
* [patch_crm_contact](#patch_crm_contact) - Update a contact
* [patch_crm_deal](#patch_crm_deal) - Update a deal
* [patch_crm_event](#patch_crm_event) - Update an event
* [patch_crm_lead](#patch_crm_lead) - Update a lead
* [patch_crm_pipeline](#patch_crm_pipeline) - Update a pipeline
* [remove_crm_company](#remove_crm_company) - Remove a company
* [remove_crm_contact](#remove_crm_contact) - Remove a contact
* [remove_crm_deal](#remove_crm_deal) - Remove a deal
* [remove_crm_event](#remove_crm_event) - Remove an event
* [remove_crm_lead](#remove_crm_lead) - Remove a lead
* [remove_crm_pipeline](#remove_crm_pipeline) - Remove a pipeline
* [update_crm_company](#update_crm_company) - Update a company
* [update_crm_contact](#update_crm_contact) - Update a contact
* [update_crm_deal](#update_crm_deal) - Update a deal
* [update_crm_event](#update_crm_event) - Update an event
* [update_crm_lead](#update_crm_lead) - Update a lead
* [update_crm_pipeline](#update_crm_pipeline) - Update a pipeline

## create_crm_company

Create a company

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.create_crm_company(crm_company=Models::Shared::CrmCompany.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.crm_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                      | Type                                                                                           | Required                                                                                       | Description                                                                                    |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `crm_company`                                                                                  | [Models::Shared::CrmCompany](../../models/shared/crmcompany.md)                                | :heavy_check_mark:                                                                             | A company represents an organization that optionally is associated with a deal and/or contacts |
| `connection_id`                                                                                | *::String*                                                                                     | :heavy_check_mark:                                                                             | ID of the connection                                                                           |
| `fields_`                                                                                      | T::Array<*::String*>                                                                           | :heavy_minus_sign:                                                                             | Comma-delimited fields to return                                                               |

### Response

**[T.nilable(Models::Operations::CreateCrmCompanyResponse)](../../models/operations/createcrmcompanyresponse.md)**



## create_crm_contact

Create a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.create_crm_contact(crm_contact=Models::Shared::CrmContact.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.crm_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                | Type                                                                                     | Required                                                                                 | Description                                                                              |
| ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| `crm_contact`                                                                            | [Models::Shared::CrmContact](../../models/shared/crmcontact.md)                          | :heavy_check_mark:                                                                       | A contact represents a person that optionally is associated with a deal and/or a company |
| `connection_id`                                                                          | *::String*                                                                               | :heavy_check_mark:                                                                       | ID of the connection                                                                     |
| `fields_`                                                                                | T::Array<*::String*>                                                                     | :heavy_minus_sign:                                                                       | Comma-delimited fields to return                                                         |

### Response

**[T.nilable(Models::Operations::CreateCrmContactResponse)](../../models/operations/createcrmcontactresponse.md)**



## create_crm_deal

Create a deal

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.create_crm_deal(crm_deal=Models::Shared::CrmDeal.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.crm_deal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `crm_deal`                                                      | [Models::Shared::CrmDeal](../../models/shared/crmdeal.md)       | :heavy_check_mark:                                              | A deal represents an opportunity with companies and/or contacts |
| `connection_id`                                                 | *::String*                                                      | :heavy_check_mark:                                              | ID of the connection                                            |
| `fields_`                                                       | T::Array<*::String*>                                            | :heavy_minus_sign:                                              | Comma-delimited fields to return                                |

### Response

**[T.nilable(Models::Operations::CreateCrmDealResponse)](../../models/operations/createcrmdealresponse.md)**



## create_crm_event

Create an event

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.create_crm_event(crm_event=Models::Shared::CrmEvent.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.crm_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `crm_event`                                                                                                     | [Models::Shared::CrmEvent](../../models/shared/crmevent.md)                                                     | :heavy_check_mark:                                                                                              | An event represents an event, activity, or engagement and is always associated with a deal, contact, or company |
| `connection_id`                                                                                                 | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the connection                                                                                            |
| `fields_`                                                                                                       | T::Array<*::String*>                                                                                            | :heavy_minus_sign:                                                                                              | Comma-delimited fields to return                                                                                |

### Response

**[T.nilable(Models::Operations::CreateCrmEventResponse)](../../models/operations/createcrmeventresponse.md)**



## create_crm_lead

Create a lead

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.create_crm_lead(crm_lead=Models::Shared::CrmLead.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.crm_lead.nil?
  # handle response
end

```

### Parameters

| Parameter                                                 | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `crm_lead`                                                | [Models::Shared::CrmLead](../../models/shared/crmlead.md) | :heavy_check_mark:                                        | N/A                                                       |
| `connection_id`                                           | *::String*                                                | :heavy_check_mark:                                        | ID of the connection                                      |
| `fields_`                                                 | T::Array<*::String*>                                      | :heavy_minus_sign:                                        | Comma-delimited fields to return                          |

### Response

**[T.nilable(Models::Operations::CreateCrmLeadResponse)](../../models/operations/createcrmleadresponse.md)**



## create_crm_pipeline

Create a pipeline

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.create_crm_pipeline(crm_pipeline=Models::Shared::CrmPipeline.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.crm_pipeline.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `crm_pipeline`                                                    | [Models::Shared::CrmPipeline](../../models/shared/crmpipeline.md) | :heavy_check_mark:                                                | N/A                                                               |
| `connection_id`                                                   | *::String*                                                        | :heavy_check_mark:                                                | ID of the connection                                              |
| `fields_`                                                         | T::Array<*::String*>                                              | :heavy_minus_sign:                                                | Comma-delimited fields to return                                  |

### Response

**[T.nilable(Models::Operations::CreateCrmPipelineResponse)](../../models/operations/createcrmpipelineresponse.md)**



## get_crm_company

Retrieve a company

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.get_crm_company(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.crm_company.nil?
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

**[T.nilable(Models::Operations::GetCrmCompanyResponse)](../../models/operations/getcrmcompanyresponse.md)**



## get_crm_contact

Retrieve a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.get_crm_contact(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.crm_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Contact                |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(Models::Operations::GetCrmContactResponse)](../../models/operations/getcrmcontactresponse.md)**



## get_crm_deal

Retrieve a deal

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.get_crm_deal(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.crm_deal.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Deal                   |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(Models::Operations::GetCrmDealResponse)](../../models/operations/getcrmdealresponse.md)**



## get_crm_event

Retrieve an event

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.get_crm_event(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.crm_event.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Event                  |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(Models::Operations::GetCrmEventResponse)](../../models/operations/getcrmeventresponse.md)**



## get_crm_lead

Retrieve a lead

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.get_crm_lead(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.crm_lead.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Lead                   |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(Models::Operations::GetCrmLeadResponse)](../../models/operations/getcrmleadresponse.md)**



## get_crm_pipeline

Retrieve a pipeline

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.get_crm_pipeline(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.crm_pipeline.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Pipeline               |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(Models::Operations::GetCrmPipelineResponse)](../../models/operations/getcrmpipelineresponse.md)**



## list_crm_companies

List all companies

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::ListCrmCompaniesRequest.new(
  connection_id: "<id>",
)

res = s.crm.list_crm_companies(req)

if ! res.crm_companies.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListCrmCompaniesRequest](../../models/operations/listcrmcompaniesrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListCrmCompaniesResponse)](../../models/operations/listcrmcompaniesresponse.md)**



## list_crm_contacts

List all contacts

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::ListCrmContactsRequest.new(
  connection_id: "<id>",
)

res = s.crm.list_crm_contacts(req)

if ! res.crm_contacts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::ListCrmContactsRequest](../../models/operations/listcrmcontactsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::ListCrmContactsResponse)](../../models/operations/listcrmcontactsresponse.md)**



## list_crm_deals

List all deals

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::ListCrmDealsRequest.new(
  connection_id: "<id>",
)

res = s.crm.list_crm_deals(req)

if ! res.crm_deals.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::ListCrmDealsRequest](../../models/operations/listcrmdealsrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::ListCrmDealsResponse)](../../models/operations/listcrmdealsresponse.md)**



## list_crm_events

List all events

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::ListCrmEventsRequest.new(
  connection_id: "<id>",
)

res = s.crm.list_crm_events(req)

if ! res.crm_events.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::ListCrmEventsRequest](../../models/operations/listcrmeventsrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::ListCrmEventsResponse)](../../models/operations/listcrmeventsresponse.md)**



## list_crm_leads

List all leads

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::ListCrmLeadsRequest.new(
  connection_id: "<id>",
)

res = s.crm.list_crm_leads(req)

if ! res.crm_leads.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::ListCrmLeadsRequest](../../models/operations/listcrmleadsrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::ListCrmLeadsResponse)](../../models/operations/listcrmleadsresponse.md)**



## list_crm_pipelines

List all pipelines

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::ListCrmPipelinesRequest.new(
  connection_id: "<id>",
)

res = s.crm.list_crm_pipelines(req)

if ! res.crm_pipelines.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::ListCrmPipelinesRequest](../../models/operations/listcrmpipelinesrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::ListCrmPipelinesResponse)](../../models/operations/listcrmpipelinesresponse.md)**



## patch_crm_company

Update a company

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.patch_crm_company(crm_company=Models::Shared::CrmCompany.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.crm_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                      | Type                                                                                           | Required                                                                                       | Description                                                                                    |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `crm_company`                                                                                  | [Models::Shared::CrmCompany](../../models/shared/crmcompany.md)                                | :heavy_check_mark:                                                                             | A company represents an organization that optionally is associated with a deal and/or contacts |
| `connection_id`                                                                                | *::String*                                                                                     | :heavy_check_mark:                                                                             | ID of the connection                                                                           |
| `id`                                                                                           | *::String*                                                                                     | :heavy_check_mark:                                                                             | ID of the Company                                                                              |
| `fields_`                                                                                      | T::Array<*::String*>                                                                           | :heavy_minus_sign:                                                                             | Comma-delimited fields to return                                                               |

### Response

**[T.nilable(Models::Operations::PatchCrmCompanyResponse)](../../models/operations/patchcrmcompanyresponse.md)**



## patch_crm_contact

Update a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.patch_crm_contact(crm_contact=Models::Shared::CrmContact.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.crm_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                | Type                                                                                     | Required                                                                                 | Description                                                                              |
| ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| `crm_contact`                                                                            | [Models::Shared::CrmContact](../../models/shared/crmcontact.md)                          | :heavy_check_mark:                                                                       | A contact represents a person that optionally is associated with a deal and/or a company |
| `connection_id`                                                                          | *::String*                                                                               | :heavy_check_mark:                                                                       | ID of the connection                                                                     |
| `id`                                                                                     | *::String*                                                                               | :heavy_check_mark:                                                                       | ID of the Contact                                                                        |
| `fields_`                                                                                | T::Array<*::String*>                                                                     | :heavy_minus_sign:                                                                       | Comma-delimited fields to return                                                         |

### Response

**[T.nilable(Models::Operations::PatchCrmContactResponse)](../../models/operations/patchcrmcontactresponse.md)**



## patch_crm_deal

Update a deal

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.patch_crm_deal(crm_deal=Models::Shared::CrmDeal.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.crm_deal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `crm_deal`                                                      | [Models::Shared::CrmDeal](../../models/shared/crmdeal.md)       | :heavy_check_mark:                                              | A deal represents an opportunity with companies and/or contacts |
| `connection_id`                                                 | *::String*                                                      | :heavy_check_mark:                                              | ID of the connection                                            |
| `id`                                                            | *::String*                                                      | :heavy_check_mark:                                              | ID of the Deal                                                  |
| `fields_`                                                       | T::Array<*::String*>                                            | :heavy_minus_sign:                                              | Comma-delimited fields to return                                |

### Response

**[T.nilable(Models::Operations::PatchCrmDealResponse)](../../models/operations/patchcrmdealresponse.md)**



## patch_crm_event

Update an event

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.patch_crm_event(crm_event=Models::Shared::CrmEvent.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.crm_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `crm_event`                                                                                                     | [Models::Shared::CrmEvent](../../models/shared/crmevent.md)                                                     | :heavy_check_mark:                                                                                              | An event represents an event, activity, or engagement and is always associated with a deal, contact, or company |
| `connection_id`                                                                                                 | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the connection                                                                                            |
| `id`                                                                                                            | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the Event                                                                                                 |
| `fields_`                                                                                                       | T::Array<*::String*>                                                                                            | :heavy_minus_sign:                                                                                              | Comma-delimited fields to return                                                                                |

### Response

**[T.nilable(Models::Operations::PatchCrmEventResponse)](../../models/operations/patchcrmeventresponse.md)**



## patch_crm_lead

Update a lead

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.patch_crm_lead(crm_lead=Models::Shared::CrmLead.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.crm_lead.nil?
  # handle response
end

```

### Parameters

| Parameter                                                 | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `crm_lead`                                                | [Models::Shared::CrmLead](../../models/shared/crmlead.md) | :heavy_check_mark:                                        | N/A                                                       |
| `connection_id`                                           | *::String*                                                | :heavy_check_mark:                                        | ID of the connection                                      |
| `id`                                                      | *::String*                                                | :heavy_check_mark:                                        | ID of the Lead                                            |
| `fields_`                                                 | T::Array<*::String*>                                      | :heavy_minus_sign:                                        | Comma-delimited fields to return                          |

### Response

**[T.nilable(Models::Operations::PatchCrmLeadResponse)](../../models/operations/patchcrmleadresponse.md)**



## patch_crm_pipeline

Update a pipeline

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.patch_crm_pipeline(crm_pipeline=Models::Shared::CrmPipeline.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.crm_pipeline.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `crm_pipeline`                                                    | [Models::Shared::CrmPipeline](../../models/shared/crmpipeline.md) | :heavy_check_mark:                                                | N/A                                                               |
| `connection_id`                                                   | *::String*                                                        | :heavy_check_mark:                                                | ID of the connection                                              |
| `id`                                                              | *::String*                                                        | :heavy_check_mark:                                                | ID of the Pipeline                                                |
| `fields_`                                                         | T::Array<*::String*>                                              | :heavy_minus_sign:                                                | Comma-delimited fields to return                                  |

### Response

**[T.nilable(Models::Operations::PatchCrmPipelineResponse)](../../models/operations/patchcrmpipelineresponse.md)**



## remove_crm_company

Remove a company

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.remove_crm_company(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Company    |

### Response

**[T.nilable(Models::Operations::RemoveCrmCompanyResponse)](../../models/operations/removecrmcompanyresponse.md)**



## remove_crm_contact

Remove a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.remove_crm_contact(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Contact    |

### Response

**[T.nilable(Models::Operations::RemoveCrmContactResponse)](../../models/operations/removecrmcontactresponse.md)**



## remove_crm_deal

Remove a deal

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.remove_crm_deal(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Deal       |

### Response

**[T.nilable(Models::Operations::RemoveCrmDealResponse)](../../models/operations/removecrmdealresponse.md)**



## remove_crm_event

Remove an event

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.remove_crm_event(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Event      |

### Response

**[T.nilable(Models::Operations::RemoveCrmEventResponse)](../../models/operations/removecrmeventresponse.md)**



## remove_crm_lead

Remove a lead

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.remove_crm_lead(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Lead       |

### Response

**[T.nilable(Models::Operations::RemoveCrmLeadResponse)](../../models/operations/removecrmleadresponse.md)**



## remove_crm_pipeline

Remove a pipeline

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.remove_crm_pipeline(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Pipeline   |

### Response

**[T.nilable(Models::Operations::RemoveCrmPipelineResponse)](../../models/operations/removecrmpipelineresponse.md)**



## update_crm_company

Update a company

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.update_crm_company(crm_company=Models::Shared::CrmCompany.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.crm_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                      | Type                                                                                           | Required                                                                                       | Description                                                                                    |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `crm_company`                                                                                  | [Models::Shared::CrmCompany](../../models/shared/crmcompany.md)                                | :heavy_check_mark:                                                                             | A company represents an organization that optionally is associated with a deal and/or contacts |
| `connection_id`                                                                                | *::String*                                                                                     | :heavy_check_mark:                                                                             | ID of the connection                                                                           |
| `id`                                                                                           | *::String*                                                                                     | :heavy_check_mark:                                                                             | ID of the Company                                                                              |
| `fields_`                                                                                      | T::Array<*::String*>                                                                           | :heavy_minus_sign:                                                                             | Comma-delimited fields to return                                                               |

### Response

**[T.nilable(Models::Operations::UpdateCrmCompanyResponse)](../../models/operations/updatecrmcompanyresponse.md)**



## update_crm_contact

Update a contact

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.update_crm_contact(crm_contact=Models::Shared::CrmContact.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.crm_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                | Type                                                                                     | Required                                                                                 | Description                                                                              |
| ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| `crm_contact`                                                                            | [Models::Shared::CrmContact](../../models/shared/crmcontact.md)                          | :heavy_check_mark:                                                                       | A contact represents a person that optionally is associated with a deal and/or a company |
| `connection_id`                                                                          | *::String*                                                                               | :heavy_check_mark:                                                                       | ID of the connection                                                                     |
| `id`                                                                                     | *::String*                                                                               | :heavy_check_mark:                                                                       | ID of the Contact                                                                        |
| `fields_`                                                                                | T::Array<*::String*>                                                                     | :heavy_minus_sign:                                                                       | Comma-delimited fields to return                                                         |

### Response

**[T.nilable(Models::Operations::UpdateCrmContactResponse)](../../models/operations/updatecrmcontactresponse.md)**



## update_crm_deal

Update a deal

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.update_crm_deal(crm_deal=Models::Shared::CrmDeal.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.crm_deal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                       | Type                                                            | Required                                                        | Description                                                     |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `crm_deal`                                                      | [Models::Shared::CrmDeal](../../models/shared/crmdeal.md)       | :heavy_check_mark:                                              | A deal represents an opportunity with companies and/or contacts |
| `connection_id`                                                 | *::String*                                                      | :heavy_check_mark:                                              | ID of the connection                                            |
| `id`                                                            | *::String*                                                      | :heavy_check_mark:                                              | ID of the Deal                                                  |
| `fields_`                                                       | T::Array<*::String*>                                            | :heavy_minus_sign:                                              | Comma-delimited fields to return                                |

### Response

**[T.nilable(Models::Operations::UpdateCrmDealResponse)](../../models/operations/updatecrmdealresponse.md)**



## update_crm_event

Update an event

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.update_crm_event(crm_event=Models::Shared::CrmEvent.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.crm_event.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `crm_event`                                                                                                     | [Models::Shared::CrmEvent](../../models/shared/crmevent.md)                                                     | :heavy_check_mark:                                                                                              | An event represents an event, activity, or engagement and is always associated with a deal, contact, or company |
| `connection_id`                                                                                                 | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the connection                                                                                            |
| `id`                                                                                                            | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the Event                                                                                                 |
| `fields_`                                                                                                       | T::Array<*::String*>                                                                                            | :heavy_minus_sign:                                                                                              | Comma-delimited fields to return                                                                                |

### Response

**[T.nilable(Models::Operations::UpdateCrmEventResponse)](../../models/operations/updatecrmeventresponse.md)**



## update_crm_lead

Update a lead

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.update_crm_lead(crm_lead=Models::Shared::CrmLead.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.crm_lead.nil?
  # handle response
end

```

### Parameters

| Parameter                                                 | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `crm_lead`                                                | [Models::Shared::CrmLead](../../models/shared/crmlead.md) | :heavy_check_mark:                                        | N/A                                                       |
| `connection_id`                                           | *::String*                                                | :heavy_check_mark:                                        | ID of the connection                                      |
| `id`                                                      | *::String*                                                | :heavy_check_mark:                                        | ID of the Lead                                            |
| `fields_`                                                 | T::Array<*::String*>                                      | :heavy_minus_sign:                                        | Comma-delimited fields to return                          |

### Response

**[T.nilable(Models::Operations::UpdateCrmLeadResponse)](../../models/operations/updatecrmleadresponse.md)**



## update_crm_pipeline

Update a pipeline

### Example Usage

```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.crm.update_crm_pipeline(crm_pipeline=Models::Shared::CrmPipeline.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.crm_pipeline.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `crm_pipeline`                                                    | [Models::Shared::CrmPipeline](../../models/shared/crmpipeline.md) | :heavy_check_mark:                                                | N/A                                                               |
| `connection_id`                                                   | *::String*                                                        | :heavy_check_mark:                                                | ID of the connection                                              |
| `id`                                                              | *::String*                                                        | :heavy_check_mark:                                                | ID of the Pipeline                                                |
| `fields_`                                                         | T::Array<*::String*>                                              | :heavy_minus_sign:                                                | Comma-delimited fields to return                                  |

### Response

**[T.nilable(Models::Operations::UpdateCrmPipelineResponse)](../../models/operations/updatecrmpipelineresponse.md)**

