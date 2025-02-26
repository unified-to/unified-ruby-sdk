# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class UpdateMetadataMetadataRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Metadata
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :metadata_metadata, ::UnifiedRubySDK::Shared::MetadataMetadata, { 'request': { 'media_type': 'application/json' } }
      # Comma-delimited fields to return
      field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }


      sig { params(connection_id: ::String, id: ::String, metadata_metadata: ::UnifiedRubySDK::Shared::MetadataMetadata, fields_: T.nilable(T::Array[::String])).void }
      def initialize(connection_id: nil, id: nil, metadata_metadata: nil, fields_: nil)
        @connection_id = connection_id
        @id = id
        @metadata_metadata = metadata_metadata
        @fields_ = fields_
      end
    end
  end
end
