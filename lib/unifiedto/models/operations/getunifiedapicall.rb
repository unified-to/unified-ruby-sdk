# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/apicall'

module OpenApiSDK
  module Operations

    class GetUnifiedApicallRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the Apicall
      field :id, String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }


      sig { params(id: String).void }
      def initialize(id: nil)
        @id = id
      end
    end


    class GetUnifiedApicallResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Successful
      field :api_call, T.nilable(Shared::ApiCall)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, api_call: T.nilable(Shared::ApiCall)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, api_call: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @api_call = api_call
      end
    end
  end
end
