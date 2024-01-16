# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module UnifiedRubySDK
  module Shared

    class AccountingTransactionLineitem < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :total_amount, Float, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('total_amount') } }

      field :customer_id, T.nilable(String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('customer_id') } }

      field :description, T.nilable(String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('description') } }

      field :id, T.nilable(String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :invoice_id, T.nilable(String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('invoice_id') } }

      field :payment_id, T.nilable(String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('payment_id') } }

      field :tax_amount, T.nilable(Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('tax_amount') } }


      sig { params(total_amount: Float, customer_id: T.nilable(String), description: T.nilable(String), id: T.nilable(String), invoice_id: T.nilable(String), payment_id: T.nilable(String), tax_amount: T.nilable(Float)).void }
      def initialize(total_amount: nil, customer_id: nil, description: nil, id: nil, invoice_id: nil, payment_id: nil, tax_amount: nil)
        @total_amount = total_amount
        @customer_id = customer_id
        @description = description
        @id = id
        @invoice_id = invoice_id
        @payment_id = payment_id
        @tax_amount = tax_amount
      end
    end
  end
end
