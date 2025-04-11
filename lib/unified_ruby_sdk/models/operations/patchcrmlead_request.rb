# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Operations
    

      class PatchCrmLeadRequest
        extend T::Sig
        include Crystalline::MetadataFields

        # ID of the connection
        field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

        field :crm_lead, Models::Shared::CrmLead, { 'request': { 'media_type': 'application/json' } }
        # ID of the Lead
        field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
        # Comma-delimited fields to return
        field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }


        sig { params(connection_id: ::String, crm_lead: Models::Shared::CrmLead, id: ::String, fields_: T.nilable(T::Array[::String])).void }
        def initialize(connection_id: nil, crm_lead: nil, id: nil, fields_: nil)
          @connection_id = connection_id
          @crm_lead = crm_lead
          @id = id
          @fields_ = fields_
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @connection_id == other.connection_id
          return false unless @crm_lead == other.crm_lead
          return false unless @id == other.id
          return false unless @fields_ == other.fields_
          true
        end
      end
    end
  end
end
