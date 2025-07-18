# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class AccountingProfitlossAccount
        extend T::Sig
        include Crystalline::MetadataFields


        field :account_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('account_id') } }

        field :account_name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('account_name') } }

        field :total_amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('total_amount') } }

        field :transaction_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('transaction_ids') } }


        sig { params(account_id: T.nilable(::String), account_name: T.nilable(::String), total_amount: T.nilable(::Float), transaction_ids: T.nilable(T::Array[::String])).void }
        def initialize(account_id: nil, account_name: nil, total_amount: nil, transaction_ids: nil)
          @account_id = account_id
          @account_name = account_name
          @total_amount = total_amount
          @transaction_ids = transaction_ids
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @account_id == other.account_id
          return false unless @account_name == other.account_name
          return false unless @total_amount == other.total_amount
          return false unless @transaction_ids == other.transaction_ids
          true
        end
      end
    end
  end
end
