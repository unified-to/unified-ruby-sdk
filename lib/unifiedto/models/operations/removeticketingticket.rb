# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations

    class RemoveTicketingTicketRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Ticket
      field :id, String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }


      sig { params(connection_id: String, id: String).void }
      def initialize(connection_id: nil, id: nil)
        @connection_id = connection_id
        @id = id
      end
    end


    class RemoveTicketingTicketResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Successful
      field :res, T.nilable(String)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, res: T.nilable(String)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, res: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @res = res
      end
    end
  end
end
