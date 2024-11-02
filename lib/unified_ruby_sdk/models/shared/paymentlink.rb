# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class PaymentLink < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('amount') } }

      field :contact_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('contact_id') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :currency, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('currency') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :is_active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_active') } }

      field :is_chargeable_now, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_chargeable_now') } }

      field :lineitems, T.nilable(T::Array[::UnifiedRubySDK::Shared::PaymentLinkLineitem]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('lineitems') } }

      field :payment_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('payment_id') } }

      field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :success_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('success_url') } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('url') } }


      sig { params(amount: T.nilable(::Float), contact_id: T.nilable(::String), created_at: T.nilable(::DateTime), currency: T.nilable(::String), id: T.nilable(::String), is_active: T.nilable(T::Boolean), is_chargeable_now: T.nilable(T::Boolean), lineitems: T.nilable(T::Array[::UnifiedRubySDK::Shared::PaymentLinkLineitem]), payment_id: T.nilable(::String), raw: T.nilable(T::Hash[Symbol, ::Object]), success_url: T.nilable(::String), updated_at: T.nilable(::DateTime), url: T.nilable(::String)).void }
      def initialize(amount: nil, contact_id: nil, created_at: nil, currency: nil, id: nil, is_active: nil, is_chargeable_now: nil, lineitems: nil, payment_id: nil, raw: nil, success_url: nil, updated_at: nil, url: nil)
        @amount = amount
        @contact_id = contact_id
        @created_at = created_at
        @currency = currency
        @id = id
        @is_active = is_active
        @is_chargeable_now = is_chargeable_now
        @lineitems = lineitems
        @payment_id = payment_id
        @raw = raw
        @success_url = success_url
        @updated_at = updated_at
        @url = url
      end
    end
  end
end
