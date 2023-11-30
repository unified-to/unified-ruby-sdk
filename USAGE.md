<!-- Start SDK Example Usage [usage] -->
```ruby
require_relative unified_ruby_sdk


s = OpenApiSDK::UnifiedTo.new
s.config_security(
  security=Shared::Security.new(
    jwt=.foo"",
  )
)

   
req = Operations::CreateAccountingAccountRequest.new(
  path_params=Operations::CreateAccountingAccountRequest.new(
    connection_id="string",
    accounting_account=Shared::AccountingAccount.new(
      balance=6602.56,
      bank_account_number="string",
      created_at=DateTime.iso8601('2022-09-02T08:51:10.063Z'),
      currency="Saint Helena Pound",
      customer_defined_code="string",
      description="Cross-group zero defect task-force",
      id="<ID>",
      name="string",
      raw=Shared::PropertyAccountingAccountRaw.new(),
      status=Shared::Status::ACTIVE,
      type=Shared::Type::EQUITY,
      updated_at=DateTime.iso8601('2022-09-09T10:11:13.258Z'),
    ),
  ),
  accounting_account=Shared::AccountingAccount.new(
    balance=1798.88,
    bank_account_number="string",
    created_at=DateTime.iso8601('2022-04-11T11:01:45.207Z'),
    currency="European Unit of Account 17(E.U.A.-17)",
    customer_defined_code="string",
    description="Horizontal multimedia data-warehouse",
    id="<ID>",
    name="string",
    raw=Shared::PropertyAccountingAccountRaw.new(),
    status=Shared::Status::ARCHIVED,
    type=Shared::Type::OTHER,
    updated_at=DateTime.iso8601('2022-04-26T21:50:16.938Z'),
  ),
)
    
res = s.accounting.create_accounting_account(req)

if ! res.accounting_account.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->