# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class PaymentPayment < ::Crystalline::FieldAugmented
      extend T::Sig


      field :account_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('account_id') } }

      field :contact_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('contact_id') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :currency, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('currency') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :invoice_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('invoice_id') } }

      field :notes, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('notes') } }

      field :payment_method, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('payment_method') } }

      field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :reference, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('reference') } }

      field :total_amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('total_amount') } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(account_id: T.nilable(::String), contact_id: T.nilable(::String), created_at: T.nilable(::DateTime), currency: T.nilable(::String), id: T.nilable(::String), invoice_id: T.nilable(::String), notes: T.nilable(::String), payment_method: T.nilable(::String), raw: T.nilable(T::Hash[Symbol, ::Object]), reference: T.nilable(::String), total_amount: T.nilable(::Float), updated_at: T.nilable(::DateTime)).void }
      def initialize(account_id: nil, contact_id: nil, created_at: nil, currency: nil, id: nil, invoice_id: nil, notes: nil, payment_method: nil, raw: nil, reference: nil, total_amount: nil, updated_at: nil)
        @account_id = account_id
        @contact_id = contact_id
        @created_at = created_at
        @currency = currency
        @id = id
        @invoice_id = invoice_id
        @notes = notes
        @payment_method = payment_method
        @raw = raw
        @reference = reference
        @total_amount = total_amount
        @updated_at = updated_at
      end
    end
  end
end
