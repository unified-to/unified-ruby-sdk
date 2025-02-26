# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class AccountingOrder < ::Crystalline::FieldAugmented
      extend T::Sig


      field :account_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('account_id') } }

      field :billing_address, T.nilable(::UnifiedRubySDK::Shared::PropertyAccountingOrderBillingAddress), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('billing_address') } }

      field :contact_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('contact_id') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :currency, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('currency') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :lineitems, T.nilable(T::Array[::UnifiedRubySDK::Shared::AccountingLineitem]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('lineitems') } }

      field :raw, T.nilable(::UnifiedRubySDK::Shared::AccountingOrderRaw), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :shipping_address, T.nilable(::UnifiedRubySDK::Shared::PropertyAccountingOrderShippingAddress), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('shipping_address') } }

      field :status, T.nilable(::UnifiedRubySDK::Shared::AccountingOrderStatus), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('status'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::AccountingOrderStatus, true) } }

      field :total_amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('total_amount') } }

      field :type, T.nilable(::UnifiedRubySDK::Shared::AccountingOrderType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::AccountingOrderType, true) } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(account_id: T.nilable(::String), billing_address: T.nilable(::UnifiedRubySDK::Shared::PropertyAccountingOrderBillingAddress), contact_id: T.nilable(::String), created_at: T.nilable(::DateTime), currency: T.nilable(::String), id: T.nilable(::String), lineitems: T.nilable(T::Array[::UnifiedRubySDK::Shared::AccountingLineitem]), raw: T.nilable(::UnifiedRubySDK::Shared::AccountingOrderRaw), shipping_address: T.nilable(::UnifiedRubySDK::Shared::PropertyAccountingOrderShippingAddress), status: T.nilable(::UnifiedRubySDK::Shared::AccountingOrderStatus), total_amount: T.nilable(::Float), type: T.nilable(::UnifiedRubySDK::Shared::AccountingOrderType), updated_at: T.nilable(::DateTime)).void }
      def initialize(account_id: nil, billing_address: nil, contact_id: nil, created_at: nil, currency: nil, id: nil, lineitems: nil, raw: nil, shipping_address: nil, status: nil, total_amount: nil, type: nil, updated_at: nil)
        @account_id = account_id
        @billing_address = billing_address
        @contact_id = contact_id
        @created_at = created_at
        @currency = currency
        @id = id
        @lineitems = lineitems
        @raw = raw
        @shipping_address = shipping_address
        @status = status
        @total_amount = total_amount
        @type = type
        @updated_at = updated_at
      end
    end
  end
end
