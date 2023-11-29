# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/enrichperson'

module OpenApiSDK
  module Operations

    class ListEnrichPeopleRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # The email of the person to search
      field :email, T.nilable(String), { 'query_param': { 'field_name': 'email', 'style': 'form', 'explode': true } }
      # The LinkedIn URL of the person to search
      field :linkedin_url, T.nilable(String), { 'query_param': { 'field_name': 'linkedin_url', 'style': 'form', 'explode': true } }
      # The name of the person to search
      field :name, T.nilable(String), { 'query_param': { 'field_name': 'name', 'style': 'form', 'explode': true } }
      # The twitter handle of the person to search
      field :twitter, T.nilable(String), { 'query_param': { 'field_name': 'twitter', 'style': 'form', 'explode': true } }


      sig { params(connection_id: String, email: T.nilable(String), linkedin_url: T.nilable(String), name: T.nilable(String), twitter: T.nilable(String)).void }
      def initialize(connection_id: nil, email: nil, linkedin_url: nil, name: nil, twitter: nil)
        @connection_id = connection_id
        @email = email
        @linkedin_url = linkedin_url
        @name = name
        @twitter = twitter
      end
    end


    class ListEnrichPeopleResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Successful
      field :enrich_person, T.nilable(Shared::EnrichPerson)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, enrich_person: T.nilable(Shared::EnrichPerson)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, enrich_person: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @enrich_person = enrich_person
      end
    end
  end
end
