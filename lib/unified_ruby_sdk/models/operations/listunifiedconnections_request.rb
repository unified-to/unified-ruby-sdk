# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class ListUnifiedConnectionsRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # Filter the results on these categories
      field :categories, T.nilable(T::Array[::UnifiedRubySDK::Operations::Categories]), { 'query_param': { 'field_name': 'categories', 'style': 'form', 'explode': true } }

      field :env, T.nilable(::String), { 'query_param': { 'field_name': 'env', 'style': 'form', 'explode': true } }
      # Filter the results to only those integrations for your user referenced by this value
      field :external_xref, T.nilable(::String), { 'query_param': { 'field_name': 'external_xref', 'style': 'form', 'explode': true } }

      field :limit, T.nilable(::Float), { 'query_param': { 'field_name': 'limit', 'style': 'form', 'explode': true } }

      field :offset, T.nilable(::Float), { 'query_param': { 'field_name': 'offset', 'style': 'form', 'explode': true } }

      field :order, T.nilable(::String), { 'query_param': { 'field_name': 'order', 'style': 'form', 'explode': true } }

      field :sort, T.nilable(::String), { 'query_param': { 'field_name': 'sort', 'style': 'form', 'explode': true } }
      # Return only results whose updated date is equal or greater to this value
      field :updated_gte, T.nilable(::DateTime), { 'query_param': { 'field_name': 'updated_gte', 'style': 'form', 'explode': true } }


      sig { params(categories: T.nilable(T::Array[::UnifiedRubySDK::Operations::Categories]), env: T.nilable(::String), external_xref: T.nilable(::String), limit: T.nilable(::Float), offset: T.nilable(::Float), order: T.nilable(::String), sort: T.nilable(::String), updated_gte: T.nilable(::DateTime)).void }
      def initialize(categories: nil, env: nil, external_xref: nil, limit: nil, offset: nil, order: nil, sort: nil, updated_gte: nil)
        @categories = categories
        @env = env
        @external_xref = external_xref
        @limit = limit
        @offset = offset
        @order = order
        @sort = sort
        @updated_gte = updated_gte
      end
    end
  end
end
