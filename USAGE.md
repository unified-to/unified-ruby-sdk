<!-- Start SDK Example Usage [usage] -->
```ruby
require 'unified_ruby_sdk'

Models = ::UnifiedRubySDK::Models
s = ::UnifiedRubySDK::UnifiedTo.new(
      security: Models::Shared::Security.new(
        jwt: '<YOUR_API_KEY_HERE>',
      ),
    )

res = s.accounting.create_accounting_account(accounting_account: Models::Shared::AccountingAccount.new(
  balance: 12_092.0,
  created_at: DateTime.iso8601('2022-07-03T17:57:07.391Z'),
  currency: 'CAD',
  customer_defined_code: '6170',
  description: 'Voluptatibus valde spoliatio.',
  id: '6fd146b3-7fe0-4c8b-b8e3-c2c20e5bbe0e',
  is_payable: false,
  metadata: [],
  name: 'Auto Loan Account',
  status: Models::Shared::Status::ARCHIVED,
  taxonomy: [
    Models::Shared::AccountingAccountTaxonomy.new(
      original_type: 'vilitas',
      type: Models::Shared::AccountingAccountTaxonomyType::SUBGROUP,
      value: 'comedo',
    ),
  ],
  type: Models::Shared::Type::ACCOUNTS_RECEIVABLE,
  updated_at: DateTime.iso8601('2023-08-09T10:02:59.265Z'),
), connection_id: '<id>')

unless res.accounting_account.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->