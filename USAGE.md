<!-- Start SDK Example Usage [usage] -->
```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new
s.config_security(
  ::UnifiedRubySDK::Shared::Security.new(
    jwt: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.accounting.create_accounting_account(connection_id="string", accounting_account=::UnifiedRubySDK::Shared::AccountingAccount.new(
    name: "string",
    raw: {
      "Executive": "string",
    },
  ))

if ! res.accounting_account.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->