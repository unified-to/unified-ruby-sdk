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

Creates a CrmLead. Provide the unified CrmLead fields in the request body; they are mapped to the provider's API. Returns the created CrmLead.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createCrmLead" method="post" path="/crm/{connection_id}/lead" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.lead.create_crm_lead(crm_lead: Models::Shared::CrmLead.new(
  address: Models::Shared::PropertyCrmLeadAddress.new(
    address1: '87206 Hudson Street',
    city: 'Leslieboro',
    country_code: 'US',
    postal_code: '49909-1183',
    region: 'Michigan',
    region_code: 'MO',
  ),
  company_name: 'Tillman - Wiegand',
  created_at: DateTime.iso8601('2019-10-12T11:27:59.003Z'),
  emails: [
    Models::Shared::CrmEmail.new(
      email: 'velda.sporer@icloud.com',
      type: Models::Shared::CrmEmailType::WORK,
    ),
  ],
  first_name: 'Velda',
  id: 'f2068b3a-f69f-43fc-a6d2-66a2fde33990',
  is_active: true,
  last_name: 'Sporer',
  link_urls: [
    'https://www.linkedin.com/in/velda-sporer',
  ],
  metadata: [
    Models::Shared::CrmMetadata.new(
      extra_data: {
        "display_name": 'Custom Property',
      },
      format: Models::Shared::CrmMetadataFormat::TEXT,
      id: 'b49fd907-193c-4a5d-891c-b0d8daf526d2',
      namespace: 'custom',
      slug: 'custom_property',
      value: 'vitiosus',
    ),
  ],
  name: 'Velda Sporer',
  source: 'Advertisement',
  status: 'New',
  telephones: [
    Models::Shared::CrmTelephone.new(
      telephone: '(841) 271-0595',
      type: Models::Shared::CrmTelephoneType::FAX,
    ),
    Models::Shared::CrmTelephone.new(
      telephone: '(664) 498-4952',
      type: Models::Shared::CrmTelephoneType::HOME,
    ),
    Models::Shared::CrmTelephone.new(
      telephone: '(281) 288-0037',
      type: Models::Shared::CrmTelephoneType::OTHER,
    ),
  ],
  title: 'International Factors Administrator',
  updated_at: DateTime.iso8601('2020-05-18T15:36:13.157Z'),
), connection_id: '<id>')

unless res.crm_lead.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `crm_lead`                                                                                                                                       | [Models::Shared::CrmLead](../../models/shared/crmlead.md)                                                                                        | :heavy_check_mark:                                                                                                                               | N/A                                                                                                                                              |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::CreateCrmLeadQueryParamFields](../../models/operations/createcrmleadqueryparamfields.md)>                          | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::CreateCrmLeadResponse)](../../models/operations/createcrmleadresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_crm_lead

Retrieves a single CrmLead by its `id`. Obtain `id` values from the corresponding list endpoint. Use `fields` to return only the fields you need.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getCrmLead" method="get" path="/crm/{connection_id}/lead/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.lead.get_crm_lead(connection_id: '<id>', id: '<id>')

unless res.crm_lead.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                        | Type                                                                                                                                             | Required                                                                                                                                         | Description                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `connection_id`                                                                                                                                  | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the connection                                                                                                                             |
| `id`                                                                                                                                             | *::String*                                                                                                                                       | :heavy_check_mark:                                                                                                                               | ID of the Lead                                                                                                                                   |
| `fields_`                                                                                                                                        | T::Array<[Models::Operations::GetCrmLeadQueryParamFields](../../models/operations/getcrmleadqueryparamfields.md)>                                | :heavy_minus_sign:                                                                                                                               | Fields to return                                                                                                                                 |
| `raw`                                                                                                                                            | *T.nilable(::String)*                                                                                                                            | :heavy_minus_sign:                                                                                                                               | Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar |

### Response

**[T.nilable(Models::Operations::GetCrmLeadResponse)](../../models/operations/getcrmleadresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_crm_leads

Returns a list of CrmLeads. Narrow the results with the query parameters before paging, then page through them with `limit` and `offset` (the default and maximum page size depend on the integration). Use `fields` to return only the fields you need and reduce the response size. When the integration supports a total count, it is returned in the `X-Total-Count` response header. Use each item's `id` to retrieve, update, or delete it where those operations are supported.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listCrmLeads" method="get" path="/crm/{connection_id}/lead" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::ListCrmLeadsRequest.new(
  connection_id: '<id>',
)

res = s.lead.list_crm_leads(request: req)

unless res.crm_leads.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::ListCrmLeadsRequest](../../models/operations/listcrmleadsrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::ListCrmLeadsResponse)](../../models/operations/listcrmleadsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## patch_crm_lead

Updates the CrmLead identified by `id`. Provide the unified CrmLead fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patchCrmLead" method="patch" path="/crm/{connection_id}/lead/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::PatchCrmLeadRequest.new(
  crm_lead: Models::Shared::CrmLead.new(
    address: Models::Shared::PropertyCrmLeadAddress.new(
      address1: '87206 Hudson Street',
      city: 'Leslieboro',
      country_code: 'US',
      postal_code: '49909-1183',
      region: 'Michigan',
      region_code: 'MO',
    ),
    company_name: 'Tillman - Wiegand',
    created_at: DateTime.iso8601('2019-10-12T11:27:59.003Z'),
    emails: [
      Models::Shared::CrmEmail.new(
        email: 'velda.sporer@icloud.com',
        type: Models::Shared::CrmEmailType::WORK,
      ),
    ],
    first_name: 'Velda',
    id: '070541e0-d71c-4748-a6a1-3759a0166f62',
    is_active: true,
    last_name: 'Sporer',
    link_urls: [
      'https://www.linkedin.com/in/velda-sporer',
    ],
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: 'f164ed4a-dc03-44c8-93db-ae542c73814e',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'vitiosus',
      ),
    ],
    name: 'Velda Sporer',
    source: 'Advertisement',
    status: 'New',
    telephones: [
      Models::Shared::CrmTelephone.new(
        telephone: '(841) 271-0595',
        type: Models::Shared::CrmTelephoneType::FAX,
      ),
      Models::Shared::CrmTelephone.new(
        telephone: '(664) 498-4952',
        type: Models::Shared::CrmTelephoneType::HOME,
      ),
      Models::Shared::CrmTelephone.new(
        telephone: '(281) 288-0037',
        type: Models::Shared::CrmTelephoneType::OTHER,
      ),
    ],
    title: 'International Factors Administrator',
    updated_at: DateTime.iso8601('2020-05-18T15:36:13.160Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.lead.patch_crm_lead(request: req)

unless res.crm_lead.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::PatchCrmLeadRequest](../../models/operations/patchcrmleadrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::PatchCrmLeadResponse)](../../models/operations/patchcrmleadresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## remove_crm_lead

Deletes the CrmLead identified by `id`.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="removeCrmLead" method="delete" path="/crm/{connection_id}/lead/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.lead.remove_crm_lead(connection_id: '<id>', id: '<id>')

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

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_crm_lead

Updates the CrmLead identified by `id`. Provide the unified CrmLead fields to change in the request body.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateCrmLead" method="put" path="/crm/{connection_id}/lead/{id}" -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

req = Models::Operations::UpdateCrmLeadRequest.new(
  crm_lead: Models::Shared::CrmLead.new(
    address: Models::Shared::PropertyCrmLeadAddress.new(
      address1: '87206 Hudson Street',
      city: 'Leslieboro',
      country_code: 'US',
      postal_code: '49909-1183',
      region: 'Michigan',
      region_code: 'MO',
    ),
    company_name: 'Tillman - Wiegand',
    created_at: DateTime.iso8601('2019-10-12T11:27:59.003Z'),
    emails: [
      Models::Shared::CrmEmail.new(
        email: 'velda.sporer@icloud.com',
        type: Models::Shared::CrmEmailType::WORK,
      ),
    ],
    first_name: 'Velda',
    id: '070541e0-d71c-4748-a6a1-3759a0166f62',
    is_active: true,
    last_name: 'Sporer',
    link_urls: [
      'https://www.linkedin.com/in/velda-sporer',
    ],
    metadata: [
      Models::Shared::CrmMetadata.new(
        extra_data: {
          "display_name": 'Custom Property',
        },
        format: Models::Shared::CrmMetadataFormat::TEXT,
        id: 'f164ed4a-dc03-44c8-93db-ae542c73814e',
        namespace: 'custom',
        slug: 'custom_property',
        value: 'vitiosus',
      ),
    ],
    name: 'Velda Sporer',
    source: 'Advertisement',
    status: 'New',
    telephones: [
      Models::Shared::CrmTelephone.new(
        telephone: '(841) 271-0595',
        type: Models::Shared::CrmTelephoneType::FAX,
      ),
      Models::Shared::CrmTelephone.new(
        telephone: '(664) 498-4952',
        type: Models::Shared::CrmTelephoneType::HOME,
      ),
      Models::Shared::CrmTelephone.new(
        telephone: '(281) 288-0037',
        type: Models::Shared::CrmTelephoneType::OTHER,
      ),
    ],
    title: 'International Factors Administrator',
    updated_at: DateTime.iso8601('2020-05-18T15:36:13.160Z'),
  ),
  connection_id: '<id>',
  id: '<id>',
)

res = s.lead.update_crm_lead(request: req)

unless res.crm_lead.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::UpdateCrmLeadRequest](../../models/operations/updatecrmleadrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::UpdateCrmLeadResponse)](../../models/operations/updatecrmleadresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |