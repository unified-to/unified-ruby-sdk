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
  description: 'Voluptatibus valde spoliatio.',
  id: 'b8faefab-9230-454e-a309-f112a86c38e7',
  is_payable: false,
  metadata: [],
  name: 'Auto Loan Account',
  status: Models::Shared::Status::ARCHIVED,
  taxonomy: [
    Models::Shared::AccountingAccountTaxonomy.new(
      original_type: 'vilitas',
      type: Models::Shared::AccountingAccountTaxonomyType::SUBGROUP,
      value: 'comedo'
    ),
  ],
  type: Models::Shared::Type::ACCOUNTS_RECEIVABLE,
  updated_at: DateTime.iso8601('2023-08-12T23:39:28.304Z')
), connection_id: '<id>')

unless res.accounting_account.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->