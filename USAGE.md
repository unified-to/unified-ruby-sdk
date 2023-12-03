<!-- Start SDK Example Usage [usage] -->
```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt="",
  )
)


req = Operations::CreateAccountingAccountRequest.new(
  connection_id="string",
  accounting_account=Shared::AccountingAccount.new(
    name="string",
    raw=Shared::PropertyAccountingAccountRaw.new(),
  ),
)
    
res = s.accounting.create_accounting_account(connection_id="string", accounting_account=Shared::AccountingAccount.new(
    name="string",
    raw=Shared::PropertyAccountingAccountRaw.new(),
  ))

if ! res.accounting_account.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->