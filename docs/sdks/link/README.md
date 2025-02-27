# Link
(*link*)

## Overview

### Available Operations

* [create_payment_link](#create_payment_link) - Create a link
* [get_payment_link](#get_payment_link) - Retrieve a link
* [list_payment_links](#list_payment_links) - List all links
* [patch_payment_link](#patch_payment_link) - Update a link
* [remove_payment_link](#remove_payment_link) - Remove a link
* [update_payment_link](#update_payment_link) - Update a link

## create_payment_link

Create a link

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.link.create_payment_link(payment_link=::UnifiedRubySDK::Shared::PaymentLink.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.payment_link.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `payment_link`                                                              | [::UnifiedRubySDK::Shared::PaymentLink](../../models/shared/paymentlink.md) | :heavy_check_mark:                                                          | N/A                                                                         |
| `connection_id`                                                             | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the connection                                                        |
| `fields_`                                                                   | T::Array<*::String*>                                                        | :heavy_minus_sign:                                                          | Comma-delimited fields to return                                            |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::CreatePaymentLinkResponse)](../../models/operations/createpaymentlinkresponse.md)**



## get_payment_link

Retrieve a link

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.link.get_payment_link(connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.payment_link.nil?
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `connection_id`                  | *::String*                       | :heavy_check_mark:               | ID of the connection             |
| `id`                             | *::String*                       | :heavy_check_mark:               | ID of the Link                   |
| `fields_`                        | T::Array<*::String*>             | :heavy_minus_sign:               | Comma-delimited fields to return |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::GetPaymentLinkResponse)](../../models/operations/getpaymentlinkresponse.md)**



## list_payment_links

List all links

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)


req = ::UnifiedRubySDK::Operations::ListPaymentLinksRequest.new(
  connection_id: "<id>",
)
    
res = s.link.list_payment_links(req)

if ! res.payment_links.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [::UnifiedRubySDK::Operations::ListPaymentLinksRequest](../../models/operations/listpaymentlinksrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::ListPaymentLinksResponse)](../../models/operations/listpaymentlinksresponse.md)**



## patch_payment_link

Update a link

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.link.patch_payment_link(payment_link=::UnifiedRubySDK::Shared::PaymentLink.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.payment_link.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `payment_link`                                                              | [::UnifiedRubySDK::Shared::PaymentLink](../../models/shared/paymentlink.md) | :heavy_check_mark:                                                          | N/A                                                                         |
| `connection_id`                                                             | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the connection                                                        |
| `id`                                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the Link                                                              |
| `fields_`                                                                   | T::Array<*::String*>                                                        | :heavy_minus_sign:                                                          | Comma-delimited fields to return                                            |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::PatchPaymentLinkResponse)](../../models/operations/patchpaymentlinkresponse.md)**



## remove_payment_link

Remove a link

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.link.remove_payment_link(connection_id="<id>", id="<id>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter            | Type                 | Required             | Description          |
| -------------------- | -------------------- | -------------------- | -------------------- |
| `connection_id`      | *::String*           | :heavy_check_mark:   | ID of the connection |
| `id`                 | *::String*           | :heavy_check_mark:   | ID of the Link       |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::RemovePaymentLinkResponse)](../../models/operations/removepaymentlinkresponse.md)**



## update_payment_link

Update a link

### Example Usage

```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.link.update_payment_link(payment_link=::UnifiedRubySDK::Shared::PaymentLink.new(), connection_id="<id>", id="<id>", fields_=[
  "<value>",
])

if ! res.payment_link.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                   | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `payment_link`                                                              | [::UnifiedRubySDK::Shared::PaymentLink](../../models/shared/paymentlink.md) | :heavy_check_mark:                                                          | N/A                                                                         |
| `connection_id`                                                             | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the connection                                                        |
| `id`                                                                        | *::String*                                                                  | :heavy_check_mark:                                                          | ID of the Link                                                              |
| `fields_`                                                                   | T::Array<*::String*>                                                        | :heavy_minus_sign:                                                          | Comma-delimited fields to return                                            |

### Response

**[T.nilable(::UnifiedRubySDK::Operations::UpdatePaymentLinkResponse)](../../models/operations/updatepaymentlinkresponse.md)**

