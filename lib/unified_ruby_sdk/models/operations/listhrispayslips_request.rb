# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class ListHrisPayslipsRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # Comma-delimited fields to return
      field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }

      field :limit, T.nilable(::Float), { 'query_param': { 'field_name': 'limit', 'style': 'form', 'explode': true } }

      field :offset, T.nilable(::Float), { 'query_param': { 'field_name': 'offset', 'style': 'form', 'explode': true } }
      # Query string to search. eg. email address or name
      field :query, T.nilable(::String), { 'query_param': { 'field_name': 'query', 'style': 'form', 'explode': true } }
      # Return only results whose updated date is equal or greater to this value
      field :updated_gte, T.nilable(::DateTime), { 'query_param': { 'field_name': 'updated_gte', 'style': 'form', 'explode': true } }

      field :user_id, T.nilable(::String), { 'query_param': { 'field_name': 'user_id', 'style': 'form', 'explode': true } }


      sig { params(connection_id: ::String, fields_: T.nilable(T::Array[::String]), limit: T.nilable(::Float), offset: T.nilable(::Float), query: T.nilable(::String), updated_gte: T.nilable(::DateTime), user_id: T.nilable(::String)).void }
      def initialize(connection_id: nil, fields_: nil, limit: nil, offset: nil, query: nil, updated_gte: nil, user_id: nil)
        @connection_id = connection_id
        @fields_ = fields_
        @limit = limit
        @offset = offset
        @query = query
        @updated_gte = updated_gte
        @user_id = user_id
      end
    end
  end
end
