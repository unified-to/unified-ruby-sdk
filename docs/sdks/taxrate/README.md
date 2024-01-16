# Taxrate


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
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.taxrate.create_accounting_taxrate(connection_id="string", accounting_taxrate=Shared::AccountingTaxrate.new(
    name="string",
    rate=1719.1,
    raw=Shared::PropertyAccountingTaxrateRaw.new(),
  ))

if ! res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `accounting_taxrate`                                                  | [Shared::AccountingTaxrate](../../models/shared/accountingtaxrate.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::CreateAccountingTaxrateResponse)](../../models/operations/createaccountingtaxrateresponse.md)**


## get_accounting_taxrate

Retrieve a taxrate

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.taxrate.get_accounting_taxrate(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Taxrate                |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetAccountingTaxrateResponse)](../../models/operations/getaccountingtaxrateresponse.md)**


## list_accounting_taxrates

List all taxrates

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListAccountingTaxratesRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.taxrate.list_accounting_taxrates(req)

if ! res.accounting_taxrates.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Operations::ListAccountingTaxratesRequest](../../models/operations/listaccountingtaxratesrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(Operations::ListAccountingTaxratesResponse)](../../models/operations/listaccountingtaxratesresponse.md)**


## patch_accounting_taxrate

Update a taxrate

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.taxrate.patch_accounting_taxrate(connection_id="string", id="string", accounting_taxrate=Shared::AccountingTaxrate.new(
    name="string",
    rate=5991.47,
    raw=Shared::PropertyAccountingTaxrateRaw.new(),
  ))

if ! res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *String*                                                              | :heavy_check_mark:                                                    | ID of the Taxrate                                                     |
| `accounting_taxrate`                                                  | [Shared::AccountingTaxrate](../../models/shared/accountingtaxrate.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::PatchAccountingTaxrateResponse)](../../models/operations/patchaccountingtaxrateresponse.md)**


## remove_accounting_taxrate

Remove a taxrate

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.taxrate.remove_accounting_taxrate(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Taxrate    |


### Response

**[T.nilable(Operations::RemoveAccountingTaxrateResponse)](../../models/operations/removeaccountingtaxrateresponse.md)**


## update_accounting_taxrate

Update a taxrate

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.taxrate.update_accounting_taxrate(connection_id="string", id="string", accounting_taxrate=Shared::AccountingTaxrate.new(
    name="string",
    rate=3382.78,
    raw=Shared::PropertyAccountingTaxrateRaw.new(),
  ))

if ! res.accounting_taxrate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *String*                                                              | :heavy_check_mark:                                                    | ID of the Taxrate                                                     |
| `accounting_taxrate`                                                  | [Shared::AccountingTaxrate](../../models/shared/accountingtaxrate.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::UpdateAccountingTaxrateResponse)](../../models/operations/updateaccountingtaxrateresponse.md)**

