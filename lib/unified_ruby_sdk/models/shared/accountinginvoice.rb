# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class AccountingInvoice < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :balance_amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('balance_amount') } }

      field :cancelled_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('cancelled_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :contact_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('contact_id') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :currency, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('currency') } }

      field :discount_amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('discount_amount') } }

      field :due_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('due_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :invoice_number, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('invoice_number') } }

      field :lineitems, T.nilable(T::Array[::UnifiedRubySDK::Shared::AccountingLineitem]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('lineitems') } }

      field :notes, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('notes') } }

      field :paid_amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('paid_amount') } }

      field :paid_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('paid_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :refund_amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('refund_amount') } }

      field :refund_reason, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('refund_reason') } }

      field :refunded_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('refunded_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :status, T.nilable(::UnifiedRubySDK::Shared::AccountingInvoiceStatus), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('status'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::AccountingInvoiceStatus, true) } }

      field :tax_amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('tax_amount') } }

      field :total_amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('total_amount') } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('url') } }


      sig { params(balance_amount: T.nilable(::Float), cancelled_at: T.nilable(::DateTime), contact_id: T.nilable(::String), created_at: T.nilable(::DateTime), currency: T.nilable(::String), discount_amount: T.nilable(::Float), due_at: T.nilable(::DateTime), id: T.nilable(::String), invoice_number: T.nilable(::String), lineitems: T.nilable(T::Array[::UnifiedRubySDK::Shared::AccountingLineitem]), notes: T.nilable(::String), paid_amount: T.nilable(::Float), paid_at: T.nilable(::DateTime), raw: T.nilable(T::Hash[Symbol, ::Object]), refund_amount: T.nilable(::Float), refund_reason: T.nilable(::String), refunded_at: T.nilable(::DateTime), status: T.nilable(::UnifiedRubySDK::Shared::AccountingInvoiceStatus), tax_amount: T.nilable(::Float), total_amount: T.nilable(::Float), updated_at: T.nilable(::DateTime), url: T.nilable(::String)).void }
      def initialize(balance_amount: nil, cancelled_at: nil, contact_id: nil, created_at: nil, currency: nil, discount_amount: nil, due_at: nil, id: nil, invoice_number: nil, lineitems: nil, notes: nil, paid_amount: nil, paid_at: nil, raw: nil, refund_amount: nil, refund_reason: nil, refunded_at: nil, status: nil, tax_amount: nil, total_amount: nil, updated_at: nil, url: nil)
        @balance_amount = balance_amount
        @cancelled_at = cancelled_at
        @contact_id = contact_id
        @created_at = created_at
        @currency = currency
        @discount_amount = discount_amount
        @due_at = due_at
        @id = id
        @invoice_number = invoice_number
        @lineitems = lineitems
        @notes = notes
        @paid_amount = paid_amount
        @paid_at = paid_at
        @raw = raw
        @refund_amount = refund_amount
        @refund_reason = refund_reason
        @refunded_at = refunded_at
        @status = status
        @tax_amount = tax_amount
        @total_amount = total_amount
        @updated_at = updated_at
        @url = url
      end
    end
  end
end
