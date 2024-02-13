# Refund


### Available Operations

* [get_accounting_refund](#get_accounting_refund) - Retrieve a refund
* [list_accounting_refunds](#list_accounting_refunds) - List all refunds

## get_accounting_refund

Retrieve a refund

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.refund.get_accounting_refund(connection_id="string", id="string", fields_=[
    "string",
  ])

if ! res.accounting_refund.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Refund                 |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingRefundResponse)](../../models/operations/getaccountingrefundresponse.md)**


## list_accounting_refunds

List all refunds

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListAccountingRefundsRequest.new(
  connection_id: "string",
)
    
res = s.refund.list_accounting_refunds(req)

if ! res.accounting_refunds.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [::UnifiedRubySDK::Operations::ListAccountingRefundsRequest](../../models/operations/listaccountingrefundsrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingRefundsResponse)](../../models/operations/listaccountingrefundsresponse.md)**

