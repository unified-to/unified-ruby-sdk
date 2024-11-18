# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class ListLmsInstructorsRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

      field :class_id, T.nilable(::String), { 'query_param': { 'field_name': 'class_id', 'style': 'form', 'explode': true } }

      field :company_id, T.nilable(::String), { 'query_param': { 'field_name': 'company_id', 'style': 'form', 'explode': true } }

      field :course_id, T.nilable(::String), { 'query_param': { 'field_name': 'course_id', 'style': 'form', 'explode': true } }
      # Comma-delimited fields to return
      field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }

      field :limit, T.nilable(::Float), { 'query_param': { 'field_name': 'limit', 'style': 'form', 'explode': true } }

      field :location_id, T.nilable(::String), { 'query_param': { 'field_name': 'location_id', 'style': 'form', 'explode': true } }

      field :offset, T.nilable(::Float), { 'query_param': { 'field_name': 'offset', 'style': 'form', 'explode': true } }

      field :order, T.nilable(::String), { 'query_param': { 'field_name': 'order', 'style': 'form', 'explode': true } }
      # Query string to search. eg. email address or name
      field :query, T.nilable(::String), { 'query_param': { 'field_name': 'query', 'style': 'form', 'explode': true } }

      field :session_id, T.nilable(::String), { 'query_param': { 'field_name': 'session_id', 'style': 'form', 'explode': true } }

      field :sort, T.nilable(::String), { 'query_param': { 'field_name': 'sort', 'style': 'form', 'explode': true } }
      # Return only results whose updated date is equal or greater to this value
      field :updated_gte, T.nilable(::DateTime), { 'query_param': { 'field_name': 'updated_gte', 'style': 'form', 'explode': true } }


      sig { params(connection_id: ::String, class_id: T.nilable(::String), company_id: T.nilable(::String), course_id: T.nilable(::String), fields_: T.nilable(T::Array[::String]), limit: T.nilable(::Float), location_id: T.nilable(::String), offset: T.nilable(::Float), order: T.nilable(::String), query: T.nilable(::String), session_id: T.nilable(::String), sort: T.nilable(::String), updated_gte: T.nilable(::DateTime)).void }
      def initialize(connection_id: nil, class_id: nil, company_id: nil, course_id: nil, fields_: nil, limit: nil, location_id: nil, offset: nil, order: nil, query: nil, session_id: nil, sort: nil, updated_gte: nil)
        @connection_id = connection_id
        @class_id = class_id
        @company_id = company_id
        @course_id = course_id
        @fields_ = fields_
        @limit = limit
        @location_id = location_id
        @offset = offset
        @order = order
        @query = query
        @session_id = session_id
        @sort = sort
        @updated_gte = updated_gte
      end
    end
  end
end
