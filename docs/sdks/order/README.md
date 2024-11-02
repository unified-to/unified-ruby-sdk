# Order

## Overview

### Available Operations

* [create_accounting_order](#create_accounting_order) - Create an order
* [get_accounting_order](#get_accounting_order) - Retrieve an order
* [list_accounting_orders](#list_accounting_orders) - List all orders
* [patch_accounting_order](#patch_accounting_order) - Update an order
* [remove_accounting_order](#remove_accounting_order) - Remove an order
* [update_accounting_order](#update_accounting_order) - Update an order

## create_accounting_order

Create an order

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.order.create_accounting_order(connection_id="<id>", accounting_order=::UnifiedRubySDK::Shared::AccountingOrder.new(), fields_=[
  "<value>",
])

if ! res.accounting_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                      | Type                                                                                           | Required                                                                                       | Description                                                                                    |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                | *::String*                                                                                     | :heavy_check_mark:                                                                             | ID of the connection                                                                           |
| `accounting_order`                                                                             | [T.nilable(::UnifiedRubySDK::Shared::AccountingOrder)](../../models/shared/accountingorder.md) | :heavy_minus_sign:                                                                             | N/A                                                                                            |
| `fields_`                                                                                      | T::Array<*::String*>                                                                           | :heavy_minus_sign:                                                                             | Comma-delimited fields to return                                                               |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreateAccountingOrderResponse)](../../models/operations/createaccountingorderresponse.md)**



## get_accounting_order

Retrieve an order

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.order.get_accounting_order(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_order.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Order                  |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingOrderResponse)](../../models/operations/getaccountingorderresponse.md)**



## list_accounting_orders

List all orders

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListAccountingOrdersRequest.new(
  connection_id: "<id>",
)
    
res = s.order.list_accounting_orders(req)

if ! res.accounting_orders.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                           | [::UnifiedRubySDK::Operations::ListAccountingOrdersRequest](../../models/operations/listaccountingordersrequest.md) | :heavy_check_mark:                                                                                                  | The request object to use for the request.                                                                          |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingOrdersResponse)](../../models/operations/listaccountingordersresponse.md)**



## patch_accounting_order

Update an order

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.order.patch_accounting_order(connection_id="<id>", id="<id>", accounting_order=::UnifiedRubySDK::Shared::AccountingOrder.new(), fields_=[
  "<value>",
])

if ! res.accounting_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                      | Type                                                                                           | Required                                                                                       | Description                                                                                    |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                | *::String*                                                                                     | :heavy_check_mark:                                                                             | ID of the connection                                                                           |
| `id`                                                                                           | *::String*                                                                                     | :heavy_check_mark:                                                                             | ID of the Order                                                                                |
| `accounting_order`                                                                             | [T.nilable(::UnifiedRubySDK::Shared::AccountingOrder)](../../models/shared/accountingorder.md) | :heavy_minus_sign:                                                                             | N/A                                                                                            |
| `fields_`                                                                                      | T::Array<*::String*>                                                                           | :heavy_minus_sign:                                                                             | Comma-delimited fields to return                                                               |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchAccountingOrderResponse)](../../models/operations/patchaccountingorderresponse.md)**



## remove_accounting_order

Remove an order

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.order.remove_accounting_order(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Order      |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemoveAccountingOrderResponse)](../../models/operations/removeaccountingorderresponse.md)**



## update_accounting_order

Update an order

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.order.update_accounting_order(connection_id="<id>", id="<id>", accounting_order=::UnifiedRubySDK::Shared::AccountingOrder.new(), fields_=[
  "<value>",
])

if ! res.accounting_order.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                      | Type                                                                                           | Required                                                                                       | Description                                                                                    |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `connection_id`                                                                                | *::String*                                                                                     | :heavy_check_mark:                                                                             | ID of the connection                                                                           |
| `id`                                                                                           | *::String*                                                                                     | :heavy_check_mark:                                                                             | ID of the Order                                                                                |
| `accounting_order`                                                                             | [T.nilable(::UnifiedRubySDK::Shared::AccountingOrder)](../../models/shared/accountingorder.md) | :heavy_minus_sign:                                                                             | N/A                                                                                            |
| `fields_`                                                                                      | T::Array<*::String*>                                                                           | :heavy_minus_sign:                                                                             | Comma-delimited fields to return                                                               |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdateAccountingOrderResponse)](../../models/operations/updateaccountingorderresponse.md)**

