# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class AccountingJournal
        extend T::Sig
        include Crystalline::MetadataFields


        field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

        field :currency, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('currency') } }

        field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('description') } }

        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }
        # new field name
        field :lineitems, T.nilable(T::Array[Models::Shared::AccountingJournalLineitem]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('lineitems') } }

        field :posted_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('posted_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

        field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

        field :reference, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('reference') } }

        field :tax_amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('tax_amount') } }

        field :taxrate_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('taxrate_id') } }

        field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


        sig { params(created_at: T.nilable(::DateTime), currency: T.nilable(::String), description: T.nilable(::String), id: T.nilable(::String), lineitems: T.nilable(T::Array[Models::Shared::AccountingJournalLineitem]), posted_at: T.nilable(::DateTime), raw: T.nilable(T::Hash[Symbol, ::Object]), reference: T.nilable(::String), tax_amount: T.nilable(::Float), taxrate_id: T.nilable(::String), updated_at: T.nilable(::DateTime)).void }
        def initialize(created_at: nil, currency: nil, description: nil, id: nil, lineitems: nil, posted_at: nil, raw: nil, reference: nil, tax_amount: nil, taxrate_id: nil, updated_at: nil)
          @created_at = created_at
          @currency = currency
          @description = description
          @id = id
          @lineitems = lineitems
          @posted_at = posted_at
          @raw = raw
          @reference = reference
          @tax_amount = tax_amount
          @taxrate_id = taxrate_id
          @updated_at = updated_at
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @created_at == other.created_at
          return false unless @currency == other.currency
          return false unless @description == other.description
          return false unless @id == other.id
          return false unless @lineitems == other.lineitems
          return false unless @posted_at == other.posted_at
          return false unless @raw == other.raw
          return false unless @reference == other.reference
          return false unless @tax_amount == other.tax_amount
          return false unless @taxrate_id == other.taxrate_id
          return false unless @updated_at == other.updated_at
          true
        end
      end
    end
  end
end
