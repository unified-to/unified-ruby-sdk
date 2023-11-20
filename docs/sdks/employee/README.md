# Employee


### Available Operations

* [create_hris_employee](#create_hris_employee) - Create an employee
* [get_hris_employee](#get_hris_employee) - Retrieve an employee
* [list_hris_employees](#list_hris_employees) - List all employees
* [patch_hris_employee](#patch_hris_employee) - Update an employee
* [remove_hris_employee](#remove_hris_employee) - Remove an employee
* [update_hris_employee](#update_hris_employee) - Update an employee

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
    
res = s.employee.create_hris_employee(req)

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
    
res = s.employee.get_hris_employee(req)

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
    
res = s.employee.list_hris_employees(req)

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
    
res = s.employee.patch_hris_employee(req)

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
    
res = s.employee.remove_hris_employee(req)

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
    
res = s.employee.update_hris_employee(req)

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

