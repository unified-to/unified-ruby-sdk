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


      sig { params(connection_id: ::String, commerce_item: T.nilable(::UnifiedRubySDK::Shared::CommerceItem)).void }
      def initialize(connection_id: nil, commerce_item: nil)
        @connection_id = connection_id
        @commerce_item = commerce_item
      end
    end
  end
end
