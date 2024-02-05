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
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=::UnifiedRubySDK::Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.employee.create_hris_employee(connection_id="string", hris_employee=::UnifiedRubySDK::Shared::HrisEmployee.new(
    address=::UnifiedRubySDK::Shared::PropertyHrisEmployeeAddress.new(),
    emails=[
      ::UnifiedRubySDK::Shared::HrisEmail.new(
        email="Adriel_Hansen@hotmail.com",
      ),
    ],
    raw={
      "composite": "string",
    },
    telephones=[
      ::UnifiedRubySDK::Shared::HrisTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.hris_employee.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `hris_employee`                                                               | [::UnifiedRubySDK::Shared::HrisEmployee](../../models/shared/hrisemployee.md) | :heavy_minus_sign:                                                            | N/A                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateHrisEmployeeResponse)](../../models/operations/createhrisemployeeresponse.md)**


## get_hris_employee

Retrieve an employee

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=::UnifiedRubySDK::Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.employee.get_hris_employee(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.hris_employee.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Employee               |
| `fields`                         | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetHrisEmployeeResponse)](../../models/operations/gethrisemployeeresponse.md)**


## list_hris_employees

List all employees

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=::UnifiedRubySDK::Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListHrisEmployeesRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.employee.list_hris_employees(req)

if ! res.hris_employees.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [::UnifiedRubySDK::Operations::ListHrisEmployeesRequest](../../models/operations/listhrisemployeesrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListHrisEmployeesResponse)](../../models/operations/listhrisemployeesresponse.md)**


## patch_hris_employee

Update an employee

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=::UnifiedRubySDK::Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.employee.patch_hris_employee(connection_id="string", id="string", hris_employee=::UnifiedRubySDK::Shared::HrisEmployee.new(
    address=::UnifiedRubySDK::Shared::PropertyHrisEmployeeAddress.new(),
    emails=[
      ::UnifiedRubySDK::Shared::HrisEmail.new(
        email="Zetta.Cassin@yahoo.com",
      ),
    ],
    raw={
      "cyan": "string",
    },
    telephones=[
      ::UnifiedRubySDK::Shared::HrisTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.hris_employee.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `id`                                                                          | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the Employee                                                            |
| `hris_employee`                                                               | [::UnifiedRubySDK::Shared::HrisEmployee](../../models/shared/hrisemployee.md) | :heavy_minus_sign:                                                            | N/A                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchHrisEmployeeResponse)](../../models/operations/patchhrisemployeeresponse.md)**


## remove_hris_employee

Remove an employee

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=::UnifiedRubySDK::Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.employee.remove_hris_employee(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Employee   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveHrisEmployeeResponse)](../../models/operations/removehrisemployeeresponse.md)**


## update_hris_employee

Update an employee

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=::UnifiedRubySDK::Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.employee.update_hris_employee(connection_id="string", id="string", hris_employee=::UnifiedRubySDK::Shared::HrisEmployee.new(
    address=::UnifiedRubySDK::Shared::PropertyHrisEmployeeAddress.new(),
    emails=[
      ::UnifiedRubySDK::Shared::HrisEmail.new(
        email="Abbie_Aufderhar@gmail.com",
      ),
    ],
    raw={
      "Mazda": "string",
    },
    telephones=[
      ::UnifiedRubySDK::Shared::HrisTelephone.new(
        telephone="string",
      ),
    ],
  ))

if ! res.hris_employee.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `connection_id`                                                               | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the connection                                                          |
| `id`                                                                          | *::String*                                                                    | :heavy_check_mark:                                                            | ID of the Employee                                                            |
| `hris_employee`                                                               | [::UnifiedRubySDK::Shared::HrisEmployee](../../models/shared/hrisemployee.md) | :heavy_minus_sign:                                                            | N/A                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateHrisEmployeeResponse)](../../models/operations/updatehrisemployeeresponse.md)**

