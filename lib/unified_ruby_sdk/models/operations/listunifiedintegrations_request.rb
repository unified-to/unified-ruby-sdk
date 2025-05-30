# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Operations
    

      class ListUnifiedIntegrationsRequest
        extend T::Sig
        include Crystalline::MetadataFields

        # Filter the results for only the workspace's active integrations
        field :active, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'active', 'style': 'form', 'explode': true } }
        # Filter the results on these categories
        field :categories, T.nilable(T::Array[Models::Operations::ListUnifiedIntegrationsQueryParamCategories]), { 'query_param': { 'field_name': 'categories', 'style': 'form', 'explode': true } }

        field :env, T.nilable(::String), { 'query_param': { 'field_name': 'env', 'style': 'form', 'explode': true } }

        field :limit, T.nilable(::Float), { 'query_param': { 'field_name': 'limit', 'style': 'form', 'explode': true } }

        field :offset, T.nilable(::Float), { 'query_param': { 'field_name': 'offset', 'style': 'form', 'explode': true } }

        field :summary, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'summary', 'style': 'form', 'explode': true } }
        # Filter the results for only this integration type
        field :type, T.nilable(::String), { 'query_param': { 'field_name': 'type', 'style': 'form', 'explode': true } }

        field :updated_gte, T.nilable(::String), { 'query_param': { 'field_name': 'updated_gte', 'style': 'form', 'explode': true } }


        sig { params(active: T.nilable(T::Boolean), categories: T.nilable(T::Array[Models::Operations::ListUnifiedIntegrationsQueryParamCategories]), env: T.nilable(::String), limit: T.nilable(::Float), offset: T.nilable(::Float), summary: T.nilable(T::Boolean), type: T.nilable(::String), updated_gte: T.nilable(::String)).void }
        def initialize(active: nil, categories: nil, env: nil, limit: nil, offset: nil, summary: nil, type: nil, updated_gte: nil)
          @active = active
          @categories = categories
          @env = env
          @limit = limit
          @offset = offset
          @summary = summary
          @type = type
          @updated_gte = updated_gte
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @active == other.active
          return false unless @categories == other.categories
          return false unless @env == other.env
          return false unless @limit == other.limit
          return false unless @offset == other.offset
          return false unless @summary == other.summary
          return false unless @type == other.type
          return false unless @updated_gte == other.updated_gte
          true
        end
      end
    end
  end
end
