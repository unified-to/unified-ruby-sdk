# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class ListUnifiedIssuesRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :limit, T.nilable(::Float), { 'query_param': { 'field_name': 'limit', 'style': 'form', 'explode': true } }

      field :offset, T.nilable(::Float), { 'query_param': { 'field_name': 'offset', 'style': 'form', 'explode': true } }
      # Return only results whose updated date is equal or greater to this value
      field :updated_gte, T.nilable(::DateTime), { 'query_param': { 'field_name': 'updated_gte', 'style': 'form', 'explode': true } }


      sig { params(limit: T.nilable(::Float), offset: T.nilable(::Float), updated_gte: T.nilable(::DateTime)).void }
      def initialize(limit: nil, offset: nil, updated_gte: nil)
        @limit = limit
        @offset = offset
        @updated_gte = updated_gte
      end
    end
  end
end
