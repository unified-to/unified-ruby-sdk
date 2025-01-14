# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreateScimUsersRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

      field :count, T.nilable(::Float), { 'query_param': { 'field_name': 'count', 'style': 'form', 'explode': true } }

      field :filter, T.nilable(::String), { 'query_param': { 'field_name': 'filter', 'style': 'form', 'explode': true } }

      field :scim_user, T.nilable(::UnifiedRubySDK::Shared::ScimUser), { 'request': { 'media_type': 'application/json' } }

      field :sort_by, T.nilable(::String), { 'query_param': { 'field_name': 'sortBy', 'style': 'form', 'explode': true } }

      field :sort_order, T.nilable(::String), { 'query_param': { 'field_name': 'sortOrder', 'style': 'form', 'explode': true } }

      field :start_index, T.nilable(::Float), { 'query_param': { 'field_name': 'startIndex', 'style': 'form', 'explode': true } }


      sig { params(connection_id: ::String, count: T.nilable(::Float), filter: T.nilable(::String), scim_user: T.nilable(::UnifiedRubySDK::Shared::ScimUser), sort_by: T.nilable(::String), sort_order: T.nilable(::String), start_index: T.nilable(::Float)).void }
      def initialize(connection_id: nil, count: nil, filter: nil, scim_user: nil, sort_by: nil, sort_order: nil, start_index: nil)
        @connection_id = connection_id
        @count = count
        @filter = filter
        @scim_user = scim_user
        @sort_by = sort_by
        @sort_order = sort_order
        @start_index = start_index
      end
    end
  end
end
