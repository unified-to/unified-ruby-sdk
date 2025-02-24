# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class PatchCrmContactRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # A contact represents a person that optionally is associated with a deal and/or a company
      field :crm_contact, ::UnifiedRubySDK::Shared::CrmContact, { 'request': { 'media_type': 'application/json' } }
      # ID of the Contact
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # Comma-delimited fields to return
      field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }


      sig { params(connection_id: ::String, crm_contact: ::UnifiedRubySDK::Shared::CrmContact, id: ::String, fields_: T.nilable(T::Array[::String])).void }
      def initialize(connection_id: nil, crm_contact: nil, id: nil, fields_: nil)
        @connection_id = connection_id
        @crm_contact = crm_contact
        @id = id
        @fields_ = fields_
      end
    end
  end
end
