# Payment


### Available Operations

* [create_accounting_payment](#create_accounting_payment) - Create a payment
* [get_accounting_payment](#get_accounting_payment) - Retrieve a payment
* [list_accounting_payments](#list_accounting_payments) - List all payments
* [patch_accounting_payment](#patch_accounting_payment) - Update a payment
* [remove_accounting_payment](#remove_accounting_payment) - Remove a payment
* [update_accounting_payment](#update_accounting_payment) - Update a payment

## create_accounting_payment

Create a payment

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::CreateAccountingPaymentRequest.new(
  connection_id="string",
  accounting_payment=Shared::AccountingPayment.new(
    invoice_ids=[
      "string",
    ],
    raw=Shared::PropertyAccountingPaymentRaw.new(),
  ),
)
    
res = s.payment.create_accounting_payment(connection_id="string", accounting_payment=Shared::AccountingPayment.new(
    invoice_ids=[
      "string",
    ],
    raw=Shared::PropertyAccountingPaymentRaw.new(),
  ))

if ! res.accounting_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `accounting_payment`                                                  | [Shared::AccountingPayment](../../models/shared/accountingpayment.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::CreateAccountingPaymentResponse)](../../models/operations/createaccountingpaymentresponse.md)**


## get_accounting_payment

Retrieve a payment

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetAccountingPaymentRequest.new(
  connection_id="string",
  id="<ID>",
  fields=[
    "string",
  ],
)
    
res = s.payment.get_accounting_payment(connection_id="string", id="string", fields=[
    "string",
  ])

if ! res.accounting_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Payment                |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetAccountingPaymentResponse)](../../models/operations/getaccountingpaymentresponse.md)**


## list_accounting_payments

List all payments

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ListAccountingPaymentsRequest.new(
  connection_id="string",
  fields=[
    "string",
  ],
)
    
res = s.payment.list_accounting_payments(req)

if ! res.accounting_payments.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Operations::ListAccountingPaymentsRequest](../../models/operations/listaccountingpaymentsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(Operations::ListAccountingPaymentsResponse)](../../models/operations/listaccountingpaymentsresponse.md)**


## patch_accounting_payment

Update a payment

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::PatchAccountingPaymentRequest.new(
  connection_id="string",
  id="<ID>",
  accounting_payment=Shared::AccountingPayment.new(
    invoice_ids=[
      "string",
    ],
    raw=Shared::PropertyAccountingPaymentRaw.new(),
  ),
)
    
res = s.payment.patch_accounting_payment(connection_id="string", id="string", accounting_payment=Shared::AccountingPayment.new(
    invoice_ids=[
      "string",
    ],
    raw=Shared::PropertyAccountingPaymentRaw.new(),
  ))

if ! res.accounting_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *String*                                                              | :heavy_check_mark:                                                    | ID of the Payment                                                     |
| `accounting_payment`                                                  | [Shared::AccountingPayment](../../models/shared/accountingpayment.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::PatchAccountingPaymentResponse)](../../models/operations/patchaccountingpaymentresponse.md)**


## remove_accounting_payment

Remove a payment

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::RemoveAccountingPaymentRequest.new(
  connection_id="string",
  id="<ID>",
)
    
res = s.payment.remove_accounting_payment(connection_id="string", id="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Payment    |


### Response

**[T.nilable(Operations::RemoveAccountingPaymentResponse)](../../models/operations/removeaccountingpaymentresponse.md)**


## update_accounting_payment

Update a payment

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = UnifiedRubySDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::UpdateAccountingPaymentRequest.new(
  connection_id="string",
  id="<ID>",
  accounting_payment=Shared::AccountingPayment.new(
    invoice_ids=[
      "string",
    ],
    raw=Shared::PropertyAccountingPaymentRaw.new(),
  ),
)
    
res = s.payment.update_accounting_payment(connection_id="string", id="string", accounting_payment=Shared::AccountingPayment.new(
    invoice_ids=[
      "string",
    ],
    raw=Shared::PropertyAccountingPaymentRaw.new(),
  ))

if ! res.accounting_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *String*                                                              | :heavy_check_mark:                                                    | ID of the Payment                                                     |
| `accounting_payment`                                                  | [Shared::AccountingPayment](../../models/shared/accountingpayment.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::UpdateAccountingPaymentResponse)](../../models/operations/updateaccountingpaymentresponse.md)**

