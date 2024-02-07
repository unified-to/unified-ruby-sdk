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
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hris.create_hris_employee(connection_id="string", hris_employee=::UnifiedRubySDK::Shared::HrisEmployee.new(
    address: ::UnifiedRubySDK::Shared::PropertyHrisEmployeeAddress.new(),
    emails: [
      ::UnifiedRubySDK::Shared::HrisEmail.new(
        email: "Adriel_Hansen@hotmail.com",
      ),
    ],
    raw: {
      "composite": "string",
    },
    telephones: [
      ::UnifiedRubySDK::Shared::HrisTelephone.new(
        telephone: "string",
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


## create_hris_group

Create a group

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hris.create_hris_group(connection_id="string", hris_group=::UnifiedRubySDK::Shared::HrisGroup.new(
    manager_ids: [
      "string",
    ],
    raw: {
      "transmitter": "string",
    },
    user_ids: [
      "string",
    ],
  ))

if ! res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `connection_id`                                                         | *::String*                                                              | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `hris_group`                                                            | [::UnifiedRubySDK::Shared::HrisGroup](../../models/shared/hrisgroup.md) | :heavy_minus_sign:                                                      | N/A                                                                     |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateHrisGroupResponse)](../../models/operations/createhrisgroupresponse.md)**


## get_hris_employee

Retrieve an employee

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hris.get_hris_employee(connection_id="string", id="string", fields_=[
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
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetHrisEmployeeResponse)](../../models/operations/gethrisemployeeresponse.md)**


## get_hris_group

Retrieve a group

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hris.get_hris_group(connection_id="string", id="string", fields_=[
    "string",
  ])

if ! res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Group                  |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetHrisGroupResponse)](../../models/operations/gethrisgroupresponse.md)**


## list_hris_employees

List all employees

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListHrisEmployeesRequest.new(
  connection_id: "string",
  fields_: [
    "string",
  ],
)
    
res = s.hris.list_hris_employees(req)

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


## list_hris_groups

List all groups

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListHrisGroupsRequest.new(
  connection_id: "string",
  fields_: [
    "string",
  ],
)
    
res = s.hris.list_hris_groups(req)

if ! res.hris_groups.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                               | Type                                                                                                    | Required                                                                                                | Description                                                                                             |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `request`                                                                                               | [::UnifiedRubySDK::Operations::ListHrisGroupsRequest](../../models/operations/listhrisgroupsrequest.md) | :heavy_check_mark:                                                                                      | The request object to use for the request.                                                              |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListHrisGroupsResponse)](../../models/operations/listhrisgroupsresponse.md)**


## patch_hris_employee

Update an employee

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hris.patch_hris_employee(connection_id="string", id="string", hris_employee=::UnifiedRubySDK::Shared::HrisEmployee.new(
    address: ::UnifiedRubySDK::Shared::PropertyHrisEmployeeAddress.new(),
    emails: [
      ::UnifiedRubySDK::Shared::HrisEmail.new(
        email: "Zetta.Cassin@yahoo.com",
      ),
    ],
    raw: {
      "cyan": "string",
    },
    telephones: [
      ::UnifiedRubySDK::Shared::HrisTelephone.new(
        telephone: "string",
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


## patch_hris_group

Update a group

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hris.patch_hris_group(connection_id="string", id="string", hris_group=::UnifiedRubySDK::Shared::HrisGroup.new(
    manager_ids: [
      "string",
    ],
    raw: {
      "scalable": "string",
    },
    user_ids: [
      "string",
    ],
  ))

if ! res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `connection_id`                                                         | *::String*                                                              | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `id`                                                                    | *::String*                                                              | :heavy_check_mark:                                                      | ID of the Group                                                         |
| `hris_group`                                                            | [::UnifiedRubySDK::Shared::HrisGroup](../../models/shared/hrisgroup.md) | :heavy_minus_sign:                                                      | N/A                                                                     |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchHrisGroupResponse)](../../models/operations/patchhrisgroupresponse.md)**


## remove_hris_employee

Remove an employee

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hris.remove_hris_employee(connection_id="string", id="string")

if res.status_code == 200
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


## remove_hris_group

Remove a group

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hris.remove_hris_group(connection_id="string", id="string")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Group      |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveHrisGroupResponse)](../../models/operations/removehrisgroupresponse.md)**


## update_hris_employee

Update an employee

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hris.update_hris_employee(connection_id="string", id="string", hris_employee=::UnifiedRubySDK::Shared::HrisEmployee.new(
    address: ::UnifiedRubySDK::Shared::PropertyHrisEmployeeAddress.new(),
    emails: [
      ::UnifiedRubySDK::Shared::HrisEmail.new(
        email: "Abbie_Aufderhar@gmail.com",
      ),
    ],
    raw: {
      "Mazda": "string",
    },
    telephones: [
      ::UnifiedRubySDK::Shared::HrisTelephone.new(
        telephone: "string",
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


## update_hris_group

Update a group

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hris.update_hris_group(connection_id="string", id="string", hris_group=::UnifiedRubySDK::Shared::HrisGroup.new(
    manager_ids: [
      "string",
    ],
    raw: {
      "disintermediate": "string",
    },
    user_ids: [
      "string",
    ],
  ))

if ! res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `connection_id`                                                         | *::String*                                                              | :heavy_check_mark:                                                      | ID of the connection                                                    |
| `id`                                                                    | *::String*                                                              | :heavy_check_mark:                                                      | ID of the Group                                                         |
| `hris_group`                                                            | [::UnifiedRubySDK::Shared::HrisGroup](../../models/shared/hrisgroup.md) | :heavy_minus_sign:                                                      | N/A                                                                     |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateHrisGroupResponse)](../../models/operations/updatehrisgroupresponse.md)**

