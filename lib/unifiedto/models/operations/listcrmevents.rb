# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module UnifiedRubySDK
  module Operations

    class ListCrmEventsRequest < UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # The company ID to filter results
      field :company_id, T.nilable(String), { 'query_param': { 'field_name': 'company_id', 'style': 'form', 'explode': true } }
      # The contact ID to filter results
      field :contact_id, T.nilable(String), { 'query_param': { 'field_name': 'contact_id', 'style': 'form', 'explode': true } }
      # The deal ID to filter results
      field :deal_id, T.nilable(String), { 'query_param': { 'field_name': 'deal_id', 'style': 'form', 'explode': true } }
      # Comma-delimited fields to return
      field :fields, T.nilable(T::Array[String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }

      field :limit, T.nilable(Float), { 'query_param': { 'field_name': 'limit', 'style': 'form', 'explode': true } }

      field :offset, T.nilable(Float), { 'query_param': { 'field_name': 'offset', 'style': 'form', 'explode': true } }

      field :order, T.nilable(String), { 'query_param': { 'field_name': 'order', 'style': 'form', 'explode': true } }
      # Query string to search. eg. email address or name
      field :query, T.nilable(String), { 'query_param': { 'field_name': 'query', 'style': 'form', 'explode': true } }

      field :sort, T.nilable(String), { 'query_param': { 'field_name': 'sort', 'style': 'form', 'explode': true } }

      field :type, T.nilable(String), { 'query_param': { 'field_name': 'type', 'style': 'form', 'explode': true } }
      # Return only results whose updated date is equal or greater to this value
      field :updated_gte, T.nilable(DateTime), { 'query_param': { 'field_name': 'updated_gte', 'style': 'form', 'explode': true } }
      # The user/owner ID to filter results
      field :user_id, T.nilable(String), { 'query_param': { 'field_name': 'user_id', 'style': 'form', 'explode': true } }


      sig { params(connection_id: String, company_id: T.nilable(String), contact_id: T.nilable(String), deal_id: T.nilable(String), fields: T.nilable(T::Array[String]), limit: T.nilable(Float), offset: T.nilable(Float), order: T.nilable(String), query: T.nilable(String), sort: T.nilable(String), type: T.nilable(String), updated_gte: T.nilable(DateTime), user_id: T.nilable(String)).void }
      def initialize(connection_id: nil, company_id: nil, contact_id: nil, deal_id: nil, fields: nil, limit: nil, offset: nil, order: nil, query: nil, sort: nil, type: nil, updated_gte: nil, user_id: nil)
        @connection_id = connection_id
        @company_id = company_id
        @contact_id = contact_id
        @deal_id = deal_id
        @fields = fields
        @limit = limit
        @offset = offset
        @order = order
        @query = query
        @sort = sort
        @type = type
        @updated_gte = updated_gte
        @user_id = user_id
      end
    end


    class ListCrmEventsResponse < UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Successful
      field :crm_events, T.nilable(T::Array[Shared::CrmEvent])


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, crm_events: T.nilable(T::Array[Shared::CrmEvent])).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, crm_events: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @crm_events = crm_events
      end
    end
  end
end
