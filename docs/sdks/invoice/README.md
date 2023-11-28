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


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreateAccountingInvoiceRequest.new(
  path_params=Operations::CreateAccountingInvoiceRequest.new(
    connection_id="string",
    accounting_invoice=Shared::AccountingInvoice.new(
      balance_amount=6736.06,
      cancelled_at=DateTime.iso8601('2021-06-27T05:21:39.307Z'),
      created_at=DateTime.iso8601('2021-07-05T14:28:47.244Z'),
      currency="Uzbekistan Sum",
      customer_id="string",
      discount_amount=259.66,
      due_at=DateTime.iso8601('2022-04-30T05:18:12.430Z'),
      id="<ID>",
      invoice_number="string",
      lineitems=.new[
        Shared::AccountingLineitem.new(
          created_at=DateTime.iso8601('2023-02-22T02:08:37.210Z'),
          discount_amount=5685.15,
          id="<ID>",
          item_description="string",
          item_identifier="string",
          item_name="string",
          notes="string",
          refunded_amount=6572.32,
          refunded_at=DateTime.iso8601('2022-07-10T06:26:36.842Z'),
          tax_amount=1578.89,
          total_amount=5503.49,
          unit_amount=8057.4,
          unit_quantity=6864,
          updated_at=DateTime.iso8601('2023-01-23T15:26:28.999Z'),
        ),
      ],
      notes="string",
      paid_amount=6276.92,
      paid_at=DateTime.iso8601('2022-05-31T03:11:23.721Z'),
      raw=Shared::PropertyAccountingInvoiceRaw.new(),
      refund_amount=3009.58,
      refund_reason="string",
      refunded_at=DateTime.iso8601('2022-05-06T23:27:29.183Z'),
      tax_amount=3018.73,
      total_amount=3044.16,
      updated_at=DateTime.iso8601('2022-11-08T22:01:42.499Z'),
    ),
  ),
  accounting_invoice=Shared::AccountingInvoice.new(
    balance_amount=4270.21,
    cancelled_at=DateTime.iso8601('2021-03-05T05:43:47.158Z'),
    created_at=DateTime.iso8601('2023-09-29T14:34:24.047Z'),
    currency="Nakfa",
    customer_id="string",
    discount_amount=4857.91,
    due_at=DateTime.iso8601('2021-10-04T00:21:07.002Z'),
    id="<ID>",
    invoice_number="string",
    lineitems=.new[
      Shared::AccountingLineitem.new(
        created_at=DateTime.iso8601('2022-01-13T21:18:50.490Z'),
        discount_amount=1101.62,
        id="<ID>",
        item_description="string",
        item_identifier="string",
        item_name="string",
        notes="string",
        refunded_amount=663.82,
        refunded_at=DateTime.iso8601('2021-05-16T21:31:54.104Z'),
        tax_amount=9054.32,
        total_amount=2121.58,
        unit_amount=8704.74,
        unit_quantity=9102.08,
        updated_at=DateTime.iso8601('2021-02-24T14:04:14.469Z'),
      ),
    ],
    notes="string",
    paid_amount=2002.26,
    paid_at=DateTime.iso8601('2021-03-12T18:33:33.837Z'),
    raw=Shared::PropertyAccountingInvoiceRaw.new(),
    refund_amount=6763.37,
    refund_reason="string",
    refunded_at=DateTime.iso8601('2022-08-02T20:07:26.024Z'),
    tax_amount=9140.72,
    total_amount=8472.77,
    updated_at=DateTime.iso8601('2021-10-05T20:20:47.176Z'),
  ),
)
    
res = s.invoice.create_accounting_invoice(req)

if ! res.accounting_invoice.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `accounting_invoice`                                                  | [Shared::AccountingInvoice](../../models/shared/accountinginvoice.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::CreateAccountingInvoiceResponse)](../../models/operations/createaccountinginvoiceresponse.md)**


## get_accounting_invoice

Retrieve a invoice

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::GetAccountingInvoiceRequest.new(
  path_params=Operations::GetAccountingInvoiceRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
  query_params=Operations::GetAccountingInvoiceRequest.new(
    connection_id="string",
    id="<ID>",
    fields=.new[
      "string",
    ],
  ),
)
    
res = s.invoice.get_accounting_invoice(req)

if ! res.accounting_invoice.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *String*                         | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *String*                         | :heavy_check_mark:               | ID of the Invoice                |
| `fields`                         | T::Array<*String*>               | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(Operations::GetAccountingInvoiceResponse)](../../models/operations/getaccountinginvoiceresponse.md)**


## list_accounting_invoices

List all invoices

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::ListAccountingInvoicesRequest.new(
  path_params=Operations::ListAccountingInvoicesRequest.new(
    connection_id="string",
    customer_id="string",
    fields=.new[
      "string",
    ],
    limit=6788.11,
    offset=5122.49,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-05-23T15:55:15.727Z'),
  ),
  query_params=Operations::ListAccountingInvoicesRequest.new(
    connection_id="string",
    customer_id="string",
    fields=.new[
      "string",
    ],
    limit=6311.46,
    offset=4508.95,
    order="string",
    query="string",
    sort="string",
    updated_gte=DateTime.iso8601('2021-11-14T11:08:09.089Z'),
  ),
)
    
res = s.invoice.list_accounting_invoices(req)

if ! res.accounting_invoices.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Operations::ListAccountingInvoicesRequest](../../models/operations/listaccountinginvoicesrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |


### Response

**[T.nilable(Operations::ListAccountingInvoicesResponse)](../../models/operations/listaccountinginvoicesresponse.md)**


## patch_accounting_invoice

Update a invoice

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::PatchAccountingInvoiceRequest.new(
  path_params=Operations::PatchAccountingInvoiceRequest.new(
    connection_id="string",
    id="<ID>",
    accounting_invoice=Shared::AccountingInvoice.new(
      balance_amount=7374.1,
      cancelled_at=DateTime.iso8601('2023-12-18T11:43:07.271Z'),
      created_at=DateTime.iso8601('2022-06-13T18:03:55.091Z'),
      currency="Gold",
      customer_id="string",
      discount_amount=9127.96,
      due_at=DateTime.iso8601('2023-07-05T09:52:05.856Z'),
      id="<ID>",
      invoice_number="string",
      lineitems=.new[
        Shared::AccountingLineitem.new(
          created_at=DateTime.iso8601('2023-05-06T06:47:54.759Z'),
          discount_amount=3886.02,
          id="<ID>",
          item_description="string",
          item_identifier="string",
          item_name="string",
          notes="string",
          refunded_amount=1152.38,
          refunded_at=DateTime.iso8601('2022-03-23T04:43:31.245Z'),
          tax_amount=6443.77,
          total_amount=2117.25,
          unit_amount=3028.19,
          unit_quantity=1140.08,
          updated_at=DateTime.iso8601('2022-05-13T12:16:20.651Z'),
        ),
      ],
      notes="string",
      paid_amount=6957.18,
      paid_at=DateTime.iso8601('2021-10-04T00:57:13.486Z'),
      raw=Shared::PropertyAccountingInvoiceRaw.new(),
      refund_amount=1520.96,
      refund_reason="string",
      refunded_at=DateTime.iso8601('2021-09-20T07:32:01.062Z'),
      tax_amount=8343.6,
      total_amount=4790.98,
      updated_at=DateTime.iso8601('2021-08-24T23:36:51.426Z'),
    ),
  ),
  accounting_invoice=Shared::AccountingInvoice.new(
    balance_amount=8704.27,
    cancelled_at=DateTime.iso8601('2021-01-23T22:23:26.885Z'),
    created_at=DateTime.iso8601('2021-02-21T01:36:14.464Z'),
    currency="Ethiopian Birr",
    customer_id="string",
    discount_amount=2616.9,
    due_at=DateTime.iso8601('2023-01-02T17:52:22.295Z'),
    id="<ID>",
    invoice_number="string",
    lineitems=.new[
      Shared::AccountingLineitem.new(
        created_at=DateTime.iso8601('2023-11-18T02:01:58.172Z'),
        discount_amount=7106.42,
        id="<ID>",
        item_description="string",
        item_identifier="string",
        item_name="string",
        notes="string",
        refunded_amount=7598.92,
        refunded_at=DateTime.iso8601('2021-08-19T10:03:39.249Z'),
        tax_amount=7918.96,
        total_amount=7655.61,
        unit_amount=9169.32,
        unit_quantity=2444.67,
        updated_at=DateTime.iso8601('2023-06-02T04:01:15.659Z'),
      ),
    ],
    notes="string",
    paid_amount=7856.39,
    paid_at=DateTime.iso8601('2023-07-26T00:43:53.393Z'),
    raw=Shared::PropertyAccountingInvoiceRaw.new(),
    refund_amount=7648.16,
    refund_reason="string",
    refunded_at=DateTime.iso8601('2021-09-26T16:40:56.673Z'),
    tax_amount=8521.11,
    total_amount=7261.87,
    updated_at=DateTime.iso8601('2021-01-10T18:15:26.383Z'),
  ),
)
    
res = s.invoice.patch_accounting_invoice(req)

if ! res.accounting_invoice.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *String*                                                              | :heavy_check_mark:                                                    | ID of the Invoice                                                     |
| `accounting_invoice`                                                  | [Shared::AccountingInvoice](../../models/shared/accountinginvoice.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::PatchAccountingInvoiceResponse)](../../models/operations/patchaccountinginvoiceresponse.md)**


## remove_accounting_invoice

Remove a invoice

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::RemoveAccountingInvoiceRequest.new(
  path_params=Operations::RemoveAccountingInvoiceRequest.new(
    connection_id="string",
    id="<ID>",
  ),
)
    
res = s.invoice.remove_accounting_invoice(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *String*             | :heavy_check_mark:   | ID of the connection |
| `id`                 | *String*             | :heavy_check_mark:   | ID of the Invoice    |


### Response

**[T.nilable(Operations::RemoveAccountingInvoiceResponse)](../../models/operations/removeaccountinginvoiceresponse.md)**


## update_accounting_invoice

Update a invoice

### Example Usage

```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::UpdateAccountingInvoiceRequest.new(
  path_params=Operations::UpdateAccountingInvoiceRequest.new(
    connection_id="string",
    id="<ID>",
    accounting_invoice=Shared::AccountingInvoice.new(
      balance_amount=6974.28,
      cancelled_at=DateTime.iso8601('2022-06-02T19:25:29.417Z'),
      created_at=DateTime.iso8601('2021-07-10T19:18:48.997Z'),
      currency="Forint",
      customer_id="string",
      discount_amount=2579.09,
      due_at=DateTime.iso8601('2022-12-25T00:33:40.514Z'),
      id="<ID>",
      invoice_number="string",
      lineitems=.new[
        Shared::AccountingLineitem.new(
          created_at=DateTime.iso8601('2022-02-08T04:39:30.839Z'),
          discount_amount=9127.85,
          id="<ID>",
          item_description="string",
          item_identifier="string",
          item_name="string",
          notes="string",
          refunded_amount=2842.49,
          refunded_at=DateTime.iso8601('2021-06-05T12:20:35.409Z'),
          tax_amount=3314.72,
          total_amount=7535.06,
          unit_amount=7716.41,
          unit_quantity=3824.24,
          updated_at=DateTime.iso8601('2021-11-18T22:14:50.421Z'),
        ),
      ],
      notes="string",
      paid_amount=2050.9,
      paid_at=DateTime.iso8601('2023-09-20T07:51:55.277Z'),
      raw=Shared::PropertyAccountingInvoiceRaw.new(),
      refund_amount=126.09,
      refund_reason="string",
      refunded_at=DateTime.iso8601('2023-08-18T07:36:12.594Z'),
      tax_amount=8790.78,
      total_amount=5901.03,
      updated_at=DateTime.iso8601('2022-07-01T08:23:24.387Z'),
    ),
  ),
  accounting_invoice=Shared::AccountingInvoice.new(
    balance_amount=3250.81,
    cancelled_at=DateTime.iso8601('2023-12-20T14:32:10.292Z'),
    created_at=DateTime.iso8601('2023-11-05T02:48:18.398Z'),
    currency="European Unit of Account 17(E.U.A.-17)",
    customer_id="string",
    discount_amount=2677.73,
    due_at=DateTime.iso8601('2023-04-15T22:03:07.352Z'),
    id="<ID>",
    invoice_number="string",
    lineitems=.new[
      Shared::AccountingLineitem.new(
        created_at=DateTime.iso8601('2023-06-26T21:22:21.106Z'),
        discount_amount=5539.17,
        id="<ID>",
        item_description="string",
        item_identifier="string",
        item_name="string",
        notes="string",
        refunded_amount=4125.59,
        refunded_at=DateTime.iso8601('2023-07-30T19:15:37.932Z'),
        tax_amount=8373,
        total_amount=7953.84,
        unit_amount=1933.73,
        unit_quantity=4211.55,
        updated_at=DateTime.iso8601('2022-02-07T21:04:46.235Z'),
      ),
    ],
    notes="string",
    paid_amount=6114.26,
    paid_at=DateTime.iso8601('2022-09-16T00:37:25.972Z'),
    raw=Shared::PropertyAccountingInvoiceRaw.new(),
    refund_amount=4562.67,
    refund_reason="string",
    refunded_at=DateTime.iso8601('2021-03-15T16:35:12.551Z'),
    tax_amount=2367.29,
    total_amount=3293.38,
    updated_at=DateTime.iso8601('2021-06-14T07:09:48.062Z'),
  ),
)
    
res = s.invoice.update_accounting_invoice(req)

if ! res.accounting_invoice.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `connection_id`                                                       | *String*                                                              | :heavy_check_mark:                                                    | ID of the connection                                                  |
| `id`                                                                  | *String*                                                              | :heavy_check_mark:                                                    | ID of the Invoice                                                     |
| `accounting_invoice`                                                  | [Shared::AccountingInvoice](../../models/shared/accountinginvoice.md) | :heavy_minus_sign:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::UpdateAccountingInvoiceResponse)](../../models/operations/updateaccountinginvoiceresponse.md)**

