# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreateCommerceItemRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

      field :commerce_item, T.nilable(::UnifiedRubySDK::Shared::CommerceItem), { 'request': { 'media_type': 'application/json' } }
      # Comma-delimited fields to return
      field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }


      sig { params(connection_id: ::String, commerce_item: T.nilable(::UnifiedRubySDK::Shared::CommerceItem), fields_: T.nilable(T::Array[::String])).void }
      def initialize(connection_id: nil, commerce_item: nil, fields_: nil)
        @connection_id = connection_id
        @commerce_item = commerce_item
        @fields_ = fields_
      end
    end
  end
end
