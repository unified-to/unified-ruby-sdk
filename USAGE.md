<!-- Start SDK Example Usage -->
```ruby
require_relative unified_to


s = OpenApiSDK::UnifiedTo.new

   
req = Operations::CreateAccountingCustomerRequest.new(
  path_params=Operations::CreateAccountingCustomerRequest.new(
    connection_id="string",
    accounting_customer=Shared::AccountingCustomer.new(
      billing_address=Shared::PropertyAccountingCustomerBillingAddress.new(
        address1="string",
        address2="string",
        city="New Raulfield",
        country="Libyan Arab Jamahiriya",
        country_code="IN",
        postal_code="22232",
        region="string",
        region_code="string",
      ),
      created_at=DateTime.iso8601('2021-07-22T19:16:48.798Z'),
      currency="Dalasi",
      emails=.new[
        Shared::AccountingEmail.new(
          email="Loren78@gmail.com",
          type=Shared::Type::WORK,
        ),
      ],
      id="<ID>",
      is_active=false,
      name="string",
      raw=Shared::PropertyAccountingCustomerRaw.new(),
      shipping_address=Shared::PropertyAccountingCustomerShippingAddress.new(
        address1="string",
        address2="string",
        city="Fort Gregton",
        country="Monaco",
        country_code="CM",
        postal_code="90629",
        region="string",
        region_code="string",
      ),
      tax_exemption=Shared::TaxExemption::FEDERAL_GOV,
      telephones=.new[
        Shared::AccountingTelephone.new(
          telephone="string",
          type=Shared::AccountingTelephoneType::FAX,
        ),
      ],
      updated_at=DateTime.iso8601('2023-06-07T17:38:20.030Z'),
    ),
  ),
  accounting_customer=Shared::AccountingCustomer.new(
    billing_address=Shared::PropertyAccountingCustomerBillingAddress.new(
      address1="string",
      address2="string",
      city="West Rylee",
      country="Papua New Guinea",
      country_code="SI",
      postal_code="86762",
      region="string",
      region_code="string",
    ),
    created_at=DateTime.iso8601('2022-03-05T17:07:05.218Z'),
    currency="Kwanza",
    emails=.new[
      Shared::AccountingEmail.new(
        email="Max.Kuhn@yahoo.com",
        type=Shared::Type::HOME,
      ),
    ],
    id="<ID>",
    is_active=false,
    name="string",
    raw=Shared::PropertyAccountingCustomerRaw.new(),
    shipping_address=Shared::PropertyAccountingCustomerShippingAddress.new(
      address1="string",
      address2="string",
      city="Elmiraburgh",
      country="French Guiana",
      country_code="MM",
      postal_code="83052",
      region="string",
      region_code="string",
    ),
    tax_exemption=Shared::TaxExemption::EDUCATIONAL_ORG,
    telephones=.new[
      Shared::AccountingTelephone.new(
        telephone="string",
        type=Shared::AccountingTelephoneType::WORK,
      ),
    ],
    updated_at=DateTime.iso8601('2021-07-15T20:46:24.576Z'),
  ),
)
    
res = s.accounting.create_accounting_customer(req)

if ! res.accounting_customer.nil?
  # handle response
end

```
<!-- End SDK Example Usage -->