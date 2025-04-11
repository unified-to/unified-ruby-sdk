# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class AccountingOrder
        extend T::Sig
        include Crystalline::MetadataFields


        field :account_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('account_id') } }

        field :billing_address, T.nilable(Models::Shared::PropertyAccountingOrderBillingAddress), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('billing_address') } }

        field :contact_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('contact_id') } }

        field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

        field :currency, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('currency') } }

        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

        field :lineitems, T.nilable(T::Array[Models::Shared::AccountingLineitem]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('lineitems') } }

        field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

        field :shipping_address, T.nilable(Models::Shared::PropertyAccountingOrderShippingAddress), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('shipping_address') } }

        field :status, T.nilable(Models::Shared::AccountingOrderStatus), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('status'), 'decoder': Utils.enum_from_string(Models::Shared::AccountingOrderStatus, true) } }

        field :total_amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('total_amount') } }

        field :type, T.nilable(Models::Shared::AccountingOrderType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Models::Shared::AccountingOrderType, true) } }

        field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


        sig { params(account_id: T.nilable(::String), billing_address: T.nilable(Models::Shared::PropertyAccountingOrderBillingAddress), contact_id: T.nilable(::String), created_at: T.nilable(::DateTime), currency: T.nilable(::String), id: T.nilable(::String), lineitems: T.nilable(T::Array[Models::Shared::AccountingLineitem]), raw: T.nilable(T::Hash[Symbol, ::Object]), shipping_address: T.nilable(Models::Shared::PropertyAccountingOrderShippingAddress), status: T.nilable(Models::Shared::AccountingOrderStatus), total_amount: T.nilable(::Float), type: T.nilable(Models::Shared::AccountingOrderType), updated_at: T.nilable(::DateTime)).void }
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

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @account_id == other.account_id
          return false unless @billing_address == other.billing_address
          return false unless @contact_id == other.contact_id
          return false unless @created_at == other.created_at
          return false unless @currency == other.currency
          return false unless @id == other.id
          return false unless @lineitems == other.lineitems
          return false unless @raw == other.raw
          return false unless @shipping_address == other.shipping_address
          return false unless @status == other.status
          return false unless @total_amount == other.total_amount
          return false unless @type == other.type
          return false unless @updated_at == other.updated_at
          true
        end
      end
    end
  end
end
