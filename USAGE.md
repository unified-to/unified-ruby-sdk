<!-- Start SDK Example Usage [usage] -->
```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.create_accounting_account(connection_id="<value>", accounting_account=::UnifiedRubySDK::Shared::AccountingAccount.new(), fields_=[
    "<value>",
  ])

if ! res.accounting_account.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->