# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/property_accountingtransaction_raw'

module UnifiedRubySDK
  module Shared

    class AccountingTransactionType < T::Enum
      enums do
        RECEIVE = new('RECEIVE')
        SPEND = new('SPEND')
      end
    end



    class AccountingTransaction < UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :account_id, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('account_id') } }

      field :id, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }

      field :total_amount, Float, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('total_amount') } }

      field :type, Shared::AccountingTransactionType, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Shared::AccountingTransactionType, false) } }

      field :created_at, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('created_at') } }

      field :currency, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('currency') } }

      field :description, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('description') } }

      field :line_items, T.nilable(T::Array[Shared::AccountingTransactionLineitem]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('line_items') } }

      field :raw, T.nilable(Shared::PropertyAccountingTransactionRaw), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('raw') } }

      field :reference, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('reference') } }

      field :tax_amount, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('tax_amount') } }

      field :updated_at, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('updated_at') } }


      sig { params(account_id: String, id: String, total_amount: Float, type: Shared::AccountingTransactionType, created_at: T.nilable(String), currency: T.nilable(String), description: T.nilable(String), line_items: T.nilable(T::Array[Shared::AccountingTransactionLineitem]), raw: T.nilable(Shared::PropertyAccountingTransactionRaw), reference: T.nilable(String), tax_amount: T.nilable(Float), updated_at: T.nilable(String)).void }
      def initialize(account_id: nil, id: nil, total_amount: nil, type: nil, created_at: nil, currency: nil, description: nil, line_items: nil, raw: nil, reference: nil, tax_amount: nil, updated_at: nil)
        @account_id = account_id
        @id = id
        @total_amount = total_amount
        @type = type
        @created_at = created_at
        @currency = currency
        @description = description
        @line_items = line_items
        @raw = raw
        @reference = reference
        @tax_amount = tax_amount
        @updated_at = updated_at
      end
    end
  end
end
