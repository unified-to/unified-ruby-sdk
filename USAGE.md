<!-- Start SDK Example Usage [usage] -->
```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: ::UnifiedRubySDK::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.create_accounting_account(accounting_account=::UnifiedRubySDK::Shared::AccountingAccount.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_account.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->