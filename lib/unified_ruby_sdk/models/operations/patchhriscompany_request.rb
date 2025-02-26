# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class PatchHrisCompanyRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

      field :hris_company, ::UnifiedRubySDK::Shared::HrisCompany, { 'request': { 'media_type': 'application/json' } }
      # ID of the Company
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # Comma-delimited fields to return
      field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }


      sig { params(connection_id: ::String, hris_company: ::UnifiedRubySDK::Shared::HrisCompany, id: ::String, fields_: T.nilable(T::Array[::String])).void }
      def initialize(connection_id: nil, hris_company: nil, id: nil, fields_: nil)
        @connection_id = connection_id
        @hris_company = hris_company
        @id = id
        @fields_ = fields_
      end
    end
  end
end
