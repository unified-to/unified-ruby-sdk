# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/atsdocument'

module UnifiedRubySDK
  module Operations

    class CreateAtsDocumentRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

      field :ats_document, T.nilable(Shared::AtsDocument), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: String, ats_document: T.nilable(Shared::AtsDocument)).void }
      def initialize(connection_id: nil, ats_document: nil)
        @connection_id = connection_id
        @ats_document = ats_document
      end
    end


    class CreateAtsDocumentResponse < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Successful
      field :ats_document, T.nilable(Shared::AtsDocument)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, ats_document: T.nilable(Shared::AtsDocument)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, ats_document: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @ats_document = ats_document
      end
    end
  end
end
