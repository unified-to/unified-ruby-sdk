# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class AccountingJournalLineitem < ::Crystalline::FieldAugmented
      extend T::Sig


      field :account_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('account_id') } }

      field :contact_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('contact_id') } }

      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('description') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :invoice_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('invoice_id') } }

      field :payment_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('payment_id') } }

      field :tax_amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('tax_amount') } }

      field :total_amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('total_amount') } }


      sig { params(account_id: T.nilable(::String), contact_id: T.nilable(::String), description: T.nilable(::String), id: T.nilable(::String), invoice_id: T.nilable(::String), payment_id: T.nilable(::String), tax_amount: T.nilable(::Float), total_amount: T.nilable(::Float)).void }
      def initialize(account_id: nil, contact_id: nil, description: nil, id: nil, invoice_id: nil, payment_id: nil, tax_amount: nil, total_amount: nil)
        @account_id = account_id
        @contact_id = contact_id
        @description = description
        @id = id
        @invoice_id = invoice_id
        @payment_id = payment_id
        @tax_amount = tax_amount
        @total_amount = total_amount
      end
    end
  end
end
