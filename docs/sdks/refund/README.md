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

    
res = s.refund.get_accounting_refund(::UnifiedRubySDK::Operations::GetAccountingRefundSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", id="<value>", fields_=[
    "<value>",
  ])

if ! res.accounting_refund.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                           | Type                                                                                                                | Required                                                                                                            | Description                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                          | [::UnifiedRubySDK::Operations::GetAccountingRefundSecurity](../../models/operations/getaccountingrefundsecurity.md) | :heavy_check_mark:                                                                                                  | The security requirements to use for the request.                                                                   |
| `connection_id`                                                                                                     | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | ID of the connection                                                                                                |
| `id`                                                                                                                | *::String*                                                                                                          | :heavy_check_mark:                                                                                                  | ID of the Refund                                                                                                    |
| `fields_`                                                                                                           | T::Array<*::String*>                                                                                                | :heavy_minus_sign:                                                                                                  | Comma-delimited fields to return                                                                                    |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingRefundResponse)](../../models/operations/getaccountingrefundresponse.md)**


## list_accounting_refunds

List all refunds

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new


req = ::UnifiedRubySDK::Operations::ListAccountingRefundsRequest.new(
  connection_id: "<value>",
)
    
res = s.refund.list_accounting_refunds(req, ::UnifiedRubySDK::Operations::ListAccountingRefundsSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ))

if ! res.accounting_refunds.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                               | [::UnifiedRubySDK::Operations::ListAccountingRefundsRequest](../../models/operations/listaccountingrefundsrequest.md)   | :heavy_check_mark:                                                                                                      | The request object to use for the request.                                                                              |
| `security`                                                                                                              | [::UnifiedRubySDK::Operations::ListAccountingRefundsSecurity](../../models/operations/listaccountingrefundssecurity.md) | :heavy_check_mark:                                                                                                      | The security requirements to use for the request.                                                                       |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingRefundsResponse)](../../models/operations/listaccountingrefundsresponse.md)**

