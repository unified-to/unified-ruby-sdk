# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  
    # Chart of accounts
    class AccountingAccount < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :balance, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('balance') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :currency, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('currency') } }

      field :customer_defined_code, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('customer_defined_code') } }

      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('description') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :is_payable, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_payable') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :parent_account_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('parent_account_id') } }
      # The original data from the integration's API
      field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :status, T.nilable(::UnifiedRubySDK::Shared::Status), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('status'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::Status, true) } }

      field :type, T.nilable(::UnifiedRubySDK::Shared::Type), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::Type, true) } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(balance: T.nilable(::Float), created_at: T.nilable(::DateTime), currency: T.nilable(::String), customer_defined_code: T.nilable(::String), description: T.nilable(::String), id: T.nilable(::String), is_payable: T.nilable(T::Boolean), name: T.nilable(::String), parent_account_id: T.nilable(::String), raw: T.nilable(T::Hash[Symbol, ::Object]), status: T.nilable(::UnifiedRubySDK::Shared::Status), type: T.nilable(::UnifiedRubySDK::Shared::Type), updated_at: T.nilable(::DateTime)).void }
      def initialize(balance: nil, created_at: nil, currency: nil, customer_defined_code: nil, description: nil, id: nil, is_payable: nil, name: nil, parent_account_id: nil, raw: nil, status: nil, type: nil, updated_at: nil)
        @balance = balance
        @created_at = created_at
        @currency = currency
        @customer_defined_code = customer_defined_code
        @description = description
        @id = id
        @is_payable = is_payable
        @name = name
        @parent_account_id = parent_account_id
        @raw = raw
        @status = status
        @type = type
        @updated_at = updated_at
      end
    end
  end
end
