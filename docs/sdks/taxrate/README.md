# Taxrate

## Overview

### Available Operations

* [create_accounting_taxrate](#create_accounting_taxrate) - Create a taxrate
* [get_accounting_taxrate](#get_accounting_taxrate) - Retrieve a taxrate
* [list_accounting_taxrates](#list_accounting_taxrates) - List all taxrates
* [patch_accounting_taxrate](#patch_accounting_taxrate) - Update a taxrate
* [remove_accounting_taxrate](#remove_accounting_taxrate) - Remove a taxrate
* [update_accounting_taxrate](#update_accounting_taxrate) - Update a taxrate

## create_accounting_taxrate

Create a taxrate

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.taxrate.create_accounting_taxrate(connection_id="<value>", accounting_taxrate=::UnifiedRubySDK::Shared::AccountingTaxrate.new(), fields_=[
  "<value>",
])

if ! res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `accounting_taxrate`                                                                    | [::UnifiedRubySDK::Shared::AccountingTaxrate](../../models/shared/accountingtaxrate.md) | :heavy_minus_sign:                                                                      | N/A                                                                                     |
| `fields_`                                                                               | T::Array<*::String*>                                                                    | :heavy_minus_sign:                                                                      | Comma-delimited fields to return                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAccountingTaxrateResponse)](../../models/operations/createaccountingtaxrateresponse.md)**




## get_accounting_taxrate

Retrieve a taxrate

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.taxrate.get_accounting_taxrate(connection_id="<value>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Taxrate                |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingTaxrateResponse)](../../models/operations/getaccountingtaxrateresponse.md)**




## list_accounting_taxrates

List all taxrates

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListAccountingTaxratesRequest.new(
  connection_id: "<value>",
)
    
res = s.taxrate.list_accounting_taxrates(req)

if ! res.accounting_taxrates.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::UnifiedRubySDK::Operations::ListAccountingTaxratesRequest](../../models/operations/listaccountingtaxratesrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingTaxratesResponse)](../../models/operations/listaccountingtaxratesresponse.md)**




## patch_accounting_taxrate

Update a taxrate

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.taxrate.patch_accounting_taxrate(connection_id="<value>", id="<id>", accounting_taxrate=::UnifiedRubySDK::Shared::AccountingTaxrate.new(), fields_=[
  "<value>",
])

if ! res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `id`                                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the Taxrate                                                                       |
| `accounting_taxrate`                                                                    | [::UnifiedRubySDK::Shared::AccountingTaxrate](../../models/shared/accountingtaxrate.md) | :heavy_minus_sign:                                                                      | N/A                                                                                     |
| `fields_`                                                                               | T::Array<*::String*>                                                                    | :heavy_minus_sign:                                                                      | Comma-delimited fields to return                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAccountingTaxrateResponse)](../../models/operations/patchaccountingtaxrateresponse.md)**




## remove_accounting_taxrate

Remove a taxrate

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.taxrate.remove_accounting_taxrate(connection_id="<value>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Taxrate    |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAccountingTaxrateResponse)](../../models/operations/removeaccountingtaxrateresponse.md)**




## update_accounting_taxrate

Update a taxrate

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.taxrate.update_accounting_taxrate(connection_id="<value>", id="<id>", accounting_taxrate=::UnifiedRubySDK::Shared::AccountingTaxrate.new(), fields_=[
  "<value>",
])

if ! res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `id`                                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the Taxrate                                                                       |
| `accounting_taxrate`                                                                    | [::UnifiedRubySDK::Shared::AccountingTaxrate](../../models/shared/accountingtaxrate.md) | :heavy_minus_sign:                                                                      | N/A                                                                                     |
| `fields_`                                                                               | T::Array<*::String*>                                                                    | :heavy_minus_sign:                                                                      | Comma-delimited fields to return                                                        |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAccountingTaxrateResponse)](../../models/operations/updateaccountingtaxrateresponse.md)**


