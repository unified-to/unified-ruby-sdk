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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::CreateUcContactRequest.new(
  connection_id="string",
  uc_contact=Shared::UcContact.new(
    emails=[
      Shared::UcEmail.new(
        email="Dulce_Becker30@yahoo.com",
      ),
    ],
    raw=Shared::PropertyUcContactRaw.new(),
    telephones=[
      Shared::UcTelephone.new(
        telephone="string",
      ),
    ],
  ),
)
    
res = s.uc.create_uc_contact(connection_id="string", uc_contact=Shared::UcContact.new(
    emails=[
      Shared::UcEmail.new(
        email="Cassidy.Schaefer22@yahoo.com",
      ),
    ],
    raw=Shared::PropertyUcContactRaw.new(),
    telephones=[
      Shared::UcTelephone.new(
        telephone="string",
      ),
    ],
  ))

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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetUcContactRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.uc.get_uc_contact(connection_id="string", id="string", fields=[
    "string",
  ])

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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListUcCallsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListUcContactsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::PatchUcContactRequest.new(
  connection_id="string",
  id="<ID>",
  uc_contact=Shared::UcContact.new(
    emails=[
      Shared::UcEmail.new(
        email="Norene_Boehm97@hotmail.com",
      ),
    ],
    raw=Shared::PropertyUcContactRaw.new(),
    telephones=[
      Shared::UcTelephone.new(
        telephone="string",
      ),
    ],
  ),
)
    
res = s.uc.patch_uc_contact(connection_id="string", id="string", uc_contact=Shared::UcContact.new(
    emails=[
      Shared::UcEmail.new(
        email="Lea_Collins1@gmail.com",
      ),
    ],
    raw=Shared::PropertyUcContactRaw.new(),
    telephones=[
      Shared::UcTelephone.new(
        telephone="string",
      ),
    ],
  ))

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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::RemoveUcContactRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.uc.remove_uc_contact(connection_id="string", id="string")

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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::UpdateUcContactRequest.new(
  connection_id="string",
  id="<ID>",
  uc_contact=Shared::UcContact.new(
    emails=[
      Shared::UcEmail.new(
        email="Kianna.Witting90@gmail.com",
      ),
    ],
    raw=Shared::PropertyUcContactRaw.new(),
    telephones=[
      Shared::UcTelephone.new(
        telephone="string",
      ),
    ],
  ),
)
    
res = s.uc.update_uc_contact(connection_id="string", id="string", uc_contact=Shared::UcContact.new(
    emails=[
      Shared::UcEmail.new(
        email="Brandy10@hotmail.com",
      ),
    ],
    raw=Shared::PropertyUcContactRaw.new(),
    telephones=[
      Shared::UcTelephone.new(
        telephone="string",
      ),
    ],
  ))

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

