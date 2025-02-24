# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class PatchKmsSpaceRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Space
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :kms_space, ::UnifiedRubySDK::Shared::KmsSpace, { 'request': { 'media_type': 'application/json' } }
      # Comma-delimited fields to return
      field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }


      sig { params(connection_id: ::String, id: ::String, kms_space: ::UnifiedRubySDK::Shared::KmsSpace, fields_: T.nilable(T::Array[::String])).void }
      def initialize(connection_id: nil, id: nil, kms_space: nil, fields_: nil)
        @connection_id = connection_id
        @id = id
        @kms_space = kms_space
        @fields_ = fields_
      end
    end
  end
end
