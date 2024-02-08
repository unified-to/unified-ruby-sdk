# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreateStorageFileRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

      field :storage_file, T.nilable(::UnifiedRubySDK::Shared::StorageFile), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, storage_file: T.nilable(::UnifiedRubySDK::Shared::StorageFile)).void }
      def initialize(connection_id: nil, storage_file: nil)
        @connection_id = connection_id
        @storage_file = storage_file
      end
    end
  end
end