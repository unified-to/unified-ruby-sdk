# Hris


### Available Operations

* [create_hris_employee](#create_hris_employee) - Create an employee
* [create_hris_group](#create_hris_group) - Create a group
* [get_hris_employee](#get_hris_employee) - Retrieve an employee
* [get_hris_group](#get_hris_group) - Retrieve a group
* [list_hris_employees](#list_hris_employees) - List all employees
* [list_hris_groups](#list_hris_groups) - List all groups
* [patch_hris_employee](#patch_hris_employee) - Update an employee
* [patch_hris_group](#patch_hris_group) - Update a group
* [remove_hris_employee](#remove_hris_employee) - Remove an employee
* [remove_hris_group](#remove_hris_group) - Remove a group
* [update_hris_employee](#update_hris_employee) - Update an employee
* [update_hris_group](#update_hris_group) - Update a group

## create_hris_employee

Create an employee

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreateHrisEmployeeRequest.new(
  path_params=Operations::CreateHrisEmployeeRequest.new(
    connection_id="string",
    hris_employee=Shared::HrisEmployee.new(
      address=Shared::PropertyHrisEmployeeAddress.new(
        address1="string",
        address2="string",
        city="Armstrongborough",
        country="Indonesia",
        country_code="MO",
        postal_code="23995",
        region="string",
        region_code="string",
      ),
      created_at=DateTime.iso8601('2023-10-07T18:03:23.931Z'),
      currency="Tunisian Dinar",
      date_of_birth=DateTime.iso8601('2021-09-15T16:13:17.445Z'),
      department="string",
      division="string",
      emails=.new[
        Shared::HrisEmail.new(
          email="Audrey.Wilkinson@yahoo.com",
          type=Shared::HrisEmailType::WORK,
        ),
      ],
      employee_number="string",
      employment_status=Shared::EmploymentStatus::INACTIVE,
      employment_type=Shared::HrisEmployeeEmploymentType::PART_TIME,
      gender=Shared::HrisEmployeeGender::INTERSEX,
      hired_at=DateTime.iso8601('2022-02-03T22:28:54.800Z'),
      id="<ID>",
      image_url="string",
      language_locale="string",
      location="string",
      manager_id="string",
      marital_status=Shared::MaritalStatus::MARRIED,
      name="string",
      raw=Shared::PropertyHrisEmployeeRaw.new(),
      telephones=.new[
        Shared::HrisTelephone.new(
          telephone="string",
          type=Shared::HrisTelephoneType::MOBILE,
        ),
      ],
      terminated_at=DateTime.iso8601('2022-02-26T07:00:32.887Z'),
      timezone="Australia/Perth",
      title="string",
      updated_at=DateTime.iso8601('2022-12-14T16:36:56.159Z'),
    ),
  ),
  hris_employee=Shared::HrisEmployee.new(
    address=Shared::PropertyHrisEmployeeAddress.new(
      address1="string",
      address2="string",
      city="South Nestorberg",
      country="Netherlands Antilles",
      country_code="SD",
      postal_code="42997-6350",
      region="string",
      region_code="string",
    ),
    created_at=DateTime.iso8601('2022-04-14T21:20:10.556Z'),
    currency="Argentine Peso",
    date_of_birth=DateTime.iso8601('2022-04-05T23:08:45.012Z'),
    department="string",
    division="string",
    emails=.new[
      Shared::HrisEmail.new(
        email="Tyreek_Schumm55@yahoo.com",
        type=Shared::HrisEmailType::HOME,
      ),
    ],
    employee_number="string",
    employment_status=Shared::EmploymentStatus::ACTIVE,
    employment_type=Shared::HrisEmployeeEmploymentType::OTHER,
    gender=Shared::HrisEmployeeGender::MALE,
    hired_at=DateTime.iso8601('2023-10-17T10:13:01.244Z'),
    id="<ID>",
    image_url="string",
    language_locale="string",
    location="string",
    manager_id="string",
    marital_status=Shared::MaritalStatus::SINGLE,
    name="string",
    raw=Shared::PropertyHrisEmployeeRaw.new(),
    telephones=.new[
      Shared::HrisTelephone.new(
        telephone="string",
        type=Shared::HrisTelephoneType::OTHER,
      ),
    ],
    terminated_at=DateTime.iso8601('2023-08-31T09:46:02.751Z'),
    timezone="Asia/Ulaanbaatar",
    title="string",
    updated_at=DateTime.iso8601('2022-03-11T08:39:02.588Z'),
  ),
)
    
res = s.hris.create_hris_employee(req)

if ! res.hris_employee.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `connection_id`                                             | *String*                                                    | :heavy_check_mark:                                          | ID of the connection                                        |
| `hris_employee`                                             | [Shared::HrisEmployee](../../models/shared/hrisemployee.md) | :heavy_minus_sign:                                          | N/A                                                         |


### Response

**[T.nilable(Operations::CreateHrisEmployeeResponse)](../../models/operations/createhrisemployeeresponse.md)**


## create_hris_group

Create a group

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreateHrisGroupRequest.new(
  path_params=Operations::CreateHrisGroupRequest.new(
    connection_id="string",
    hris_group=Shared::HrisGroup.new(
      created_at=DateTime.iso8601('2022-08-11T13:14:46.931Z'),
      description="Self-enabling system-worthy collaboration",
      employee_ids=.new[
        "string",
      ],
      id="<ID>",
      is_active=false,
      manager_ids=.new[
        "string",
      ],
      name="string",
      parent_id="string",
      raw=Shared::PropertyHrisGroupRaw.new(),
      type=Shared::HrisGroupType::TEAM,
      updated_at=DateTime.iso8601('2023-03-10T00:20:29.321Z'),
    ),
  ),
  hris_group=Shared::HrisGroup.new(
    created_at=DateTime.iso8601('2022-01-27T15:34:55.791Z'),
    description="Proactive empowering approach",
    employee_ids=.new[
      "string",
    ],
    id="<ID>",
    is_active=false,
    manager_ids=.new[
      "string",
    ],
    name="string",
    parent_id="string",
    raw=Shared::PropertyHrisGroupRaw.new(),
    type=Shared::HrisGroupType::TEAM,
    updated_at=DateTime.iso8601('2022-01-25T14:36:31.130Z'),
  ),
)
    
res = s.hris.create_hris_group(req)

if ! res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                             | Type                                                  | Required                                              | Description                                           |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `connection_id`                                       | *String*                                              | :heavy_check_mark:                                    | ID of the connection                                  |
| `hris_group`                                          | [Shared::HrisGroup](../../models/shared/hrisgroup.md) | :heavy_minus_sign:                                    | N/A                                                   |


### Response

**[T.nilable(Operations::CreateHrisGroupResponse)](../../models/operations/createhrisgroupresponse.md)**


## get_hris_employee

Retrieve an employee

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetHrisEmployeeRequest.new(
  path_params=Operations::GetHrisEmployeeRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetHrisEmployeeRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.hris.get_hris_employee(req)

if ! res.hris_employee.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Employee               |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetHrisEmployeeResponse)](../../models/operations/gethrisemployeeresponse.md)**


## get_hris_group

Retrieve a group

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetHrisGroupRequest.new(
  path_params=Operations::GetHrisGroupRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetHrisGroupRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.hris.get_hris_group(req)

if ! res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Group                  |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetHrisGroupResponse)](../../models/operations/gethrisgroupresponse.md)**


## list_hris_employees

List all employees

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListHrisEmployeesRequest.new(
  path_params=Operations::ListHrisEmployeesRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=5148.12,
    offset=2185.43,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2022-04-09T14:44:59.888Z'),
  ),
  query_params=Operations::ListHrisEmployeesRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=3855,
    offset=6705.41,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2022-05-04T14:12:06.034Z'),
  ),
)
    
res = s.hris.list_hris_employees(req)

if ! res.hris_employees.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Operations::ListHrisEmployeesRequest](../../models/operations/listhrisemployeesrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |


### Response

**[T.nilable(Operations::ListHrisEmployeesResponse)](../../models/operations/listhrisemployeesresponse.md)**


## list_hris_groups

List all groups

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListHrisGroupsRequest.new(
  path_params=Operations::ListHrisGroupsRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=4815.14,
    offset=2554.75,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-04-29T22:04:03.121Z'),
  ),
  query_params=Operations::ListHrisGroupsRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=4234.1,
    offset=9175.29,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-10-31T06:46:39.656Z'),
  ),
)
    
res = s.hris.list_hris_groups(req)

if ! res.hris_groups.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `request`                                                                             | [Operations::ListHrisGroupsRequest](../../models/operations/listhrisgroupsrequest.md) | :heavy_check_mark:                                                                    | The request object to use for the request.                                            |


### Response

**[T.nilable(Operations::ListHrisGroupsResponse)](../../models/operations/listhrisgroupsresponse.md)**


## patch_hris_employee

Update an employee

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::PatchHrisEmployeeRequest.new(
  path_params=Operations::PatchHrisEmployeeRequest.new(
    connection_id="string",
    id="<ID>",
    hris_employee=Shared::HrisEmployee.new(
      address=Shared::PropertyHrisEmployeeAddress.new(
        address1="string",
        address2="string",
        city="Zettaland",
        country="Mexico",
        country_code="DJ",
        postal_code="87892",
        region="string",
        region_code="string",
      ),
      created_at=DateTime.iso8601('2022-07-12T10:27:03.270Z'),
      currency="Venezuelan bolívar",
      date_of_birth=DateTime.iso8601('2023-05-04T09:04:41.512Z'),
      department="string",
      division="string",
      emails=.new[
        Shared::HrisEmail.new(
          email="Bobby_Balistreri@yahoo.com",
          type=Shared::HrisEmailType::OTHER,
        ),
      ],
      employee_number="string",
      employment_status=Shared::EmploymentStatus::INACTIVE,
      employment_type=Shared::HrisEmployeeEmploymentType::VOLUNTEER,
      gender=Shared::HrisEmployeeGender::FEMALE,
      hired_at=DateTime.iso8601('2023-12-01T15:49:02.961Z'),
      id="<ID>",
      image_url="string",
      language_locale="string",
      location="string",
      manager_id="string",
      marital_status=Shared::MaritalStatus::SINGLE,
      name="string",
      raw=Shared::PropertyHrisEmployeeRaw.new(),
      telephones=.new[
        Shared::HrisTelephone.new(
          telephone="string",
          type=Shared::HrisTelephoneType::MOBILE,
        ),
      ],
      terminated_at=DateTime.iso8601('2023-05-06T23:32:48.401Z'),
      timezone="Asia/Bangkok",
      title="string",
      updated_at=DateTime.iso8601('2022-08-26T07:56:48.693Z'),
    ),
  ),
  hris_employee=Shared::HrisEmployee.new(
    address=Shared::PropertyHrisEmployeeAddress.new(
      address1="string",
      address2="string",
      city="Plainfield",
      country="Uruguay",
      country_code="YT",
      postal_code="61525-5372",
      region="string",
      region_code="string",
    ),
    created_at=DateTime.iso8601('2023-06-18T08:12:13.006Z'),
    currency="Rwanda Franc",
    date_of_birth=DateTime.iso8601('2023-04-11T12:09:27.780Z'),
    department="string",
    division="string",
    emails=.new[
      Shared::HrisEmail.new(
        email="Larissa45@gmail.com",
        type=Shared::HrisEmailType::WORK,
      ),
    ],
    employee_number="string",
    employment_status=Shared::EmploymentStatus::ACTIVE,
    employment_type=Shared::HrisEmployeeEmploymentType::OTHER,
    gender=Shared::HrisEmployeeGender::TRANS,
    hired_at=DateTime.iso8601('2022-05-21T10:10:05.621Z'),
    id="<ID>",
    image_url="string",
    language_locale="string",
    location="string",
    manager_id="string",
    marital_status=Shared::MaritalStatus::MARRIED,
    name="string",
    raw=Shared::PropertyHrisEmployeeRaw.new(),
    telephones=.new[
      Shared::HrisTelephone.new(
        telephone="string",
        type=Shared::HrisTelephoneType::WORK,
      ),
    ],
    terminated_at=DateTime.iso8601('2022-08-08T12:32:05.639Z'),
    timezone="Asia/Bangkok",
    title="string",
    updated_at=DateTime.iso8601('2022-02-23T13:28:26.736Z'),
  ),
)
    
res = s.hris.patch_hris_employee(req)

if ! res.hris_employee.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `connection_id`                                             | *String*                                                    | :heavy_check_mark:                                          | ID of the connection                                        |
| `id`                                                        | *String*                                                    | :heavy_check_mark:                                          | ID of the Employee                                          |
| `hris_employee`                                             | [Shared::HrisEmployee](../../models/shared/hrisemployee.md) | :heavy_minus_sign:                                          | N/A                                                         |


### Response

**[T.nilable(Operations::PatchHrisEmployeeResponse)](../../models/operations/patchhrisemployeeresponse.md)**


## patch_hris_group

Update a group

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::PatchHrisGroupRequest.new(
  path_params=Operations::PatchHrisGroupRequest.new(
    connection_id="string",
    id="<ID>",
    hris_group=Shared::HrisGroup.new(
      created_at=DateTime.iso8601('2021-11-09T20:25:35.217Z'),
      description="Compatible contextually-based local area network",
      employee_ids=.new[
        "string",
      ],
      id="<ID>",
      is_active=false,
      manager_ids=.new[
        "string",
      ],
      name="string",
      parent_id="string",
      raw=Shared::PropertyHrisGroupRaw.new(),
      type=Shared::HrisGroupType::DIVISION,
      updated_at=DateTime.iso8601('2022-06-23T09:49:13.425Z'),
    ),
  ),
  hris_group=Shared::HrisGroup.new(
    created_at=DateTime.iso8601('2022-12-25T07:04:30.987Z'),
    description="Adaptive radical methodology",
    employee_ids=.new[
      "string",
    ],
    id="<ID>",
    is_active=false,
    manager_ids=.new[
      "string",
    ],
    name="string",
    parent_id="string",
    raw=Shared::PropertyHrisGroupRaw.new(),
    type=Shared::HrisGroupType::DIVISION,
    updated_at=DateTime.iso8601('2022-05-22T15:46:46.079Z'),
  ),
)
    
res = s.hris.patch_hris_group(req)

if ! res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                             | Type                                                  | Required                                              | Description                                           |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `connection_id`                                       | *String*                                              | :heavy_check_mark:                                    | ID of the connection                                  |
| `id`                                                  | *String*                                              | :heavy_check_mark:                                    | ID of the Group                                       |
| `hris_group`                                          | [Shared::HrisGroup](../../models/shared/hrisgroup.md) | :heavy_minus_sign:                                    | N/A                                                   |


### Response

**[T.nilable(Operations::PatchHrisGroupResponse)](../../models/operations/patchhrisgroupresponse.md)**


## remove_hris_employee

Remove an employee

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveHrisEmployeeRequest.new(
  path_params=Operations::RemoveHrisEmployeeRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.hris.remove_hris_employee(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Employee   |


### Response

**[T.nilable(Operations::RemoveHrisEmployeeResponse)](../../models/operations/removehrisemployeeresponse.md)**


## remove_hris_group

Remove a group

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveHrisGroupRequest.new(
  path_params=Operations::RemoveHrisGroupRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.hris.remove_hris_group(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Group      |


### Response

**[T.nilable(Operations::RemoveHrisGroupResponse)](../../models/operations/removehrisgroupresponse.md)**


## update_hris_employee

Update an employee

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::UpdateHrisEmployeeRequest.new(
  path_params=Operations::UpdateHrisEmployeeRequest.new(
    connection_id="string",
    id="<ID>",
    hris_employee=Shared::HrisEmployee.new(
      address=Shared::PropertyHrisEmployeeAddress.new(
        address1="string",
        address2="string",
        city="North Alfurt",
        country="Thailand",
        country_code="ST",
        postal_code="60601-3179",
        region="string",
        region_code="string",
      ),
      created_at=DateTime.iso8601('2023-06-07T20:54:18.451Z'),
      currency="Zimbabwe Dollar",
      date_of_birth=DateTime.iso8601('2023-05-04T04:51:18.540Z'),
      department="string",
      division="string",
      emails=.new[
        Shared::HrisEmail.new(
          email="Larue_Schroeder65@gmail.com",
          type=Shared::HrisEmailType::WORK,
        ),
      ],
      employee_number="string",
      employment_status=Shared::EmploymentStatus::INACTIVE,
      employment_type=Shared::HrisEmployeeEmploymentType::CONTRACTOR,
      gender=Shared::HrisEmployeeGender::TRANS,
      hired_at=DateTime.iso8601('2022-05-31T07:27:04.651Z'),
      id="<ID>",
      image_url="string",
      language_locale="string",
      location="string",
      manager_id="string",
      marital_status=Shared::MaritalStatus::MARRIED,
      name="string",
      raw=Shared::PropertyHrisEmployeeRaw.new(),
      telephones=.new[
        Shared::HrisTelephone.new(
          telephone="string",
          type=Shared::HrisTelephoneType::FAX,
        ),
      ],
      terminated_at=DateTime.iso8601('2023-07-23T03:17:52.660Z'),
      timezone="America/Phoenix",
      title="string",
      updated_at=DateTime.iso8601('2023-05-14T14:53:03.527Z'),
    ),
  ),
  hris_employee=Shared::HrisEmployee.new(
    address=Shared::PropertyHrisEmployeeAddress.new(
      address1="string",
      address2="string",
      city="Howardview",
      country="Slovakia (Slovak Republic)",
      country_code="LB",
      postal_code="17373-6135",
      region="string",
      region_code="string",
    ),
    created_at=DateTime.iso8601('2023-03-10T13:52:47.416Z'),
    currency="Zimbabwe Dollar",
    date_of_birth=DateTime.iso8601('2021-03-08T15:04:15.840Z'),
    department="string",
    division="string",
    emails=.new[
      Shared::HrisEmail.new(
        email="Jaquan.Nienow72@yahoo.com",
        type=Shared::HrisEmailType::HOME,
      ),
    ],
    employee_number="string",
    employment_status=Shared::EmploymentStatus::ACTIVE,
    employment_type=Shared::HrisEmployeeEmploymentType::INTERN,
    gender=Shared::HrisEmployeeGender::INTERSEX,
    hired_at=DateTime.iso8601('2021-08-25T19:37:01.417Z'),
    id="<ID>",
    image_url="string",
    language_locale="string",
    location="string",
    manager_id="string",
    marital_status=Shared::MaritalStatus::SINGLE,
    name="string",
    raw=Shared::PropertyHrisEmployeeRaw.new(),
    telephones=.new[
      Shared::HrisTelephone.new(
        telephone="string",
        type=Shared::HrisTelephoneType::WORK,
      ),
    ],
    terminated_at=DateTime.iso8601('2021-01-23T11:48:01.774Z'),
    timezone="Europe/Bratislava",
    title="string",
    updated_at=DateTime.iso8601('2021-09-18T15:26:02.275Z'),
  ),
)
    
res = s.hris.update_hris_employee(req)

if ! res.hris_employee.nil?
  # handle response
end

```

### Parameters

| Parameter                                                   | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `connection_id`                                             | *String*                                                    | :heavy_check_mark:                                          | ID of the connection                                        |
| `id`                                                        | *String*                                                    | :heavy_check_mark:                                          | ID of the Employee                                          |
| `hris_employee`                                             | [Shared::HrisEmployee](../../models/shared/hrisemployee.md) | :heavy_minus_sign:                                          | N/A                                                         |


### Response

**[T.nilable(Operations::UpdateHrisEmployeeResponse)](../../models/operations/updatehrisemployeeresponse.md)**


## update_hris_group

Update a group

### Example Usage

```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::UpdateHrisGroupRequest.new(
  path_params=Operations::UpdateHrisGroupRequest.new(
    connection_id="string",
    id="<ID>",
    hris_group=Shared::HrisGroup.new(
      created_at=DateTime.iso8601('2021-12-06T17:42:02.933Z'),
      description="Integrated empowering productivity",
      employee_ids=.new[
        "string",
      ],
      id="<ID>",
      is_active=false,
      manager_ids=.new[
        "string",
      ],
      name="string",
      parent_id="string",
      raw=Shared::PropertyHrisGroupRaw.new(),
      type=Shared::HrisGroupType::TEAM,
      updated_at=DateTime.iso8601('2023-09-12T15:58:06.273Z'),
    ),
  ),
  hris_group=Shared::HrisGroup.new(
    created_at=DateTime.iso8601('2021-02-20T16:10:10.066Z'),
    description="Business-focused analyzing help-desk",
    employee_ids=.new[
      "string",
    ],
    id="<ID>",
    is_active=false,
    manager_ids=.new[
      "string",
    ],
    name="string",
    parent_id="string",
    raw=Shared::PropertyHrisGroupRaw.new(),
    type=Shared::HrisGroupType::TEAM,
    updated_at=DateTime.iso8601('2023-01-30T09:57:45.517Z'),
  ),
)
    
res = s.hris.update_hris_group(req)

if ! res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                             | Type                                                  | Required                                              | Description                                           |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `connection_id`                                       | *String*                                              | :heavy_check_mark:                                    | ID of the connection                                  |
| `id`                                                  | *String*                                              | :heavy_check_mark:                                    | ID of the Group                                       |
| `hris_group`                                          | [Shared::HrisGroup](../../models/shared/hrisgroup.md) | :heavy_minus_sign:                                    | N/A                                                   |


### Response

**[T.nilable(Operations::UpdateHrisGroupResponse)](../../models/operations/updatehrisgroupresponse.md)**

