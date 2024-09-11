# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class UpdateCrmCompanyRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Company
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # A company represents an organization that optionally is associated with a deal and/or contacts
      field :crm_company, T.nilable(::UnifiedRubySDK::Shared::CrmCompany), { 'request': { 'media_type': 'application/json' } }
      # Comma-delimited fields to return
      field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }


      sig { params(connection_id: ::String, id: ::String, crm_company: T.nilable(::UnifiedRubySDK::Shared::CrmCompany), fields_: T.nilable(T::Array[::String])).void }
      def initialize(connection_id: nil, id: nil, crm_company: nil, fields_: nil)
        @connection_id = connection_id
        @id = id
        @crm_company = crm_company
        @fields_ = fields_
      end
    end
  end
end
