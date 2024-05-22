# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class UpdateKmsSpaceRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Space
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :kms_space, T.nilable(::UnifiedRubySDK::Shared::KmsSpace), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, id: ::String, kms_space: T.nilable(::UnifiedRubySDK::Shared::KmsSpace)).void }
      def initialize(connection_id: nil, id: nil, kms_space: nil)
        @connection_id = connection_id
        @id = id
        @kms_space = kms_space
      end
    end
  end
end
