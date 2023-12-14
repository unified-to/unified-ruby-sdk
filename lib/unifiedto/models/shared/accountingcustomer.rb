# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/property_accountingcustomer_billing_address'
require_relative '../shared/property_accountingcustomer_raw'
require_relative '../shared/property_accountingcustomer_shipping_address'

module UnifiedRubySDK
  module Shared

    class TaxExemption < T::Enum
      enums do
        FEDERAL_GOV = new('FEDERAL_GOV')
        REGION_GOV = new('REGION_GOV')
        LOCAL_GOV = new('LOCAL_GOV')
        TRIBAL_GOV = new('TRIBAL_GOV')
        CHARITABLE_ORG = new('CHARITABLE_ORG')
        RELIGIOUS_ORG = new('RELIGIOUS_ORG')
        EDUCATIONAL_ORG = new('EDUCATIONAL_ORG')
        MEDICAL_ORG = new('MEDICAL_ORG')
        RESALE = new('RESALE')
        FOREIGN = new('FOREIGN')
        OTHER = new('OTHER')
      end
    end



    class AccountingCustomer < UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :billing_address, T.nilable(Shared::PropertyAccountingCustomerBillingAddress), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('billing_address') } }

      field :created_at, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :currency, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('currency') } }

      field :emails, T.nilable(T::Array[Shared::AccountingEmail]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('emails') } }

      field :id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }

      field :is_active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('is_active') } }

      field :name, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('name') } }

      field :raw, T.nilable(Shared::PropertyAccountingCustomerRaw), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('raw') } }

      field :shipping_address, T.nilable(Shared::PropertyAccountingCustomerShippingAddress), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('shipping_address') } }

      field :tax_exemption, T.nilable(Shared::TaxExemption), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('tax_exemption'), 'decoder': Utils.enum_from_string(Shared::TaxExemption, true) } }

      field :tax_number, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('tax_number') } }

      field :telephones, T.nilable(T::Array[Shared::AccountingTelephone]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('telephones') } }

      field :updated_at, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(billing_address: T.nilable(Shared::PropertyAccountingCustomerBillingAddress), created_at: T.nilable(DateTime), currency: T.nilable(String), emails: T.nilable(T::Array[Shared::AccountingEmail]), id: T.nilable(String), is_active: T.nilable(T::Boolean), name: T.nilable(String), raw: T.nilable(Shared::PropertyAccountingCustomerRaw), shipping_address: T.nilable(Shared::PropertyAccountingCustomerShippingAddress), tax_exemption: T.nilable(Shared::TaxExemption), tax_number: T.nilable(String), telephones: T.nilable(T::Array[Shared::AccountingTelephone]), updated_at: T.nilable(DateTime)).void }
      def initialize(billing_address: nil, created_at: nil, currency: nil, emails: nil, id: nil, is_active: nil, name: nil, raw: nil, shipping_address: nil, tax_exemption: nil, tax_number: nil, telephones: nil, updated_at: nil)
        @billing_address = billing_address
        @created_at = created_at
        @currency = currency
        @emails = emails
        @id = id
        @is_active = is_active
        @name = name
        @raw = raw
        @shipping_address = shipping_address
        @tax_exemption = tax_exemption
        @tax_number = tax_number
        @telephones = telephones
        @updated_at = updated_at
      end
    end
  end
end
