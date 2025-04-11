# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Operations
    

      class PatchCrmCompanyRequest
        extend T::Sig
        include Crystalline::MetadataFields

        # ID of the connection
        field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
        # A company represents an organization that optionally is associated with a deal and/or contacts
        field :crm_company, Models::Shared::CrmCompany, { 'request': { 'media_type': 'application/json' } }
        # ID of the Company
        field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
        # Comma-delimited fields to return
        field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }


        sig { params(connection_id: ::String, crm_company: Models::Shared::CrmCompany, id: ::String, fields_: T.nilable(T::Array[::String])).void }
        def initialize(connection_id: nil, crm_company: nil, id: nil, fields_: nil)
          @connection_id = connection_id
          @crm_company = crm_company
          @id = id
          @fields_ = fields_
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @connection_id == other.connection_id
          return false unless @crm_company == other.crm_company
          return false unless @id == other.id
          return false unless @fields_ == other.fields_
          true
        end
      end
    end
  end
end
