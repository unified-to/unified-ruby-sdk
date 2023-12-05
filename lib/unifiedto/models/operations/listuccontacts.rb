# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations

    class ListUcContactsRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

      field :agent_id, T.nilable(String), { 'query_param': { 'field_name': 'agent_id', 'style': 'form', 'explode': true } }
      # Comma-delimited fields to return
      field :fields, T.nilable(T::Array[String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }

      field :limit, T.nilable(Float), { 'query_param': { 'field_name': 'limit', 'style': 'form', 'explode': true } }

      field :offset, T.nilable(Float), { 'query_param': { 'field_name': 'offset', 'style': 'form', 'explode': true } }

      field :order, T.nilable(String), { 'query_param': { 'field_name': 'order', 'style': 'form', 'explode': true } }
      # Query string to search. eg. email address or name
      field :query, T.nilable(String), { 'query_param': { 'field_name': 'query', 'style': 'form', 'explode': true } }

      field :sort, T.nilable(String), { 'query_param': { 'field_name': 'sort', 'style': 'form', 'explode': true } }
      # Return only results whose updated date is equal or greater to this value
      field :updated_gte, T.nilable(DateTime), { 'query_param': { 'field_name': 'updated_gte', 'style': 'form', 'explode': true } }


      sig { params(connection_id: String, agent_id: T.nilable(String), fields: T.nilable(T::Array[String]), limit: T.nilable(Float), offset: T.nilable(Float), order: T.nilable(String), query: T.nilable(String), sort: T.nilable(String), updated_gte: T.nilable(DateTime)).void }
      def initialize(connection_id: nil, agent_id: nil, fields: nil, limit: nil, offset: nil, order: nil, query: nil, sort: nil, updated_gte: nil)
        @connection_id = connection_id
        @agent_id = agent_id
        @fields = fields
        @limit = limit
        @offset = offset
        @order = order
        @query = query
        @sort = sort
        @updated_gte = updated_gte
      end
    end


    class ListUcContactsResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Successful
      field :uc_contacts, T.nilable(T::Array[Shared::UcContact])


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, uc_contacts: T.nilable(T::Array[Shared::UcContact])).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, uc_contacts: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @uc_contacts = uc_contacts
      end
    end
  end
end