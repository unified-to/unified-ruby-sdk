# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class UpdateCommerceCollectionRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Collection
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # A collection of items/products/services
      field :commerce_collection, T.nilable(::UnifiedRubySDK::Shared::CommerceCollection), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, id: ::String, commerce_collection: T.nilable(::UnifiedRubySDK::Shared::CommerceCollection)).void }
      def initialize(connection_id: nil, id: nil, commerce_collection: nil)
        @connection_id = connection_id
        @id = id
        @commerce_collection = commerce_collection
      end
    end
  end
end
