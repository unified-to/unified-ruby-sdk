# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/marketinglist'

module OpenApiSDK
  module Operations

    class PatchMartechListRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the List
      field :id, String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # Mailing List
      field :marketing_list, T.nilable(Shared::MarketingList), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: String, id: String, marketing_list: T.nilable(Shared::MarketingList)).void }
      def initialize(connection_id: nil, id: nil, marketing_list: nil)
        @connection_id = connection_id
        @id = id
        @marketing_list = marketing_list
      end
    end


    class PatchMartechListResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Successful
      field :marketing_list, T.nilable(Shared::MarketingList)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, marketing_list: T.nilable(Shared::MarketingList)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, marketing_list: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @marketing_list = marketing_list
      end
    end
  end
end
