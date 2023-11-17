# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/crmdeal'

module OpenApiSDK
  module Operations

    class PatchCrmDealRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Deal
      field :id, String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # A deal represents an opportunity with companies and/or contacts
      field :crm_deal, T.nilable(Shared::CrmDeal), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: String, id: String, crm_deal: T.nilable(Shared::CrmDeal)).void }
      def initialize(connection_id: nil, id: nil, crm_deal: nil)
        @connection_id = connection_id
        @id = id
        @crm_deal = crm_deal
      end
    end


    class PatchCrmDealResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Successful
      field :crm_deal, T.nilable(Shared::CrmDeal)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, crm_deal: T.nilable(Shared::CrmDeal)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, crm_deal: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @crm_deal = crm_deal
      end
    end
  end
end
