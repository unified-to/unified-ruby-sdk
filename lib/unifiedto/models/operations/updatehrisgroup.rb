# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/hrisgroup'

module OpenApiSDK
  module Operations

    class UpdateHrisGroupRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Group
      field :id, String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :hris_group, T.nilable(Shared::HrisGroup), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: String, id: String, hris_group: T.nilable(Shared::HrisGroup)).void }
      def initialize(connection_id: nil, id: nil, hris_group: nil)
        @connection_id = connection_id
        @id = id
        @hris_group = hris_group
      end
    end


    class UpdateHrisGroupResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Successful
      field :hris_group, T.nilable(Shared::HrisGroup)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, hris_group: T.nilable(Shared::HrisGroup)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, hris_group: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @hris_group = hris_group
      end
    end
  end
end
