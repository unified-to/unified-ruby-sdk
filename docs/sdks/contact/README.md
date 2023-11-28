# Contact


### Available Operations

* [create_crm_contact](#create_crm_contact) - Create a contact
* [create_uc_contact](#create_uc_contact) - Create a contact
* [get_crm_contact](#get_crm_contact) - Retrieve a contact
* [get_uc_contact](#get_uc_contact) - Retrieve a contact
* [list_crm_contacts](#list_crm_contacts) - List all contacts
* [list_uc_contacts](#list_uc_contacts) - List all contacts
* [patch_crm_contact](#patch_crm_contact) - Update a contact
* [patch_uc_contact](#patch_uc_contact) - Update a contact
* [remove_crm_contact](#remove_crm_contact) - Remove a contact
* [remove_uc_contact](#remove_uc_contact) - Remove a contact
* [update_crm_contact](#update_crm_contact) - Update a contact
* [update_uc_contact](#update_uc_contact) - Update a contact

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
    
res = s.contact.create_crm_contact(req)

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


## create_uc_contact

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

   
req = Operations::CreateUcContactRequest.new(
  path_params=Operations::CreateUcContactRequest.new(
    connection_id="string",
    uc_contact=Shared::UcContact.new(
      company="Gottlieb - Becker",
      created_at=DateTime.iso8601('2023-07-20T18:36:15.437Z'),
      emails=.new[
        Shared::UcEmail.new(
          email="Elliot78@hotmail.com",
          type=Shared::UcEmailType::OTHER,
        ),
      ],
      id="<ID>",
      name="string",
      raw=Shared::PropertyUcContactRaw.new(),
      telephones=.new[
        Shared::UcTelephone.new(
          telephone="string",
          type=Shared::UcTelephoneType::HOME,
        ),
      ],
      title="string",
      updated_at=DateTime.iso8601('2021-09-09T13:33:34.174Z'),
    ),
  ),
  uc_contact=Shared::UcContact.new(
    company="Klein, Ullrich and Wilkinson",
    created_at=DateTime.iso8601('2021-05-19T17:50:58.074Z'),
    emails=.new[
      Shared::UcEmail.new(
        email="Dawn.Jenkins19@hotmail.com",
        type=Shared::UcEmailType::HOME,
      ),
    ],
    id="<ID>",
    name="string",
    raw=Shared::PropertyUcContactRaw.new(),
    telephones=.new[
      Shared::UcTelephone.new(
        telephone="string",
        type=Shared::UcTelephoneType::WORK,
      ),
    ],
    title="string",
    updated_at=DateTime.iso8601('2023-09-29T12:54:23.937Z'),
  ),
)
    
res = s.contact.create_uc_contact(req)

if ! res.uc_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `connection_id`                                                         | *String*                                                                | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `uc_contact`                                                            | [Shared::UcContact](../../models/shared/uccontact.md)                   | :heavy_minus_sign:                                                      | A contact represents a person that optionally is associated with a call |


### Response

**[T.nilable(Operations::CreateUcContactResponse)](../../models/operations/createuccontactresponse.md)**


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
    
res = s.contact.get_crm_contact(req)

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


## get_uc_contact

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

   
req = Operations::GetUcContactRequest.new(
  path_params=Operations::GetUcContactRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetUcContactRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.contact.get_uc_contact(req)

if ! res.uc_contact.nil?
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

**[T.nilable(Operations::GetUcContactResponse)](../../models/operations/getuccontactresponse.md)**


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
    
res = s.contact.list_crm_contacts(req)

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


## list_uc_contacts

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

   
req = Operations::ListUcContactsRequest.new(
  path_params=Operations::ListUcContactsRequest.new(
    agent_id="string",
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=5333.71,
    offset=7775.9,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2022-10-25T15:03:37.771Z'),
  ),
  query_params=Operations::ListUcContactsRequest.new(
    agent_id="string",
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=9998.81,
    offset=7184.5,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2022-11-16T17:18:16.884Z'),
  ),
)
    
res = s.contact.list_uc_contacts(req)

if ! res.uc_contacts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `request`                                                                             | [Operations::ListUcContactsRequest](../../models/operations/listuccontactsrequest.md) | :heavy_check_mark:                                                                    | The request object to use for the request.                                            |


### Response

**[T.nilable(Operations::ListUcContactsResponse)](../../models/operations/listuccontactsresponse.md)**


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
    
res = s.contact.patch_crm_contact(req)

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


## patch_uc_contact

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

   
req = Operations::PatchUcContactRequest.new(
  path_params=Operations::PatchUcContactRequest.new(
    connection_id="string",
    id="<ID>",
    uc_contact=Shared::UcContact.new(
      company="Runolfsdottir, Boehm and Toy",
      created_at=DateTime.iso8601('2023-05-28T14:51:42.138Z'),
      emails=.new[
        Shared::UcEmail.new(
          email="Arlie78@hotmail.com",
          type=Shared::UcEmailType::OTHER,
        ),
      ],
      id="<ID>",
      name="string",
      raw=Shared::PropertyUcContactRaw.new(),
      telephones=.new[
        Shared::UcTelephone.new(
          telephone="string",
          type=Shared::UcTelephoneType::WORK,
        ),
      ],
      title="string",
      updated_at=DateTime.iso8601('2023-01-05T22:17:06.765Z'),
    ),
  ),
  uc_contact=Shared::UcContact.new(
    company="Hartmann LLC",
    created_at=DateTime.iso8601('2021-08-04T14:30:17.869Z'),
    emails=.new[
      Shared::UcEmail.new(
        email="Madalyn.Greenfelder52@yahoo.com",
        type=Shared::UcEmailType::OTHER,
      ),
    ],
    id="<ID>",
    name="string",
    raw=Shared::PropertyUcContactRaw.new(),
    telephones=.new[
      Shared::UcTelephone.new(
        telephone="string",
        type=Shared::UcTelephoneType::HOME,
      ),
    ],
    title="string",
    updated_at=DateTime.iso8601('2022-11-16T10:16:59.813Z'),
  ),
)
    
res = s.contact.patch_uc_contact(req)

if ! res.uc_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `connection_id`                                                         | *String*                                                                | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `id`                                                                    | *String*                                                                | :heavy_check_mark:                                                      | ID of the Contact                                                       |
| `uc_contact`                                                            | [Shared::UcContact](../../models/shared/uccontact.md)                   | :heavy_minus_sign:                                                      | A contact represents a person that optionally is associated with a call |


### Response

**[T.nilable(Operations::PatchUcContactResponse)](../../models/operations/patchuccontactresponse.md)**


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
    
res = s.contact.remove_crm_contact(req)

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


## remove_uc_contact

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

   
req = Operations::RemoveUcContactRequest.new(
  path_params=Operations::RemoveUcContactRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.contact.remove_uc_contact(req)

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

**[T.nilable(Operations::RemoveUcContactResponse)](../../models/operations/removeuccontactresponse.md)**


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
    
res = s.contact.update_crm_contact(req)

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


## update_uc_contact

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

   
req = Operations::UpdateUcContactRequest.new(
  path_params=Operations::UpdateUcContactRequest.new(
    connection_id="string",
    id="<ID>",
    uc_contact=Shared::UcContact.new(
      company="Marquardt Group",
      created_at=DateTime.iso8601('2023-02-21T01:40:47.681Z'),
      emails=.new[
        Shared::UcEmail.new(
          email="Stephany25@yahoo.com",
          type=Shared::UcEmailType::WORK,
        ),
      ],
      id="<ID>",
      name="string",
      raw=Shared::PropertyUcContactRaw.new(),
      telephones=.new[
        Shared::UcTelephone.new(
          telephone="string",
          type=Shared::UcTelephoneType::WORK,
        ),
      ],
      title="string",
      updated_at=DateTime.iso8601('2021-05-01T13:06:37.779Z'),
    ),
  ),
  uc_contact=Shared::UcContact.new(
    company="Bednar - Rutherford",
    created_at=DateTime.iso8601('2021-08-23T22:10:38.423Z'),
    emails=.new[
      Shared::UcEmail.new(
        email="Dillon_Mueller4@gmail.com",
        type=Shared::UcEmailType::WORK,
      ),
    ],
    id="<ID>",
    name="string",
    raw=Shared::PropertyUcContactRaw.new(),
    telephones=.new[
      Shared::UcTelephone.new(
        telephone="string",
        type=Shared::UcTelephoneType::FAX,
      ),
    ],
    title="string",
    updated_at=DateTime.iso8601('2021-07-19T03:53:03.853Z'),
  ),
)
    
res = s.contact.update_uc_contact(req)

if ! res.uc_contact.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `connection_id`                                                         | *String*                                                                | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `id`                                                                    | *String*                                                                | :heavy_check_mark:                                                      | ID of the Contact                                                       |
| `uc_contact`                                                            | [Shared::UcContact](../../models/shared/uccontact.md)                   | :heavy_minus_sign:                                                      | A contact represents a person that optionally is associated with a call |


### Response

**[T.nilable(Operations::UpdateUcContactResponse)](../../models/operations/updateuccontactresponse.md)**

