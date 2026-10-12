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
  currency: 'BOB',
  customer_defined_code: 'quo',
  description: 'Spoliatio comedo vilitas harum cupiditate.',
  id: 'b096adb6-85c6-43bd-8b65-9908676ad8f8',
  is_payable: true,
  name: 'Electronic Aluminum Tuna',
  status: Models::Shared::Status::ARCHIVED,
  taxonomy: [
    Models::Shared::AccountingAccountTaxonomy.new(
      original_type: 'vesper',
      type: Models::Shared::AccountingAccountTaxonomyType::SUBGROUP,
      value: 'iste',
    ),
    Models::Shared::AccountingAccountTaxonomy.new(
      original_type: 'adamo',
      type: Models::Shared::AccountingAccountTaxonomyType::SUBGROUP,
      value: 'peccatus',
    ),
  ],
  type: Models::Shared::Type::BANK,
  updated_at: DateTime.iso8601('2023-01-05T23:34:54.694Z'),
), connection_id: '<id>')

unless res.accounting_account.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->