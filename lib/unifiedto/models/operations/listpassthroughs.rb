# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/undefined'

module UnifiedRubySDK
  module Operations

    class ListPassthroughsRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

      field :path, String, { 'path_param': { 'field_name': 'path', 'style': 'simple', 'explode': false } }


      sig { params(connection_id: String, path: String).void }
      def initialize(connection_id: nil, path: nil)
        @connection_id = connection_id
        @path = path
      end
    end


    class ListPassthroughsResponse < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Successful
      field :undefined, T.nilable(Shared::Undefined)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, undefined: T.nilable(Shared::Undefined)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, undefined: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @undefined = undefined
      end
    end
  end
end
