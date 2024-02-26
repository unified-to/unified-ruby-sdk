<!-- Start SDK Example Usage [usage] -->
```ruby
require 'unified_ruby_sdk'


s = ::UnifiedRubySDK::UnifiedTo.new

    
res = s.accounting.create_accounting_account(::UnifiedRubySDK::Operations::CreateAccountingAccountSecurity.new(
    jwt: "<YOUR_API_KEY_HERE>",
  ), connection_id="<value>", accounting_account=::UnifiedRubySDK::Shared::AccountingAccount.new(
    name: "<value>",
  ))

if ! res.accounting_account.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->