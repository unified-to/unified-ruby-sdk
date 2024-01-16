# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/crmcompany'

module UnifiedRubySDK
  module Operations

    class CreateCrmCompanyRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # A company represents an organization that optionally is associated with a deal and/or contacts
      field :crm_company, T.nilable(Shared::CrmCompany), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: String, crm_company: T.nilable(Shared::CrmCompany)).void }
      def initialize(connection_id: nil, crm_company: nil)
        @connection_id = connection_id
        @crm_company = crm_company
      end
    end


    class CreateCrmCompanyResponse < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Successful
      field :crm_company, T.nilable(Shared::CrmCompany)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, crm_company: T.nilable(Shared::CrmCompany)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, crm_company: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @crm_company = crm_company
      end
    end
  end
end
