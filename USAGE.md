<!-- Start SDK Example Usage [usage] -->
```ruby
require 'unified_ruby_sdk'

s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.accounting.create_accounting_account(accounting_account=Models::Shared::AccountingAccount.new(), connection_id="<id>", fields_=[
  "<value>",
])

if ! res.accounting_account.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->