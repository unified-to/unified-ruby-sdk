# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreateCrmContactRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # A contact represents a person that optionally is associated with a deal and/or a company
      field :crm_contact, T.nilable(::UnifiedRubySDK::Shared::CrmContact), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, crm_contact: T.nilable(::UnifiedRubySDK::Shared::CrmContact)).void }
      def initialize(connection_id: nil, crm_contact: nil)
        @connection_id = connection_id
        @crm_contact = crm_contact
      end
    end
  end
end