# Organization


### Available Operations

* [get_accounting_organization](#get_accounting_organization) - Retrieve an organization
* [list_accounting_organizations](#list_accounting_organizations) - List all organizations

## get_accounting_organization

Retrieve an organization

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.organization.get_accounting_organization(::UnifiedRubySDK::Operations::GetAccountingOrganizationSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.accounting_organization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                       | Type                                                                                                                            | Required                                                                                                                        | Description                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                      | [::UnifiedRubySDK::Operations::GetAccountingOrganizationSecurity](../../models/operations/getaccountingorganizationsecurity.md) | :heavy_check_mark:                                                                                                              | The security requirements to use for the request.                                                                               |
| `connection_id`                                                                                                                 | *::String*                                                                                                                      | :heavy_check_mark:                                                                                                              | ID of the connection                                                                                                            |
| `id`                                                                                                                            | *::String*                                                                                                                      | :heavy_check_mark:                                                                                                              | ID of the Organization                                                                                                          |
| `fields_`                                                                                                                       | T::Array<*::String*>                                                                                                            | :heavy_minus_sign:                                                                                                              | Comma-delimited fields to return                                                                                                |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingOrganizationResponse)](../../models/operations/getaccountingorganizationresponse.md)**


## list_accounting_organizations

List all organizations

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListAccountingOrganizationsRequest.new(
  connection_id: "<value>",
)
    
res = s.organization.list_accounting_organizations(req, ::UnifiedRubySDK::Operations::ListAccountingOrganizationsSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.accounting_organizations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                           | Type                                                                                                                                | Required                                                                                                                            | Description                                                                                                                         |
| ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                           | [::UnifiedRubySDK::Operations::ListAccountingOrganizationsRequest](../../models/operations/listaccountingorganizationsrequest.md)   | :heavy_check_mark:                                                                                                                  | The request object to use for the request.                                                                                          |
| `security`                                                                                                                          | [::UnifiedRubySDK::Operations::ListAccountingOrganizationsSecurity](../../models/operations/listaccountingorganizationssecurity.md) | :heavy_check_mark:                                                                                                                  | The security requirements to use for the request.                                                                                   |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingOrganizationsResponse)](../../models/operations/listaccountingorganizationsresponse.md)**

