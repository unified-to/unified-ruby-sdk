# Payout


### Available Operations

* [get_accounting_payout](#get_accounting_payout) - Retrieve a payout
* [list_accounting_payouts](#list_accounting_payouts) - List all payouts

## get_accounting_payout

Retrieve a payout

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.payout.get_accounting_payout(connection_id="string", id="string", fields_=[
    "string",
  ])

if ! res.accounting_payout.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Payout                 |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetAccountingPayoutResponse)](../../models/operations/getaccountingpayoutresponse.md)**


## list_accounting_payouts

List all payouts

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListAccountingPayoutsRequest.new(
  connection_id: "string",
)
    
res = s.payout.list_accounting_payouts(req)

if ! res.accounting_payouts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [::UnifiedRubySDK::Operations::ListAccountingPayoutsRequest](../../models/operations/listaccountingpayoutsrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |


### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListAccountingPayoutsResponse)](../../models/operations/listaccountingpayoutsresponse.md)**

