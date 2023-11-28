# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/connection'

module OpenApiSDK
  module Operations

    class GetUnifiedConnectionRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the Connection
      field :id, String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }


      sig { params(id: String).void }
      def initialize(id: nil)
        @id = id
      end
    end


    class GetUnifiedConnectionResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Successful
      field :connection, T.nilable(Shared::Connection)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, connection: T.nilable(Shared::Connection)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, connection: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @connection = connection
      end
    end
  end
end