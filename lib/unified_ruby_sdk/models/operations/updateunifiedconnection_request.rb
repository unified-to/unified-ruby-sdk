# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Operations
    

      class UpdateUnifiedConnectionRequest
        extend T::Sig
        include Crystalline::MetadataFields

        # A connection represents a specific authentication of an integration.
        field :connection, Models::Shared::Connection, { 'request': { 'media_type': 'application/json' } }
        # ID of the Connection
        field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }


        sig { params(connection: Models::Shared::Connection, id: ::String).void }
        def initialize(connection: nil, id: nil)
          @connection = connection
          @id = id
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @connection == other.connection
          return false unless @id == other.id
          true
        end
      end
    end
  end
end
