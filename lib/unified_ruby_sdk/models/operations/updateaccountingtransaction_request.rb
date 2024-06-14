# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class UpdateAccountingTransactionRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Transaction
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :accounting_transaction, T.nilable(::UnifiedRubySDK::Shared::AccountingTransaction), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, id: ::String, accounting_transaction: T.nilable(::UnifiedRubySDK::Shared::AccountingTransaction)).void }
      def initialize(connection_id: nil, id: nil, accounting_transaction: nil)
        @connection_id = connection_id
        @id = id
        @accounting_transaction = accounting_transaction
      end
    end
  end
end
