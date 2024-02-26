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

    
res = s.hris.create_hris_employee(::UnifiedRubySDK::Operations::CreateHrisEmployeeSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", hris_employee=::UnifiedRubySDK::Shared::HrisEmployee.new())

if ! res.hris_employee.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                        | [::UnifiedRubySDK::Operations::CreateHrisEmployeeSecurity](../../models/operations/createhrisemployeesecurity.md) | :heavy_check_mark:                                                                                                | The security requirements to use for the request.                                                                 |
| `connection_id`                                                                                                   | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | ID of the connection                                                                                              |
| `hris_employee`                                                                                                   | [::UnifiedRubySDK::Shared::HrisEmployee](../../models/shared/hrisemployee.md)                                     | :heavy_minus_sign:                                                                                                | N/A                                                                                                               |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateHrisEmployeeResponse)](../../models/operations/createhrisemployeeresponse.md)**


## create_hris_group

Create a group

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.hris.create_hris_group(::UnifiedRubySDK::Operations::CreateHrisGroupSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", hris_group=::UnifiedRubySDK::Shared::HrisGroup.new())

if ! res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                  | [::UnifiedRubySDK::Operations::CreateHrisGroupSecurity](../../models/operations/createhrisgroupsecurity.md) | :heavy_check_mark:                                                                                          | The security requirements to use for the request.                                                           |
| `connection_id`                                                                                             | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | ID of the connection                                                                                        |
| `hris_group`                                                                                                | [::UnifiedRubySDK::Shared::HrisGroup](../../models/shared/hrisgroup.md)                                     | :heavy_minus_sign:                                                                                          | N/A                                                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateHrisGroupResponse)](../../models/operations/createhrisgroupresponse.md)**


## get_hris_employee

Retrieve an employee

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.hris.get_hris_employee(::UnifiedRubySDK::Operations::GetHrisEmployeeSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.hris_employee.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                  | [::UnifiedRubySDK::Operations::GetHrisEmployeeSecurity](../../models/operations/gethrisemployeesecurity.md) | :heavy_check_mark:                                                                                          | The security requirements to use for the request.                                                           |
| `connection_id`                                                                                             | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | ID of the connection                                                                                        |
| `id`                                                                                                        | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | ID of the Employee                                                                                          |
| `fields_`                                                                                                   | T::Array<*::String*>                                                                                        | :heavy_minus_sign:                                                                                          | Comma-delimited fields to return                                                                            |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetHrisEmployeeResponse)](../../models/operations/gethrisemployeeresponse.md)**


## get_hris_group

Retrieve a group

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.hris.get_hris_group(::UnifiedRubySDK::Operations::GetHrisGroupSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `security`                                                                                            | [::UnifiedRubySDK::Operations::GetHrisGroupSecurity](../../models/operations/gethrisgroupsecurity.md) | :heavy_check_mark:                                                                                    | The security requirements to use for the request.                                                     |
| `connection_id`                                                                                       | *::String*                                                                                            | :heavy_check_mark:                                                                                    | ID of the connection                                                                                  |
| `id`                                                                                                  | *::String*                                                                                            | :heavy_check_mark:                                                                                    | ID of the Group                                                                                       |
| `fields_`                                                                                             | T::Array<*::String*>                                                                                  | :heavy_minus_sign:                                                                                    | Comma-delimited fields to return                                                                      |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetHrisGroupResponse)](../../models/operations/gethrisgroupresponse.md)**


## list_hris_employees

List all employees

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListHrisEmployeesRequest.new(
  connection_id: "<value>",
)
    
res = s.hris.list_hris_employees(req, ::UnifiedRubySDK::Operations::ListHrisEmployeesSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.hris_employees.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [::UnifiedRubySDK::Operations::ListHrisEmployeesRequest](../../models/operations/listhrisemployeesrequest.md)   | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |
| `security`                                                                                                      | [::UnifiedRubySDK::Operations::ListHrisEmployeesSecurity](../../models/operations/listhrisemployeessecurity.md) | :heavy_check_mark:                                                                                              | The security requirements to use for the request.                                                               |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListHrisEmployeesResponse)](../../models/operations/listhrisemployeesresponse.md)**


## list_hris_groups

List all groups

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListHrisGroupsRequest.new(
  connection_id: "<value>",
)
    
res = s.hris.list_hris_groups(req, ::UnifiedRubySDK::Operations::ListHrisGroupsSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.hris_groups.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                 | [::UnifiedRubySDK::Operations::ListHrisGroupsRequest](../../models/operations/listhrisgroupsrequest.md)   | :heavy_check_mark:                                                                                        | The request object to use for the request.                                                                |
| `security`                                                                                                | [::UnifiedRubySDK::Operations::ListHrisGroupsSecurity](../../models/operations/listhrisgroupssecurity.md) | :heavy_check_mark:                                                                                        | The security requirements to use for the request.                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListHrisGroupsResponse)](../../models/operations/listhrisgroupsresponse.md)**


## patch_hris_employee

Update an employee

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.hris.patch_hris_employee(::UnifiedRubySDK::Operations::PatchHrisEmployeeSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", hris_employee=::UnifiedRubySDK::Shared::HrisEmployee.new())

if ! res.hris_employee.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                      | [::UnifiedRubySDK::Operations::PatchHrisEmployeeSecurity](../../models/operations/patchhrisemployeesecurity.md) | :heavy_check_mark:                                                                                              | The security requirements to use for the request.                                                               |
| `connection_id`                                                                                                 | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the connection                                                                                            |
| `id`                                                                                                            | *::String*                                                                                                      | :heavy_check_mark:                                                                                              | ID of the Employee                                                                                              |
| `hris_employee`                                                                                                 | [::UnifiedRubySDK::Shared::HrisEmployee](../../models/shared/hrisemployee.md)                                   | :heavy_minus_sign:                                                                                              | N/A                                                                                                             |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchHrisEmployeeResponse)](../../models/operations/patchhrisemployeeresponse.md)**


## patch_hris_group

Update a group

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.hris.patch_hris_group(::UnifiedRubySDK::Operations::PatchHrisGroupSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", hris_group=::UnifiedRubySDK::Shared::HrisGroup.new())

if ! res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                 | Type                                                                                                      | Required                                                                                                  | Description                                                                                               |
| --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                | [::UnifiedRubySDK::Operations::PatchHrisGroupSecurity](../../models/operations/patchhrisgroupsecurity.md) | :heavy_check_mark:                                                                                        | The security requirements to use for the request.                                                         |
| `connection_id`                                                                                           | *::String*                                                                                                | :heavy_check_mark:                                                                                        | ID of the connection                                                                                      |
| `id`                                                                                                      | *::String*                                                                                                | :heavy_check_mark:                                                                                        | ID of the Group                                                                                           |
| `hris_group`                                                                                              | [::UnifiedRubySDK::Shared::HrisGroup](../../models/shared/hrisgroup.md)                                   | :heavy_minus_sign:                                                                                        | N/A                                                                                                       |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchHrisGroupResponse)](../../models/operations/patchhrisgroupresponse.md)**


## remove_hris_employee

Remove an employee

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.hris.remove_hris_employee(::UnifiedRubySDK::Operations::RemoveHrisEmployeeSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                        | [::UnifiedRubySDK::Operations::RemoveHrisEmployeeSecurity](../../models/operations/removehrisemployeesecurity.md) | :heavy_check_mark:                                                                                                | The security requirements to use for the request.                                                                 |
| `connection_id`                                                                                                   | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | ID of the connection                                                                                              |
| `id`                                                                                                              | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | ID of the Employee                                                                                                |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveHrisEmployeeResponse)](../../models/operations/removehrisemployeeresponse.md)**


## remove_hris_group

Remove a group

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.hris.remove_hris_group(::UnifiedRubySDK::Operations::RemoveHrisGroupSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                  | [::UnifiedRubySDK::Operations::RemoveHrisGroupSecurity](../../models/operations/removehrisgroupsecurity.md) | :heavy_check_mark:                                                                                          | The security requirements to use for the request.                                                           |
| `connection_id`                                                                                             | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | ID of the connection                                                                                        |
| `id`                                                                                                        | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | ID of the Group                                                                                             |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveHrisGroupResponse)](../../models/operations/removehrisgroupresponse.md)**


## update_hris_employee

Update an employee

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.hris.update_hris_employee(::UnifiedRubySDK::Operations::UpdateHrisEmployeeSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", hris_employee=::UnifiedRubySDK::Shared::HrisEmployee.new())

if ! res.hris_employee.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                         | Type                                                                                                              | Required                                                                                                          | Description                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                        | [::UnifiedRubySDK::Operations::UpdateHrisEmployeeSecurity](../../models/operations/updatehrisemployeesecurity.md) | :heavy_check_mark:                                                                                                | The security requirements to use for the request.                                                                 |
| `connection_id`                                                                                                   | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | ID of the connection                                                                                              |
| `id`                                                                                                              | *::String*                                                                                                        | :heavy_check_mark:                                                                                                | ID of the Employee                                                                                                |
| `hris_employee`                                                                                                   | [::UnifiedRubySDK::Shared::HrisEmployee](../../models/shared/hrisemployee.md)                                     | :heavy_minus_sign:                                                                                                | N/A                                                                                                               |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateHrisEmployeeResponse)](../../models/operations/updatehrisemployeeresponse.md)**


## update_hris_group

Update a group

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.hris.update_hris_group(::UnifiedRubySDK::Operations::UpdateHrisGroupSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", hris_group=::UnifiedRubySDK::Shared::HrisGroup.new())

if ! res.hris_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                  | [::UnifiedRubySDK::Operations::UpdateHrisGroupSecurity](../../models/operations/updatehrisgroupsecurity.md) | :heavy_check_mark:                                                                                          | The security requirements to use for the request.                                                           |
| `connection_id`                                                                                             | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | ID of the connection                                                                                        |
| `id`                                                                                                        | *::String*                                                                                                  | :heavy_check_mark:                                                                                          | ID of the Group                                                                                             |
| `hris_group`                                                                                                | [::UnifiedRubySDK::Shared::HrisGroup](../../models/shared/hrisgroup.md)                                     | :heavy_minus_sign:                                                                                          | N/A                                                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateHrisGroupResponse)](../../models/operations/updatehrisgroupresponse.md)**

