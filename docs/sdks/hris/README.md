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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::CreateHrisEmployeeRequest.new(
  connection_id="string",
  hris_employee=Shared::HrisEmployee.new(
    address=Shared::PropertyHrisEmployeeAddress.new(),
    emails=[
      Shared::HrisEmail.new(
        email="Adriel_Hansen@hotmail.com",
      ),
    ],
    raw=Shared::PropertyHrisEmployeeRaw.new(),
    telephones=[
      Shared::HrisTelephone.new(
        telephone="string",
      ),
    ],
  ),
)
    
res = s.hris.create_hris_employee(connection_id="string", hris_employee=Shared::HrisEmployee.new(
    address=Shared::PropertyHrisEmployeeAddress.new(),
    emails=[
      Shared::HrisEmail.new(
        email="Corene_Gutmann57@yahoo.com",
      ),
    ],
    raw=Shared::PropertyHrisEmployeeRaw.new(),
    telephones=[
      Shared::HrisTelephone.new(
        telephone="string",
      ),
    ],
  ))

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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::CreateHrisGroupRequest.new(
  connection_id="string",
  hris_group=Shared::HrisGroup.new(
    employee_ids=[
      "string",
    ],
    manager_ids=[
      "string",
    ],
    raw=Shared::PropertyHrisGroupRaw.new(),
  ),
)
    
res = s.hris.create_hris_group(connection_id="string", hris_group=Shared::HrisGroup.new(
    employee_ids=[
      "string",
    ],
    manager_ids=[
      "string",
    ],
    raw=Shared::PropertyHrisGroupRaw.new(),
  ))

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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetHrisEmployeeRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.hris.get_hris_employee(connection_id="string", id="string", fields=[
    "string",
  ])

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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::GetHrisGroupRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.hris.get_hris_group(connection_id="string", id="string", fields=[
    "string",
  ])

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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListHrisEmployeesRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::ListHrisGroupsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::PatchHrisEmployeeRequest.new(
  connection_id="string",
  id="<ID>",
  hris_employee=Shared::HrisEmployee.new(
    address=Shared::PropertyHrisEmployeeAddress.new(),
    emails=[
      Shared::HrisEmail.new(
        email="Zetta.Cassin@yahoo.com",
      ),
    ],
    raw=Shared::PropertyHrisEmployeeRaw.new(),
    telephones=[
      Shared::HrisTelephone.new(
        telephone="string",
      ),
    ],
  ),
)
    
res = s.hris.patch_hris_employee(connection_id="string", id="string", hris_employee=Shared::HrisEmployee.new(
    address=Shared::PropertyHrisEmployeeAddress.new(),
    emails=[
      Shared::HrisEmail.new(
        email="Savannah_Robel26@gmail.com",
      ),
    ],
    raw=Shared::PropertyHrisEmployeeRaw.new(),
    telephones=[
      Shared::HrisTelephone.new(
        telephone="string",
      ),
    ],
  ))

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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::PatchHrisGroupRequest.new(
  connection_id="string",
  id="<ID>",
  hris_group=Shared::HrisGroup.new(
    employee_ids=[
      "string",
    ],
    manager_ids=[
      "string",
    ],
    raw=Shared::PropertyHrisGroupRaw.new(),
  ),
)
    
res = s.hris.patch_hris_group(connection_id="string", id="string", hris_group=Shared::HrisGroup.new(
    employee_ids=[
      "string",
    ],
    manager_ids=[
      "string",
    ],
    raw=Shared::PropertyHrisGroupRaw.new(),
  ))

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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::RemoveHrisEmployeeRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.hris.remove_hris_employee(connection_id="string", id="string")

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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::RemoveHrisGroupRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.hris.remove_hris_group(connection_id="string", id="string")

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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::UpdateHrisEmployeeRequest.new(
  connection_id="string",
  id="<ID>",
  hris_employee=Shared::HrisEmployee.new(
    address=Shared::PropertyHrisEmployeeAddress.new(),
    emails=[
      Shared::HrisEmail.new(
        email="Abbie_Aufderhar@gmail.com",
      ),
    ],
    raw=Shared::PropertyHrisEmployeeRaw.new(),
    telephones=[
      Shared::HrisTelephone.new(
        telephone="string",
      ),
    ],
  ),
)
    
res = s.hris.update_hris_employee(connection_id="string", id="string", hris_employee=Shared::HrisEmployee.new(
    address=Shared::PropertyHrisEmployeeAddress.new(),
    emails=[
      Shared::HrisEmail.new(
        email="Lola61@hotmail.com",
      ),
    ],
    raw=Shared::PropertyHrisEmployeeRaw.new(),
    telephones=[
      Shared::HrisTelephone.new(
        telephone="string",
      ),
    ],
  ))

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
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::UpdateHrisGroupRequest.new(
  connection_id="string",
  id="<ID>",
  hris_group=Shared::HrisGroup.new(
    employee_ids=[
      "string",
    ],
    manager_ids=[
      "string",
    ],
    raw=Shared::PropertyHrisGroupRaw.new(),
  ),
)
    
res = s.hris.update_hris_group(connection_id="string", id="string", hris_group=Shared::HrisGroup.new(
    employee_ids=[
      "string",
    ],
    manager_ids=[
      "string",
    ],
    raw=Shared::PropertyHrisGroupRaw.new(),
  ))

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

