# Lead


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
require_relative unified_to


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
      contact_id="string",
      created_at=DateTime.iso8601('2022-12-02T12:39:30.878Z'),
      creator_user_id="string",
      emails=.new[
        Shared::CrmEmail.new(
          email="Deon.Okuneva41@yahoo.com",
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
      updated_at=DateTime.iso8601('2022-10-22T13:03:06.397Z'),
      user_id="string",
    ),
  ),
  crm_lead=Shared::CrmLead.new(
    address=Shared::PropertyCrmLeadAddress.new(
      address1="string",
      address2="string",
      city="West Clotilde",
      country="Kenya",
      country_code="AI",
      postal_code="47696",
      region="string",
      region_code="string",
    ),
    company_id="string",
    contact_id="string",
    created_at=DateTime.iso8601('2021-12-21T05:18:10.891Z'),
    creator_user_id="string",
    emails=.new[
      Shared::CrmEmail.new(
        email="Haven_Brown@hotmail.com",
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
        type=Shared::CrmTelephoneType::OTHER,
      ),
    ],
    updated_at=DateTime.iso8601('2023-06-20T22:22:36.026Z'),
    user_id="string",
  ),
)
    
res = s.lead.create_crm_lead(req)

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


## get_crm_lead

Retrieve a lead

### Example Usage

```ruby
require_relative unified_to


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
    
res = s.lead.get_crm_lead(req)

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


## list_crm_leads

List all leads

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListCrmLeadsRequest.new(
  path_params=Operations::ListCrmLeadsRequest.new(
    connection_id="string",
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
    connection_id="string",
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
    
res = s.lead.list_crm_leads(req)

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


## patch_crm_lead

Update a lead

### Example Usage

```ruby
require_relative unified_to


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
      contact_id="string",
      created_at=DateTime.iso8601('2023-04-29T09:14:32.818Z'),
      creator_user_id="string",
      emails=.new[
        Shared::CrmEmail.new(
          email="Jovani.Wintheiser@gmail.com",
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
          type=Shared::CrmTelephoneType::FAX,
        ),
      ],
      updated_at=DateTime.iso8601('2022-07-16T20:36:32.674Z'),
      user_id="string",
    ),
  ),
  crm_lead=Shared::CrmLead.new(
    address=Shared::PropertyCrmLeadAddress.new(
      address1="string",
      address2="string",
      city="Madison",
      country="Guadeloupe",
      country_code="AL",
      postal_code="49357",
      region="string",
      region_code="string",
    ),
    company_id="string",
    contact_id="string",
    created_at=DateTime.iso8601('2022-02-02T07:00:30.982Z'),
    creator_user_id="string",
    emails=.new[
      Shared::CrmEmail.new(
        email="Jarred3@yahoo.com",
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
    updated_at=DateTime.iso8601('2021-06-17T14:51:22.233Z'),
    user_id="string",
  ),
)
    
res = s.lead.patch_crm_lead(req)

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


## remove_crm_lead

Remove a lead

### Example Usage

```ruby
require_relative unified_to


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
    
res = s.lead.remove_crm_lead(req)

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


## update_crm_lead

Update a lead

### Example Usage

```ruby
require_relative unified_to


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
      contact_id="string",
      created_at=DateTime.iso8601('2022-08-24T09:40:13.817Z'),
      creator_user_id="string",
      emails=.new[
        Shared::CrmEmail.new(
          email="Cathryn.Wunsch@gmail.com",
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
      updated_at=DateTime.iso8601('2023-12-11T04:55:41.521Z'),
      user_id="string",
    ),
  ),
  crm_lead=Shared::CrmLead.new(
    address=Shared::PropertyCrmLeadAddress.new(
      address1="string",
      address2="string",
      city="Corona",
      country="Saint Vincent and the Grenadines",
      country_code="SS",
      postal_code="35641-0682",
      region="string",
      region_code="string",
    ),
    company_id="string",
    contact_id="string",
    created_at=DateTime.iso8601('2021-09-04T08:03:29.360Z'),
    creator_user_id="string",
    emails=.new[
      Shared::CrmEmail.new(
        email="Destany25@yahoo.com",
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
        type=Shared::CrmTelephoneType::WORK,
      ),
    ],
    updated_at=DateTime.iso8601('2023-01-31T12:20:11.018Z'),
    user_id="string",
  ),
)
    
res = s.lead.update_crm_lead(req)

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

