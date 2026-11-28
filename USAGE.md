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
  id: 'ad23778a-fb2a-4ecf-b08e-c8888ea4bcf9',
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
  updated_at: DateTime.iso8601('2023-08-16T13:36:52.715Z')
), connection_id: '<id>')

unless res.accounting_account.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->