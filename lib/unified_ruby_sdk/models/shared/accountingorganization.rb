# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class AccountingOrganization < ::Crystalline::FieldAugmented
      extend T::Sig


      field :name, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :address, T.nilable(::UnifiedRubySDK::Shared::PropertyAccountingOrganizationAddress), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('address') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :currency, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('currency') } }

      field :fiscal_year_end_month, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('fiscal_year_end_month') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :legal_name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('legal_name') } }

      field :organization_code, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('organization_code') } }

      field :raw, T.nilable(::UnifiedRubySDK::Shared::AccountingOrganizationRaw), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :tax_number, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('tax_number') } }

      field :timezone, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('timezone') } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :website, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('website') } }


      sig { params(name: ::String, address: T.nilable(::UnifiedRubySDK::Shared::PropertyAccountingOrganizationAddress), created_at: T.nilable(::DateTime), currency: T.nilable(::String), fiscal_year_end_month: T.nilable(::Float), id: T.nilable(::String), legal_name: T.nilable(::String), organization_code: T.nilable(::String), raw: T.nilable(::UnifiedRubySDK::Shared::AccountingOrganizationRaw), tax_number: T.nilable(::String), timezone: T.nilable(::String), updated_at: T.nilable(::DateTime), website: T.nilable(::String)).void }
      def initialize(name: nil, address: nil, created_at: nil, currency: nil, fiscal_year_end_month: nil, id: nil, legal_name: nil, organization_code: nil, raw: nil, tax_number: nil, timezone: nil, updated_at: nil, website: nil)
        @name = name
        @address = address
        @created_at = created_at
        @currency = currency
        @fiscal_year_end_month = fiscal_year_end_month
        @id = id
        @legal_name = legal_name
        @organization_code = organization_code
        @raw = raw
        @tax_number = tax_number
        @timezone = timezone
        @updated_at = updated_at
        @website = website
      end
    end
  end
end
