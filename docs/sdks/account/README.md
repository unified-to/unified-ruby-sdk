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
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreateAccountingAccountRequest.new(
  path_params=Operations::CreateAccountingAccountRequest.new(
    connection_id="string",
    accounting_account=Shared::AccountingAccount.new(
      balance=6602.56,
      bank_account_number="string",
      created_at=DateTime.iso8601('2022-09-02T08:51:10.063Z'),
      currency="Saint Helena Pound",
      customer_defined_code="string",
      description="Cross-group zero defect task-force",
      id="<ID>",
      name="string",
      raw=Shared::PropertyAccountingAccountRaw.new(),
      status=Shared::Status::ACTIVE,
      type=Shared::Type::EQUITY,
      updated_at=DateTime.iso8601('2022-09-09T10:11:13.258Z'),
    ),
  ),
  accounting_account=Shared::AccountingAccount.new(
    balance=1798.88,
    bank_account_number="string",
    created_at=DateTime.iso8601('2022-04-11T11:01:45.207Z'),
    currency="European Unit of Account 17(E.U.A.-17)",
    customer_defined_code="string",
    description="Horizontal multimedia data-warehouse",
    id="<ID>",
    name="string",
    raw=Shared::PropertyAccountingAccountRaw.new(),
    status=Shared::Status::ARCHIVED,
    type=Shared::Type::OTHER,
    updated_at=DateTime.iso8601('2022-04-26T21:50:16.938Z'),
  ),
)
    
res = s.account.create_accounting_account(req)

if ! res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `accounting_account`                                                  | [Shared::AccountingAccount](../../models/shared/accountingaccount.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::CreateAccountingAccountResponse)](../../models/operations/createaccountingaccountresponse.md)**


## get_accounting_account

Retrieve an account

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetAccountingAccountRequest.new(
  path_params=Operations::GetAccountingAccountRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetAccountingAccountRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.account.get_accounting_account(req)

if ! res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Account                |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetAccountingAccountResponse)](../../models/operations/getaccountingaccountresponse.md)**


## list_accounting_accounts

List all accounts

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListAccountingAccountsRequest.new(
  path_params=Operations::ListAccountingAccountsRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=9476.86,
    offset=5444.77,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2023-04-20T03:09:57.234Z'),
  ),
  query_params=Operations::ListAccountingAccountsRequest.new(
    connection_id="string",
    fields=.new[
      "string",
    ],
    limit=9112.32,
    offset=5777.55,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2023-11-30T20:10:18.350Z'),
  ),
)
    
res = s.account.list_accounting_accounts(req)

if ! res.accounting_accounts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Operations::ListAccountingAccountsRequest](../../models/operations/listaccountingaccountsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(Operations::ListAccountingAccountsResponse)](../../models/operations/listaccountingaccountsresponse.md)**


## patch_accounting_account

Update an account

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::PatchAccountingAccountRequest.new(
  path_params=Operations::PatchAccountingAccountRequest.new(
    connection_id="string",
    id="<ID>",
    accounting_account=Shared::AccountingAccount.new(
      balance=1931.26,
      bank_account_number="string",
      created_at=DateTime.iso8601('2022-01-09T05:24:17.966Z'),
      currency="Won",
      customer_defined_code="string",
      description="Quality-focused multimedia implementation",
      id="<ID>",
      name="string",
      raw=Shared::PropertyAccountingAccountRaw.new(),
      status=Shared::Status::ARCHIVED,
      type=Shared::Type::REVENUE,
      updated_at=DateTime.iso8601('2023-12-10T11:14:55.383Z'),
    ),
  ),
  accounting_account=Shared::AccountingAccount.new(
    balance=7687.17,
    bank_account_number="string",
    created_at=DateTime.iso8601('2023-04-02T02:09:13.050Z'),
    currency="Gibraltar Pound",
    customer_defined_code="string",
    description="Inverse next generation help-desk",
    id="<ID>",
    name="string",
    raw=Shared::PropertyAccountingAccountRaw.new(),
    status=Shared::Status::ARCHIVED,
    type=Shared::Type::EQUITY,
    updated_at=DateTime.iso8601('2022-07-01T19:43:06.054Z'),
  ),
)
    
res = s.account.patch_accounting_account(req)

if ! res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *String*                                                              | :heavy_check_mark:                                                    | ID of the Account                                                     |
| `accounting_account`                                                  | [Shared::AccountingAccount](../../models/shared/accountingaccount.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::PatchAccountingAccountResponse)](../../models/operations/patchaccountingaccountresponse.md)**


## remove_accounting_account

Remove an account

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveAccountingAccountRequest.new(
  path_params=Operations::RemoveAccountingAccountRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.account.remove_accounting_account(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Account    |


### Response

**[T.nilable(Operations::RemoveAccountingAccountResponse)](../../models/operations/removeaccountingaccountresponse.md)**


## update_accounting_account

Update an account

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::UpdateAccountingAccountRequest.new(
  path_params=Operations::UpdateAccountingAccountRequest.new(
    connection_id="string",
    id="<ID>",
    accounting_account=Shared::AccountingAccount.new(
      balance=5954.09,
      bank_account_number="string",
      created_at=DateTime.iso8601('2021-05-21T20:36:10.841Z'),
      currency="Tanzanian Shilling",
      customer_defined_code="string",
      description="Stand-alone grid-enabled model",
      id="<ID>",
      name="string",
      raw=Shared::PropertyAccountingAccountRaw.new(),
      status=Shared::Status::ACTIVE,
      type=Shared::Type::BANK,
      updated_at=DateTime.iso8601('2021-04-02T17:59:24.345Z'),
    ),
  ),
  accounting_account=Shared::AccountingAccount.new(
    balance=6622.39,
    bank_account_number="string",
    created_at=DateTime.iso8601('2022-09-15T03:24:45.236Z'),
    currency="Pula",
    customer_defined_code="string",
    description="Synergistic uniform pricing structure",
    id="<ID>",
    name="string",
    raw=Shared::PropertyAccountingAccountRaw.new(),
    status=Shared::Status::ARCHIVED,
    type=Shared::Type::OTHER,
    updated_at=DateTime.iso8601('2023-06-05T15:19:22.284Z'),
  ),
)
    
res = s.account.update_accounting_account(req)

if ! res.accounting_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *String*                                                              | :heavy_check_mark:                                                    | ID of the Account                                                     |
| `accounting_account`                                                  | [Shared::AccountingAccount](../../models/shared/accountingaccount.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::UpdateAccountingAccountResponse)](../../models/operations/updateaccountingaccountresponse.md)**

