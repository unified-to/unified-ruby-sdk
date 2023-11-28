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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreateAccountingPaymentRequest.new(
  path_params=Operations::CreateAccountingPaymentRequest.new(
    connection_id="string",
    accounting_payment=Shared::AccountingPayment.new(
      created_at=DateTime.iso8601('2023-01-27T20:38:27.181Z'),
      currency="Lari",
      customer_id="string",
      id="<ID>",
      invoice_ids=.new[
        "string",
      ],
      notes="string",
      payment_method="string",
      raw=Shared::PropertyAccountingPaymentRaw.new(),
      reference="string",
      total_amount=291.36,
      updated_at=DateTime.iso8601('2022-09-30T13:35:20.411Z'),
    ),
  ),
  accounting_payment=Shared::AccountingPayment.new(
    created_at=DateTime.iso8601('2021-01-02T15:56:43.096Z'),
    currency="Costa Rican Colon",
    customer_id="string",
    id="<ID>",
    invoice_ids=.new[
      "string",
    ],
    notes="string",
    payment_method="string",
    raw=Shared::PropertyAccountingPaymentRaw.new(),
    reference="string",
    total_amount=1846.61,
    updated_at=DateTime.iso8601('2023-02-15T02:20:54.077Z'),
  ),
)
    
res = s.payment.create_accounting_payment(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetAccountingPaymentRequest.new(
  path_params=Operations::GetAccountingPaymentRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetAccountingPaymentRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.payment.get_accounting_payment(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListAccountingPaymentsRequest.new(
  path_params=Operations::ListAccountingPaymentsRequest.new(
    connection_id="string",
    customer_id="string",
    fields=.new[
      "string",
    ],
    invoice_id="string",
    limit=487.78,
    offset=9308.83,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2023-02-25T01:03:12.222Z'),
  ),
  query_params=Operations::ListAccountingPaymentsRequest.new(
    connection_id="string",
    customer_id="string",
    fields=.new[
      "string",
    ],
    invoice_id="string",
    limit=2964.49,
    offset=2580.5,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2022-03-08T02:37:00.551Z'),
  ),
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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::PatchAccountingPaymentRequest.new(
  path_params=Operations::PatchAccountingPaymentRequest.new(
    connection_id="string",
    id="<ID>",
    accounting_payment=Shared::AccountingPayment.new(
      created_at=DateTime.iso8601('2021-02-25T01:44:17.944Z'),
      currency="Boliviano boliviano",
      customer_id="string",
      id="<ID>",
      invoice_ids=.new[
        "string",
      ],
      notes="string",
      payment_method="string",
      raw=Shared::PropertyAccountingPaymentRaw.new(),
      reference="string",
      total_amount=8698.74,
      updated_at=DateTime.iso8601('2022-11-07T21:51:56.510Z'),
    ),
  ),
  accounting_payment=Shared::AccountingPayment.new(
    created_at=DateTime.iso8601('2023-12-29T18:22:47.020Z'),
    currency="Lek",
    customer_id="string",
    id="<ID>",
    invoice_ids=.new[
      "string",
    ],
    notes="string",
    payment_method="string",
    raw=Shared::PropertyAccountingPaymentRaw.new(),
    reference="string",
    total_amount=165.55,
    updated_at=DateTime.iso8601('2021-03-24T00:41:56.104Z'),
  ),
)
    
res = s.payment.patch_accounting_payment(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveAccountingPaymentRequest.new(
  path_params=Operations::RemoveAccountingPaymentRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.payment.remove_accounting_payment(req)

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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::UpdateAccountingPaymentRequest.new(
  path_params=Operations::UpdateAccountingPaymentRequest.new(
    connection_id="string",
    id="<ID>",
    accounting_payment=Shared::AccountingPayment.new(
      created_at=DateTime.iso8601('2021-01-04T17:25:22.482Z'),
      currency="Sudanese Pound",
      customer_id="string",
      id="<ID>",
      invoice_ids=.new[
        "string",
      ],
      notes="string",
      payment_method="string",
      raw=Shared::PropertyAccountingPaymentRaw.new(),
      reference="string",
      total_amount=1869.63,
      updated_at=DateTime.iso8601('2021-05-14T15:37:22.784Z'),
    ),
  ),
  accounting_payment=Shared::AccountingPayment.new(
    created_at=DateTime.iso8601('2022-06-03T08:57:29.670Z'),
    currency="Chilean Peso",
    customer_id="string",
    id="<ID>",
    invoice_ids=.new[
      "string",
    ],
    notes="string",
    payment_method="string",
    raw=Shared::PropertyAccountingPaymentRaw.new(),
    reference="string",
    total_amount=2400.06,
    updated_at=DateTime.iso8601('2021-12-23T12:01:50.743Z'),
  ),
)
    
res = s.payment.update_accounting_payment(req)

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

