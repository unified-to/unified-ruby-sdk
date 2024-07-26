# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class UpdateAccountingAccountRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Account
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # Chart of accounts
      field :accounting_account, T.nilable(::UnifiedRubySDK::Shared::AccountingAccount), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, id: ::String, accounting_account: T.nilable(::UnifiedRubySDK::Shared::AccountingAccount)).void }
      def initialize(connection_id: nil, id: nil, accounting_account: nil)
        @connection_id = connection_id
        @id = id
        @accounting_account = accounting_account
      end
    end
  end
end
