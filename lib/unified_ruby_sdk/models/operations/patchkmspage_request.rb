# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class PatchKmsPageRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Page
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :kms_page, T.nilable(::UnifiedRubySDK::Shared::KmsPage), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, id: ::String, kms_page: T.nilable(::UnifiedRubySDK::Shared::KmsPage)).void }
      def initialize(connection_id: nil, id: nil, kms_page: nil)
        @connection_id = connection_id
        @id = id
        @kms_page = kms_page
      end
    end
  end
end