# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreateUcContactRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # A contact represents a person that optionally is associated with a call
      field :uc_contact, ::UnifiedRubySDK::Shared::UcContact, { 'request': { 'media_type': 'application/json' } }
      # Comma-delimited fields to return
      field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }


      sig { params(connection_id: ::String, uc_contact: ::UnifiedRubySDK::Shared::UcContact, fields_: T.nilable(T::Array[::String])).void }
      def initialize(connection_id: nil, uc_contact: nil, fields_: nil)
        @connection_id = connection_id
        @uc_contact = uc_contact
        @fields_ = fields_
      end
    end
  end
end
