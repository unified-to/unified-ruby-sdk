# Invoice


### Available Operations

* [create_accounting_invoice](#create_accounting_invoice) - Create a invoice
* [get_accounting_invoice](#get_accounting_invoice) - Retrieve a invoice
* [list_accounting_invoices](#list_accounting_invoices) - List all invoices
* [patch_accounting_invoice](#patch_accounting_invoice) - Update a invoice
* [remove_accounting_invoice](#remove_accounting_invoice) - Remove a invoice
* [update_accounting_invoice](#update_accounting_invoice) - Update a invoice

## create_accounting_invoice

Create a invoice

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=::UnifiedRubySDK::Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.invoice.create_accounting_invoice(connection_id="string", accounting_invoice=::UnifiedRubySDK::Shared::AccountingInvoice.new(
    lineitems=[
      ::UnifiedRubySDK::Shared::AccountingLineitem.new(
        total_amount=6736.06,
      ),
    ],
    raw={
      "green": "string",
    },
  ))

if ! res.accounting_invoice.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `accounting_invoice`                                                                    | [::UnifiedRubySDK::Shared::AccountingInvoice](../../models/shared/accountinginvoice.md) | :heavy_minus_sign:                                                                      | N/A                                                                                     |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAccountingInvoiceResponse)](../../models/operations/createaccountinginvoiceresponse.md)**


## get_accounting_invoice

Retrieve a invoice

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=::UnifiedRubySDK::Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.invoice.get_accounting_invoice(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.accounting_invoice.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Invoice                |
| `fields`                         | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingInvoiceResponse)](../../models/operations/getaccountinginvoiceresponse.md)**


## list_accounting_invoices

List all invoices

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=::UnifiedRubySDK::Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListAccountingInvoicesRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.invoice.list_accounting_invoices(req)

if ! res.accounting_invoices.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::UnifiedRubySDK::Operations::ListAccountingInvoicesRequest](../../models/operations/listaccountinginvoicesrequest.md) | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingInvoicesResponse)](../../models/operations/listaccountinginvoicesresponse.md)**


## patch_accounting_invoice

Update a invoice

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=::UnifiedRubySDK::Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.invoice.patch_accounting_invoice(connection_id="string", id="string", accounting_invoice=::UnifiedRubySDK::Shared::AccountingInvoice.new(
    lineitems=[
      ::UnifiedRubySDK::Shared::AccountingLineitem.new(
        total_amount=7374.1,
      ),
    ],
    raw={
      "kink": "string",
    },
  ))

if ! res.accounting_invoice.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `id`                                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the Invoice                                                                       |
| `accounting_invoice`                                                                    | [::UnifiedRubySDK::Shared::AccountingInvoice](../../models/shared/accountinginvoice.md) | :heavy_minus_sign:                                                                      | N/A                                                                                     |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAccountingInvoiceResponse)](../../models/operations/patchaccountinginvoiceresponse.md)**


## remove_accounting_invoice

Remove a invoice

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=::UnifiedRubySDK::Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.invoice.remove_accounting_invoice(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Invoice    |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAccountingInvoiceResponse)](../../models/operations/removeaccountinginvoiceresponse.md)**


## update_accounting_invoice

Update a invoice

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=::UnifiedRubySDK::Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.invoice.update_accounting_invoice(connection_id="string", id="string", accounting_invoice=::UnifiedRubySDK::Shared::AccountingInvoice.new(
    lineitems=[
      ::UnifiedRubySDK::Shared::AccountingLineitem.new(
        total_amount=6974.28,
      ),
    ],
    raw={
      "CSS": "string",
    },
  ))

if ! res.accounting_invoice.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `connection_id`                                                                         | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the connection                                                                    |
| `id`                                                                                    | *::String*                                                                              | :heavy_check_mark:                                                                      | ID of the Invoice                                                                       |
| `accounting_invoice`                                                                    | [::UnifiedRubySDK::Shared::AccountingInvoice](../../models/shared/accountinginvoice.md) | :heavy_minus_sign:                                                                      | N/A                                                                                     |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAccountingInvoiceResponse)](../../models/operations/updateaccountinginvoiceresponse.md)**

