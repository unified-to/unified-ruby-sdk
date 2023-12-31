# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/property_accountingaccount_raw'

module UnifiedRubySDK
  module Shared

    class Status < T::Enum
      enums do
        ACTIVE = new('ACTIVE')
        ARCHIVED = new('ARCHIVED')
      end
    end



    class Type < T::Enum
      enums do
        ACCOUNTS_PAYABLE = new('ACCOUNTS_PAYABLE')
        ACCOUNTS_RECEIVABLE = new('ACCOUNTS_RECEIVABLE')
        BANK = new('BANK')
        CREDIT_CARD = new('CREDIT_CARD')
        FIXED_ASSET = new('FIXED_ASSET')
        LIABILITY = new('LIABILITY')
        EQUITY = new('EQUITY')
        EXPENSE = new('EXPENSE')
        REVENUE = new('REVENUE')
        OTHER = new('OTHER')
      end
    end



    class AccountingAccount < UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :name, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('name') } }

      field :balance, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('balance') } }

      field :bank_account_number, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('bank_account_number') } }

      field :created_at, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :currency, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('currency') } }

      field :customer_defined_code, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('customer_defined_code') } }

      field :description, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('description') } }

      field :id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }

      field :raw, T.nilable(Shared::PropertyAccountingAccountRaw), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('raw') } }

      field :status, T.nilable(Shared::Status), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('status'), 'decoder': Utils.enum_from_string(Shared::Status, true) } }

      field :type, T.nilable(Shared::Type), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Shared::Type, true) } }

      field :updated_at, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(name: String, balance: T.nilable(Float), bank_account_number: T.nilable(String), created_at: T.nilable(DateTime), currency: T.nilable(String), customer_defined_code: T.nilable(String), description: T.nilable(String), id: T.nilable(String), raw: T.nilable(Shared::PropertyAccountingAccountRaw), status: T.nilable(Shared::Status), type: T.nilable(Shared::Type), updated_at: T.nilable(DateTime)).void }
      def initialize(name: nil, balance: nil, bank_account_number: nil, created_at: nil, currency: nil, customer_defined_code: nil, description: nil, id: nil, raw: nil, status: nil, type: nil, updated_at: nil)
        @name = name
        @balance = balance
        @bank_account_number = bank_account_number
        @created_at = created_at
        @currency = currency
        @customer_defined_code = customer_defined_code
        @description = description
        @id = id
        @raw = raw
        @status = status
        @type = type
        @updated_at = updated_at
      end
    end
  end
end
