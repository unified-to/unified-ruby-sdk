# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations

    class RemoveCrmLeadRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Lead
      field :id, String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }


      sig { params(connection_id: String, id: String).void }
      def initialize(connection_id: nil, id: nil)
        @connection_id = connection_id
        @id = id
      end
    end


    class RemoveCrmLeadResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)
      # Successful
      field :res, T.nilable(String)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), res: T.nilable(String)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, res: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @res = res
      end
    end
  end
end
