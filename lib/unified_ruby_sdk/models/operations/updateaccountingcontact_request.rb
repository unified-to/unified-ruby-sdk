# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class UpdateAccountingContactRequest < ::Crystalline::FieldAugmented
      extend T::Sig


      field :accounting_contact, ::UnifiedRubySDK::Shared::AccountingContact, { 'request': { 'media_type': 'application/json' } }
      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Contact
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # Comma-delimited fields to return
      field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }


      sig { params(accounting_contact: ::UnifiedRubySDK::Shared::AccountingContact, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).void }
      def initialize(accounting_contact: nil, connection_id: nil, id: nil, fields_: nil)
        @accounting_contact = accounting_contact
        @connection_id = connection_id
        @id = id
        @fields_ = fields_
      end
    end
  end
end
