<!-- Start SDK Example Usage [usage] -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
  security: Models::Shared::Security.new(
    jwt: '<YOUR_API_KEY_HERE>'
  )
)
res = s.accounting.create_accounting_account(accounting_account: Models::Shared::AccountingAccount.new(
  balance: 12_092.0,
  created_at: DateTime.iso8601('2022-07-03T17:57:07.391Z'),
  currency: 'CAD',
  customer_defined_code: '6170',
  description: 'Comedo vilitas harum cupiditate animus quo iste.',
  id: '817dfe59-5f90-4cdd-9c19-bc8124a95e84',
  is_payable: false,
  metadata: [],
  name: 'Savings Account',
  status: Models::Shared::Status::ARCHIVED,
  taxonomy: [
    Models::Shared::AccountingAccountTaxonomy.new(
      original_type: 'peccatus',
      type: Models::Shared::AccountingAccountTaxonomyType::SUBGROUP,
      value: 'vesper'
    ),
  ],
  type: Models::Shared::Type::ACCOUNTS_RECEIVABLE,
  updated_at: DateTime.iso8601('2023-08-16T01:01:45.447Z')
), connection_id: '<id>')

unless res.accounting_account.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->