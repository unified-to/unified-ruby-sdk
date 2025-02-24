# Lead
(*lead*)

## Overview

### Available Operations

* [create_crm_lead](#create_crm_lead) - Create a lead
* [get_crm_lead](#get_crm_lead) - Retrieve a lead
* [list_crm_leads](#list_crm_leads) - List all leads
* [patch_crm_lead](#patch_crm_lead) - Update a lead
* [remove_crm_lead](#remove_crm_lead) - Remove a lead
* [update_crm_lead](#update_crm_lead) - Update a lead

## create_crm_lead

Create a lead

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.lead.create_crm_lead(crm_lead=::UnifiedRubySDK::Shared::CrmLead.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.crm_lead.nil?
  # handle response
end

```

### Parameters

| Parameter                                                           | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `crm_lead`                                                          | [::UnifiedRubySDK::Shared::CrmLead](../../models/shared/crmlead.md) | :heavy_check_mark:                                                  | N/A                                                                 |
| `connection_id`                                                     | *::String*                                                          | :heavy_check_mark:                                                  | ID of the connection                                                |
| `fields_`                                                           | T::Array<*::String*>                                                | :heavy_minus_sign:                                                  | Comma-delimited fields to return                                    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateCrmLeadResponse)](../../models/operations/createcrmleadresponse.md)**



## get_crm_lead

Retrieve a lead

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.lead.get_crm_lead(connection_id="<id>", id="<id>", fields_=[
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

**[T.nilable(::UnifiedRubySDK::Operations::GetCrmLeadResponse)](../../models/operations/getcrmleadresponse.md)**



## list_crm_leads

List all leads

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListCrmLeadsRequest.new(
  connection_id: "<id>",
)
    
res = s.lead.list_crm_leads(req)

if ! res.crm_leads.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [::UnifiedRubySDK::Operations::ListCrmLeadsRequest](../../models/operations/listcrmleadsrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListCrmLeadsResponse)](../../models/operations/listcrmleadsresponse.md)**



## patch_crm_lead

Update a lead

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.lead.patch_crm_lead(crm_lead=::UnifiedRubySDK::Shared::CrmLead.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.crm_lead.nil?
  # handle response
end

```

### Parameters

| Parameter                                                           | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `crm_lead`                                                          | [::UnifiedRubySDK::Shared::CrmLead](../../models/shared/crmlead.md) | :heavy_check_mark:                                                  | N/A                                                                 |
| `connection_id`                                                     | *::String*                                                          | :heavy_check_mark:                                                  | ID of the connection                                                |
| `id`                                                                | *::String*                                                          | :heavy_check_mark:                                                  | ID of the Lead                                                      |
| `fields_`                                                           | T::Array<*::String*>                                                | :heavy_minus_sign:                                                  | Comma-delimited fields to return                                    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchCrmLeadResponse)](../../models/operations/patchcrmleadresponse.md)**



## remove_crm_lead

Remove a lead

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.lead.remove_crm_lead(connection_id="<id>", id="<id>")

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

**[T.nilable(::UnifiedRubySDK::Operations::RemoveCrmLeadResponse)](../../models/operations/removecrmleadresponse.md)**



## update_crm_lead

Update a lead

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.lead.update_crm_lead(crm_lead=::UnifiedRubySDK::Shared::CrmLead.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.crm_lead.nil?
  # handle response
end

```

### Parameters

| Parameter                                                           | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `crm_lead`                                                          | [::UnifiedRubySDK::Shared::CrmLead](../../models/shared/crmlead.md) | :heavy_check_mark:                                                  | N/A                                                                 |
| `connection_id`                                                     | *::String*                                                          | :heavy_check_mark:                                                  | ID of the connection                                                |
| `id`                                                                | *::String*                                                          | :heavy_check_mark:                                                  | ID of the Lead                                                      |
| `fields_`                                                           | T::Array<*::String*>                                                | :heavy_minus_sign:                                                  | Comma-delimited fields to return                                    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateCrmLeadResponse)](../../models/operations/updatecrmleadresponse.md)**

