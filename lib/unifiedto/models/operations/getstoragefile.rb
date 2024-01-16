# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/storagefile'

module UnifiedRubySDK
  module Operations

    class GetStorageFileRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the File
      field :id, String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # Comma-delimited fields to return
      field :fields, T.nilable(T::Array[String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }


      sig { params(connection_id: String, id: String, fields: T.nilable(T::Array[String])).void }
      def initialize(connection_id: nil, id: nil, fields: nil)
        @connection_id = connection_id
        @id = id
        @fields = fields
      end
    end


    class GetStorageFileResponse < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Successful
      field :storage_file, T.nilable(Shared::StorageFile)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, storage_file: T.nilable(Shared::StorageFile)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, storage_file: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @storage_file = storage_file
      end
    end
  end
end
