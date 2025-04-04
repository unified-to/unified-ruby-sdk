# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreateCommerceCollectionRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # A collection of items/products/services
      field :commerce_collection, ::UnifiedRubySDK::Shared::CommerceCollection, { 'request': { 'media_type': 'application/json' } }
      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # Comma-delimited fields to return
      field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }


      sig { params(commerce_collection: ::UnifiedRubySDK::Shared::CommerceCollection, connection_id: ::String, fields_: T.nilable(T::Array[::String])).void }
      def initialize(commerce_collection: nil, connection_id: nil, fields_: nil)
        @commerce_collection = commerce_collection
        @connection_id = connection_id
        @fields_ = fields_
      end
    end
  end
end
