# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreateCrmCompanyRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # A company represents an organization that optionally is associated with a deal and/or contacts
      field :crm_company, T.nilable(::UnifiedRubySDK::Shared::CrmCompany), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, crm_company: T.nilable(::UnifiedRubySDK::Shared::CrmCompany)).void }
      def initialize(connection_id: nil, crm_company: nil)
        @connection_id = connection_id
        @crm_company = crm_company
      end
    end
  end
end
