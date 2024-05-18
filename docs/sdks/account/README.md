# Account


### Available Operations

* [create_accounting_account](#create_accounting_account) - Create an account
* [get_accounting_account](#get_accounting_account) - Retrieve an account
* [list_accounting_accounts](#list_accounting_accounts) - List all accounts
* [patch_accounting_account](#patch_accounting_account) - Update an account
* [remove_accounting_account](#remove_accounting_account) - Remove an account
* [update_accounting_account](#update_accounting_account) - Update an account

## create_accounting_account

Create an account

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.account.create_accounting_account(connection_id="<value>", accounting_account=::UnifiedRubySDK::Shared::AccountingAccount.new())

if ! res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `accounting_account`                                                                    | [::UnifiedRubySDK::Shared::AccountingAccount](../../models/shared/accountingaccount.md) | :heavy_minus_sign:                                                                      | N/A                                                                                     |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAccountingAccountResponse)](../../models/operations/createaccountingaccountresponse.md)**


## get_accounting_account

Retrieve an account

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.account.get_accounting_account(connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Account                |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingAccountResponse)](../../models/operations/getaccountingaccountresponse.md)**


## list_accounting_accounts

List all accounts

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListAccountingAccountsRequest.new(
  connection_id: "<value>",
)
    
res = s.account.list_accounting_accounts(req)

if ! res.accounting_accounts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::UnifiedRubySDK::Operations::ListAccountingAccountsRequest](../../models/operations/listaccountingaccountsrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingAccountsResponse)](../../models/operations/listaccountingaccountsresponse.md)**


## patch_accounting_account

Update an account

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.account.patch_accounting_account(connection_id="<value>", id="<value>", accounting_account=::UnifiedRubySDK::Shared::AccountingAccount.new())

if ! res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `id`                                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the Account                                                                       |
| `accounting_account`                                                                    | [::UnifiedRubySDK::Shared::AccountingAccount](../../models/shared/accountingaccount.md) | :heavy_minus_sign:                                                                      | N/A                                                                                     |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAccountingAccountResponse)](../../models/operations/patchaccountingaccountresponse.md)**


## remove_accounting_account

Remove an account

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.account.remove_accounting_account(connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Account    |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAccountingAccountResponse)](../../models/operations/removeaccountingaccountresponse.md)**


## update_accounting_account

Update an account

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.account.update_accounting_account(connection_id="<value>", id="<value>", accounting_account=::UnifiedRubySDK::Shared::AccountingAccount.new())

if ! res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `id`                                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the Account                                                                       |
| `accounting_account`                                                                    | [::UnifiedRubySDK::Shared::AccountingAccount](../../models/shared/accountingaccount.md) | :heavy_minus_sign:                                                                      | N/A                                                                                     |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAccountingAccountResponse)](../../models/operations/updateaccountingaccountresponse.md)**

