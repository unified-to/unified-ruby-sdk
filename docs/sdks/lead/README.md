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

