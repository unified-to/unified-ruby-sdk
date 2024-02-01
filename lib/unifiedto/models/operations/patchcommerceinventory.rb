# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/commerceinventory'

module UnifiedRubySDK
  module Operations

    class PatchCommerceInventoryRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Inventory
      field :id, String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :commerce_inventory, T.nilable(Shared::CommerceInventory), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: String, id: String, commerce_inventory: T.nilable(Shared::CommerceInventory)).void }
      def initialize(connection_id: nil, id: nil, commerce_inventory: nil)
        @connection_id = connection_id
        @id = id
        @commerce_inventory = commerce_inventory
      end
    end


    class PatchCommerceInventoryResponse < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Successful
      field :commerce_inventory, T.nilable(Shared::CommerceInventory)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, commerce_inventory: T.nilable(Shared::CommerceInventory)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, commerce_inventory: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @commerce_inventory = commerce_inventory
      end
    end
  end
end
