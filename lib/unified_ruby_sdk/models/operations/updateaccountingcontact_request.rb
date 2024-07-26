# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class UpdateAccountingContactRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Contact
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :accounting_contact, T.nilable(::UnifiedRubySDK::Shared::AccountingContact), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, id: ::String, accounting_contact: T.nilable(::UnifiedRubySDK::Shared::AccountingContact)).void }
      def initialize(connection_id: nil, id: nil, accounting_contact: nil)
        @connection_id = connection_id
        @id = id
        @accounting_contact = accounting_contact
      end
    end
  end
end
