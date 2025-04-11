# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Operations
    

      class ListCrmEventsRequest
        extend T::Sig
        include Crystalline::MetadataFields

        # ID of the connection
        field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

        field :company_id, T.nilable(::String), { 'query_param': { 'field_name': 'company_id', 'style': 'form', 'explode': true } }

        field :contact_id, T.nilable(::String), { 'query_param': { 'field_name': 'contact_id', 'style': 'form', 'explode': true } }

        field :deal_id, T.nilable(::String), { 'query_param': { 'field_name': 'deal_id', 'style': 'form', 'explode': true } }
        # Comma-delimited fields to return
        field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }

        field :lead_id, T.nilable(::String), { 'query_param': { 'field_name': 'lead_id', 'style': 'form', 'explode': true } }

        field :limit, T.nilable(::Float), { 'query_param': { 'field_name': 'limit', 'style': 'form', 'explode': true } }

        field :offset, T.nilable(::Float), { 'query_param': { 'field_name': 'offset', 'style': 'form', 'explode': true } }

        field :order, T.nilable(::String), { 'query_param': { 'field_name': 'order', 'style': 'form', 'explode': true } }
        # Query string to search. eg. email address or name
        field :query, T.nilable(::String), { 'query_param': { 'field_name': 'query', 'style': 'form', 'explode': true } }

        field :sort, T.nilable(::String), { 'query_param': { 'field_name': 'sort', 'style': 'form', 'explode': true } }

        field :type, T.nilable(::String), { 'query_param': { 'field_name': 'type', 'style': 'form', 'explode': true } }
        # Return only results whose updated date is equal or greater to this value
        field :updated_gte, T.nilable(::DateTime), { 'query_param': { 'field_name': 'updated_gte', 'style': 'form', 'explode': true } }

        field :user_id, T.nilable(::String), { 'query_param': { 'field_name': 'user_id', 'style': 'form', 'explode': true } }


        sig { params(connection_id: ::String, company_id: T.nilable(::String), contact_id: T.nilable(::String), deal_id: T.nilable(::String), fields_: T.nilable(T::Array[::String]), lead_id: T.nilable(::String), limit: T.nilable(::Float), offset: T.nilable(::Float), order: T.nilable(::String), query: T.nilable(::String), sort: T.nilable(::String), type: T.nilable(::String), updated_gte: T.nilable(::DateTime), user_id: T.nilable(::String)).void }
        def initialize(connection_id: nil, company_id: nil, contact_id: nil, deal_id: nil, fields_: nil, lead_id: nil, limit: nil, offset: nil, order: nil, query: nil, sort: nil, type: nil, updated_gte: nil, user_id: nil)
          @connection_id = connection_id
          @company_id = company_id
          @contact_id = contact_id
          @deal_id = deal_id
          @fields_ = fields_
          @lead_id = lead_id
          @limit = limit
          @offset = offset
          @order = order
          @query = query
          @sort = sort
          @type = type
          @updated_gte = updated_gte
          @user_id = user_id
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @connection_id == other.connection_id
          return false unless @company_id == other.company_id
          return false unless @contact_id == other.contact_id
          return false unless @deal_id == other.deal_id
          return false unless @fields_ == other.fields_
          return false unless @lead_id == other.lead_id
          return false unless @limit == other.limit
          return false unless @offset == other.offset
          return false unless @order == other.order
          return false unless @query == other.query
          return false unless @sort == other.sort
          return false unless @type == other.type
          return false unless @updated_gte == other.updated_gte
          return false unless @user_id == other.user_id
          true
        end
      end
    end
  end
end
