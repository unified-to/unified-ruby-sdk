# File


### Available Operations

* [create_crm_file](#create_crm_file) - Create a file
* [get_crm_file](#get_crm_file) - Retrieve a file
* [list_crm_files](#list_crm_files) - List all files
* [patch_crm_file](#patch_crm_file) - Update a file
* [remove_crm_file](#remove_crm_file) - Remove a file
* [update_crm_file](#update_crm_file) - Update a file

## create_crm_file

Create a file

### Example Usage

```ruby
require_relative unified_to


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
    
res = s.file.create_crm_file(req)

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


## get_crm_file

Retrieve a file

### Example Usage

```ruby
require_relative unified_to


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
    
res = s.file.get_crm_file(req)

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


## list_crm_files

List all files

### Example Usage

```ruby
require_relative unified_to


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
    
res = s.file.list_crm_files(req)

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


## patch_crm_file

Update a file

### Example Usage

```ruby
require_relative unified_to


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
    
res = s.file.patch_crm_file(req)

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


## remove_crm_file

Remove a file

### Example Usage

```ruby
require_relative unified_to


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
    
res = s.file.remove_crm_file(req)

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


## update_crm_file

Update a file

### Example Usage

```ruby
require_relative unified_to


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
    
res = s.file.update_crm_file(req)

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

