# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class PatchHrisCompanyRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Company
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :hris_company, T.nilable(::UnifiedRubySDK::Shared::HrisCompany), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, id: ::String, hris_company: T.nilable(::UnifiedRubySDK::Shared::HrisCompany)).void }
      def initialize(connection_id: nil, id: nil, hris_company: nil)
        @connection_id = connection_id
        @id = id
        @hris_company = hris_company
      end
    end
  end
end
