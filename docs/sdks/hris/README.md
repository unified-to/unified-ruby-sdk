# Hris


### Available Operations

* [create_hris_company](#create_hris_company) - Create a company
* [create_hris_employee](#create_hris_employee) - Create an employee
* [create_hris_group](#create_hris_group) - Create a group
* [get_hris_company](#get_hris_company) - Retrieve a company
* [get_hris_employee](#get_hris_employee) - Retrieve an employee
* [get_hris_group](#get_hris_group) - Retrieve a group
* [get_hris_payslip](#get_hris_payslip) - Retrieve a payslip
* [get_hris_timeoff](#get_hris_timeoff) - Retrieve a timeoff
* [list_hris_companies](#list_hris_companies) - List all companies
* [list_hris_employees](#list_hris_employees) - List all employees
* [list_hris_groups](#list_hris_groups) - List all groups
* [list_hris_payslips](#list_hris_payslips) - List all payslips
* [list_hris_timeoffs](#list_hris_timeoffs) - List all timeoffs
* [patch_hris_company](#patch_hris_company) - Update a company
* [patch_hris_employee](#patch_hris_employee) - Update an employee
* [patch_hris_group](#patch_hris_group) - Update a group
* [remove_hris_company](#remove_hris_company) - Remove a company
* [remove_hris_employee](#remove_hris_employee) - Remove an employee
* [remove_hris_group](#remove_hris_group) - Remove a group
* [update_hris_company](#update_hris_company) - Update a company
* [update_hris_employee](#update_hris_employee) - Update an employee
* [update_hris_group](#update_hris_group) - Update a group

## create_hris_company

Create a company

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hris.create_hris_company(connection_id="<value>", hris_company=::UnifiedRubySDK::Shared::HrisCompany.new())

if ! res.hris_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `connection_id`                                                             | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the connection                                                        |
| `hris_company`                                                              | [::UnifiedRubySDK::Shared::HrisCompany](../../models/shared/hriscompany.md) | :heavy_minus_sign:                                                          | N/A                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateHrisCompanyResponse)](../../models/operations/createhriscompanyresponse.md)**


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

    
res = s.hris.create_hris_employee(connection_id="<value>", hris_employee=::UnifiedRubySDK::Shared::HrisEmployee.new())

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

    
res = s.hris.create_hris_group(connection_id="<value>", hris_group=::UnifiedRubySDK::Shared::HrisGroup.new())

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


## get_hris_company

Retrieve a company

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hris.get_hris_company(connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.hris_company.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Company                |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetHrisCompanyResponse)](../../models/operations/gethriscompanyresponse.md)**


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

    
res = s.hris.get_hris_employee(connection_id="<value>", id="<value>", fields_=[
    "<value>",
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

    
res = s.hris.get_hris_group(connection_id="<value>", id="<value>", fields_=[
    "<value>",
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


## get_hris_payslip

Retrieve a payslip

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hris.get_hris_payslip(connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.hris_payslip.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Payslip                |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetHrisPayslipResponse)](../../models/operations/gethrispayslipresponse.md)**


## get_hris_timeoff

Retrieve a timeoff

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hris.get_hris_timeoff(connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.hris_timeoff.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Timeoff                |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetHrisTimeoffResponse)](../../models/operations/gethristimeoffresponse.md)**


## list_hris_companies

List all companies

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListHrisCompaniesRequest.new(
  connection_id: "<value>",
)
    
res = s.hris.list_hris_companies(req)

if ! res.hris_companies.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                     | [::UnifiedRubySDK::Operations::ListHrisCompaniesRequest](../../models/operations/listhriscompaniesrequest.md) | :heavy_check_mark:                                                                                            | The request object to use for the request.                                                                    |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListHrisCompaniesResponse)](../../models/operations/listhriscompaniesresponse.md)**


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
  connection_id: "<value>",
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
  connection_id: "<value>",
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


## list_hris_payslips

List all payslips

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListHrisPayslipsRequest.new(
  connection_id: "<value>",
)
    
res = s.hris.list_hris_payslips(req)

if ! res.hris_payslips.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [::UnifiedRubySDK::Operations::ListHrisPayslipsRequest](../../models/operations/listhrispayslipsrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListHrisPayslipsResponse)](../../models/operations/listhrispayslipsresponse.md)**


## list_hris_timeoffs

List all timeoffs

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListHrisTimeoffsRequest.new(
  connection_id: "<value>",
)
    
res = s.hris.list_hris_timeoffs(req)

if ! res.hris_timeoffs.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [::UnifiedRubySDK::Operations::ListHrisTimeoffsRequest](../../models/operations/listhristimeoffsrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListHrisTimeoffsResponse)](../../models/operations/listhristimeoffsresponse.md)**


## patch_hris_company

Update a company

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hris.patch_hris_company(connection_id="<value>", id="<value>", hris_company=::UnifiedRubySDK::Shared::HrisCompany.new())

if ! res.hris_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `connection_id`                                                             | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the connection                                                        |
| `id`                                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the Company                                                           |
| `hris_company`                                                              | [::UnifiedRubySDK::Shared::HrisCompany](../../models/shared/hriscompany.md) | :heavy_minus_sign:                                                          | N/A                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchHrisCompanyResponse)](../../models/operations/patchhriscompanyresponse.md)**


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

    
res = s.hris.patch_hris_employee(connection_id="<value>", id="<value>", hris_employee=::UnifiedRubySDK::Shared::HrisEmployee.new())

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

    
res = s.hris.patch_hris_group(connection_id="<value>", id="<value>", hris_group=::UnifiedRubySDK::Shared::HrisGroup.new())

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


## remove_hris_company

Remove a company

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hris.remove_hris_company(connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Company    |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveHrisCompanyResponse)](../../models/operations/removehriscompanyresponse.md)**


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

    
res = s.hris.remove_hris_employee(connection_id="<value>", id="<value>")

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

    
res = s.hris.remove_hris_group(connection_id="<value>", id="<value>")

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


## update_hris_company

Update a company

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.hris.update_hris_company(connection_id="<value>", id="<value>", hris_company=::UnifiedRubySDK::Shared::HrisCompany.new())

if ! res.hris_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `connection_id`                                                             | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the connection                                                        |
| `id`                                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the Company                                                           |
| `hris_company`                                                              | [::UnifiedRubySDK::Shared::HrisCompany](../../models/shared/hriscompany.md) | :heavy_minus_sign:                                                          | N/A                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateHrisCompanyResponse)](../../models/operations/updatehriscompanyresponse.md)**


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

    
res = s.hris.update_hris_employee(connection_id="<value>", id="<value>", hris_employee=::UnifiedRubySDK::Shared::HrisEmployee.new())

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

    
res = s.hris.update_hris_group(connection_id="<value>", id="<value>", hris_group=::UnifiedRubySDK::Shared::HrisGroup.new())

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

