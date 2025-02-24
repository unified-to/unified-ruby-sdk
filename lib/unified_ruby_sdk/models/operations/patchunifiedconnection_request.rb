# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class PatchUnifiedConnectionRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # A connection represents a specific authentication of an integration.
      field :connection, ::UnifiedRubySDK::Shared::Connection, { 'request': { 'media_type': 'application/json' } }
      # ID of the Connection
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }


      sig { params(connection: ::UnifiedRubySDK::Shared::Connection, id: ::String).void }
      def initialize(connection: nil, id: nil)
        @connection = connection
        @id = id
      end
    end
  end
end
