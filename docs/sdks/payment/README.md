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
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.payment.create_accounting_payment(::UnifiedRubySDK::Operations::CreateAccountingPaymentSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", accounting_payment=::UnifiedRubySDK::Shared::AccountingPayment.new())

if ! res.accounting_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::CreateAccountingPaymentSecurity](../../models/operations/createaccountingpaymentsecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |
| `connection_id`                                                                                                             | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the connection                                                                                                        |
| `accounting_payment`                                                                                                        | [::UnifiedRubySDK::Shared::AccountingPayment](../../models/shared/accountingpayment.md)                                     | :heavy_minus_sign:                                                                                                          | N/A                                                                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAccountingPaymentResponse)](../../models/operations/createaccountingpaymentresponse.md)**


## get_accounting_payment

Retrieve a payment

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.payment.get_accounting_payment(::UnifiedRubySDK::Operations::GetAccountingPaymentSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.accounting_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                            | [::UnifiedRubySDK::Operations::GetAccountingPaymentSecurity](../../models/operations/getaccountingpaymentsecurity.md) | :heavy_check_mark:                                                                                                    | The security requirements to use for the request.                                                                     |
| `connection_id`                                                                                                       | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | ID of the connection                                                                                                  |
| `id`                                                                                                                  | *::String*                                                                                                            | :heavy_check_mark:                                                                                                    | ID of the Payment                                                                                                     |
| `fields_`                                                                                                             | T::Array<*::String*>                                                                                                  | :heavy_minus_sign:                                                                                                    | Comma-delimited fields to return                                                                                      |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingPaymentResponse)](../../models/operations/getaccountingpaymentresponse.md)**


## list_accounting_payments

List all payments

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListAccountingPaymentsRequest.new(
  connection_id: "<value>",
)
    
res = s.payment.list_accounting_payments(req, ::UnifiedRubySDK::Operations::ListAccountingPaymentsSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.accounting_payments.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                 | [::UnifiedRubySDK::Operations::ListAccountingPaymentsRequest](../../models/operations/listaccountingpaymentsrequest.md)   | :heavy_check_mark:                                                                                                        | The request object to use for the request.                                                                                |
| `security`                                                                                                                | [::UnifiedRubySDK::Operations::ListAccountingPaymentsSecurity](../../models/operations/listaccountingpaymentssecurity.md) | :heavy_check_mark:                                                                                                        | The security requirements to use for the request.                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingPaymentsResponse)](../../models/operations/listaccountingpaymentsresponse.md)**


## patch_accounting_payment

Update a payment

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.payment.patch_accounting_payment(::UnifiedRubySDK::Operations::PatchAccountingPaymentSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", accounting_payment=::UnifiedRubySDK::Shared::AccountingPayment.new())

if ! res.accounting_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                | [::UnifiedRubySDK::Operations::PatchAccountingPaymentSecurity](../../models/operations/patchaccountingpaymentsecurity.md) | :heavy_check_mark:                                                                                                        | The security requirements to use for the request.                                                                         |
| `connection_id`                                                                                                           | *::String*                                                                                                                | :heavy_check_mark:                                                                                                        | ID of the connection                                                                                                      |
| `id`                                                                                                                      | *::String*                                                                                                                | :heavy_check_mark:                                                                                                        | ID of the Payment                                                                                                         |
| `accounting_payment`                                                                                                      | [::UnifiedRubySDK::Shared::AccountingPayment](../../models/shared/accountingpayment.md)                                   | :heavy_minus_sign:                                                                                                        | N/A                                                                                                                       |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAccountingPaymentResponse)](../../models/operations/patchaccountingpaymentresponse.md)**


## remove_accounting_payment

Remove a payment

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.payment.remove_accounting_payment(::UnifiedRubySDK::Operations::RemoveAccountingPaymentSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::RemoveAccountingPaymentSecurity](../../models/operations/removeaccountingpaymentsecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |
| `connection_id`                                                                                                             | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the connection                                                                                                        |
| `id`                                                                                                                        | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the Payment                                                                                                           |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAccountingPaymentResponse)](../../models/operations/removeaccountingpaymentresponse.md)**


## update_accounting_payment

Update a payment

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.payment.update_accounting_payment(::UnifiedRubySDK::Operations::UpdateAccountingPaymentSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", accounting_payment=::UnifiedRubySDK::Shared::AccountingPayment.new())

if ! res.accounting_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                   | Type                                                                                                                        | Required                                                                                                                    | Description                                                                                                                 |
| --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                  | [::UnifiedRubySDK::Operations::UpdateAccountingPaymentSecurity](../../models/operations/updateaccountingpaymentsecurity.md) | :heavy_check_mark:                                                                                                          | The security requirements to use for the request.                                                                           |
| `connection_id`                                                                                                             | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the connection                                                                                                        |
| `id`                                                                                                                        | *::String*                                                                                                                  | :heavy_check_mark:                                                                                                          | ID of the Payment                                                                                                           |
| `accounting_payment`                                                                                                        | [::UnifiedRubySDK::Shared::AccountingPayment](../../models/shared/accountingpayment.md)                                     | :heavy_minus_sign:                                                                                                          | N/A                                                                                                                         |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAccountingPaymentResponse)](../../models/operations/updateaccountingpaymentresponse.md)**

