# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Operations
    

      class ListPassthroughsRequest
        extend T::Sig
        include Crystalline::MetadataFields

        # ID of the connection
        field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

        field :path, ::String, { 'path_param': { 'field_name': 'path', 'style': 'simple', 'explode': false } }

        field :query, T.nilable(T::Hash[Symbol, ::Object]), { 'query_param': { 'field_name': 'query', 'style': 'form', 'explode': true } }


        sig { params(connection_id: ::String, path: ::String, query: T.nilable(T::Hash[Symbol, ::Object])).void }
        def initialize(connection_id: nil, path: nil, query: nil)
          @connection_id = connection_id
          @path = path
          @query = query
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @connection_id == other.connection_id
          return false unless @path == other.path
          return false unless @query == other.query
          true
        end
      end
    end
  end
end
