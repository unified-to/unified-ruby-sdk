# Uc


### Available Operations

* [create_uc_contact](#create_uc_contact) - Create a contact
* [get_uc_contact](#get_uc_contact) - Retrieve a contact
* [list_uc_calls](#list_uc_calls) - List all calls
* [list_uc_contacts](#list_uc_contacts) - List all contacts
* [patch_uc_contact](#patch_uc_contact) - Update a contact
* [remove_uc_contact](#remove_uc_contact) - Remove a contact
* [update_uc_contact](#update_uc_contact) - Update a contact

## create_uc_contact

Create a contact

### Example Usage

```ruby
require_relative unified_to


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
    
res = s.uc.create_uc_contact(req)

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


## get_uc_contact

Retrieve a contact

### Example Usage

```ruby
require_relative unified_to


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
    
res = s.uc.get_uc_contact(req)

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


## list_uc_calls

List all calls

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListUcCallsRequest.new(
  path_params=Operations::ListUcCallsRequest.new(
    agent_id="string",
    connection_id="string",
    contact_id="string",
    fields=.new[
      "string",
    ],
    limit=465.25,
    offset=4996.09,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2023-07-25T02:48:36.966Z'),
  ),
  query_params=Operations::ListUcCallsRequest.new(
    agent_id="string",
    connection_id="string",
    contact_id="string",
    fields=.new[
      "string",
    ],
    limit=836.48,
    offset=2983.08,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-01-21T09:12:35.604Z'),
  ),
)
    
res = s.uc.list_uc_calls(req)

if ! res.uc_calls.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                       | Type                                                                            | Required                                                                        | Description                                                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| `request`                                                                       | [Operations::ListUcCallsRequest](../../models/operations/listuccallsrequest.md) | :heavy_check_mark:                                                              | The request object to use for the request.                                      |


### Response

**[T.nilable(Operations::ListUcCallsResponse)](../../models/operations/listuccallsresponse.md)**


## list_uc_contacts

List all contacts

### Example Usage

```ruby
require_relative unified_to


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
    
res = s.uc.list_uc_contacts(req)

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


## patch_uc_contact

Update a contact

### Example Usage

```ruby
require_relative unified_to


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
    
res = s.uc.patch_uc_contact(req)

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


## remove_uc_contact

Remove a contact

### Example Usage

```ruby
require_relative unified_to


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
    
res = s.uc.remove_uc_contact(req)

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


## update_uc_contact

Update a contact

### Example Usage

```ruby
require_relative unified_to


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
    
res = s.uc.update_uc_contact(req)

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

