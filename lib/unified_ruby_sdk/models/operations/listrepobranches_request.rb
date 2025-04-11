# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Operations
    

      class ListRepoBranchesRequest
        extend T::Sig
        include Crystalline::MetadataFields

        # ID of the connection
        field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
        # Comma-delimited fields to return
        field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }

        field :limit, T.nilable(::Float), { 'query_param': { 'field_name': 'limit', 'style': 'form', 'explode': true } }

        field :offset, T.nilable(::Float), { 'query_param': { 'field_name': 'offset', 'style': 'form', 'explode': true } }

        field :order, T.nilable(::String), { 'query_param': { 'field_name': 'order', 'style': 'form', 'explode': true } }
        # Query string to search. eg. email address or name
        field :query, T.nilable(::String), { 'query_param': { 'field_name': 'query', 'style': 'form', 'explode': true } }

        field :repo_id, T.nilable(::String), { 'query_param': { 'field_name': 'repo_id', 'style': 'form', 'explode': true } }

        field :sort, T.nilable(::String), { 'query_param': { 'field_name': 'sort', 'style': 'form', 'explode': true } }
        # Return only results whose updated date is equal or greater to this value
        field :updated_gte, T.nilable(::DateTime), { 'query_param': { 'field_name': 'updated_gte', 'style': 'form', 'explode': true } }


        sig { params(connection_id: ::String, fields_: T.nilable(T::Array[::String]), limit: T.nilable(::Float), offset: T.nilable(::Float), order: T.nilable(::String), query: T.nilable(::String), repo_id: T.nilable(::String), sort: T.nilable(::String), updated_gte: T.nilable(::DateTime)).void }
        def initialize(connection_id: nil, fields_: nil, limit: nil, offset: nil, order: nil, query: nil, repo_id: nil, sort: nil, updated_gte: nil)
          @connection_id = connection_id
          @fields_ = fields_
          @limit = limit
          @offset = offset
          @order = order
          @query = query
          @repo_id = repo_id
          @sort = sort
          @updated_gte = updated_gte
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @connection_id == other.connection_id
          return false unless @fields_ == other.fields_
          return false unless @limit == other.limit
          return false unless @offset == other.offset
          return false unless @order == other.order
          return false unless @query == other.query
          return false unless @repo_id == other.repo_id
          return false unless @sort == other.sort
          return false unless @updated_gte == other.updated_gte
          true
        end
      end
    end
  end
end
