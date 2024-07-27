# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class ListUnifiedIntegrationWorkspacesRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # The ID of the workspace
      field :workspace_id, ::String, { 'path_param': { 'field_name': 'workspace_id', 'style': 'simple', 'explode': false } }
      # Filter the results for only the workspace's active integrations
      field :active, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'active', 'style': 'form', 'explode': true } }
      # Filter the results on these categories
      field :categories, T.nilable(T::Array[::UnifiedRubySDK::Operations::QueryParamCategories]), { 'query_param': { 'field_name': 'categories', 'style': 'form', 'explode': true } }

      field :env, T.nilable(::String), { 'query_param': { 'field_name': 'env', 'style': 'form', 'explode': true } }

      field :limit, T.nilable(::Float), { 'query_param': { 'field_name': 'limit', 'style': 'form', 'explode': true } }

      field :offset, T.nilable(::Float), { 'query_param': { 'field_name': 'offset', 'style': 'form', 'explode': true } }

      field :summary, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'summary', 'style': 'form', 'explode': true } }

      field :updated_gte, T.nilable(::String), { 'query_param': { 'field_name': 'updated_gte', 'style': 'form', 'explode': true } }


      sig { params(workspace_id: ::String, active: T.nilable(T::Boolean), categories: T.nilable(T::Array[::UnifiedRubySDK::Operations::QueryParamCategories]), env: T.nilable(::String), limit: T.nilable(::Float), offset: T.nilable(::Float), summary: T.nilable(T::Boolean), updated_gte: T.nilable(::String)).void }
      def initialize(workspace_id: nil, active: nil, categories: nil, env: nil, limit: nil, offset: nil, summary: nil, updated_gte: nil)
        @workspace_id = workspace_id
        @active = active
        @categories = categories
        @env = env
        @limit = limit
        @offset = offset
        @summary = summary
        @updated_gte = updated_gte
      end
    end
  end
end
