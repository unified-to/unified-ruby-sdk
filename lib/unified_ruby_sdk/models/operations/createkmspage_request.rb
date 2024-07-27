# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreateKmsPageRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

      field :kms_page, T.nilable(::UnifiedRubySDK::Shared::KmsPage), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, kms_page: T.nilable(::UnifiedRubySDK::Shared::KmsPage)).void }
      def initialize(connection_id: nil, kms_page: nil)
        @connection_id = connection_id
        @kms_page = kms_page
      end
    end
  end
end
