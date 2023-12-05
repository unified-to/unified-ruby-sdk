# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/uccontact'

module OpenApiSDK
  module Operations

    class PatchUcContactRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Contact
      field :id, String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # A contact represents a person that optionally is associated with a call
      field :uc_contact, T.nilable(Shared::UcContact), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: String, id: String, uc_contact: T.nilable(Shared::UcContact)).void }
      def initialize(connection_id: nil, id: nil, uc_contact: nil)
        @connection_id = connection_id
        @id = id
        @uc_contact = uc_contact
      end
    end


    class PatchUcContactResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Successful
      field :uc_contact, T.nilable(Shared::UcContact)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, uc_contact: T.nilable(Shared::UcContact)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, uc_contact: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @uc_contact = uc_contact
      end
    end
  end
end
