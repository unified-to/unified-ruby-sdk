# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreateCommerceInventoryRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

      field :commerce_inventory, T.nilable(::UnifiedRubySDK::Shared::CommerceInventory), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, commerce_inventory: T.nilable(::UnifiedRubySDK::Shared::CommerceInventory)).void }
      def initialize(connection_id: nil, commerce_inventory: nil)
        @connection_id = connection_id
        @commerce_inventory = commerce_inventory
      end
    end
  end
end
