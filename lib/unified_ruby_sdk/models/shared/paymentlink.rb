# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class PaymentLink < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :is_active, T::Boolean, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_active') } }

      field :lineitems, T::Array[::UnifiedRubySDK::Shared::PaymenntLinkLineitem], { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('lineitems') } }

      field :url, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('url') } }

      field :amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('amount') } }

      field :contact_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('contact_id') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :currency, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('currency') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :payment_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('payment_id') } }

      field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(is_active: T::Boolean, lineitems: T::Array[::UnifiedRubySDK::Shared::PaymenntLinkLineitem], url: ::String, amount: T.nilable(::Float), contact_id: T.nilable(::String), created_at: T.nilable(::DateTime), currency: T.nilable(::String), id: T.nilable(::String), payment_id: T.nilable(::String), raw: T.nilable(T::Hash[Symbol, ::Object]), updated_at: T.nilable(::DateTime)).void }
      def initialize(is_active: nil, lineitems: nil, url: nil, amount: nil, contact_id: nil, created_at: nil, currency: nil, id: nil, payment_id: nil, raw: nil, updated_at: nil)
        @is_active = is_active
        @lineitems = lineitems
        @url = url
        @amount = amount
        @contact_id = contact_id
        @created_at = created_at
        @currency = currency
        @id = id
        @payment_id = payment_id
        @raw = raw
        @updated_at = updated_at
      end
    end
  end
end
