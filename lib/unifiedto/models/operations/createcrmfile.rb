# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/crmfile'

module UnifiedRubySDK
  module Operations

    class CreateCrmFileRequest < UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

      field :crm_file, T.nilable(Shared::CrmFile), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: String, crm_file: T.nilable(Shared::CrmFile)).void }
      def initialize(connection_id: nil, crm_file: nil)
        @connection_id = connection_id
        @crm_file = crm_file
      end
    end


    class CreateCrmFileResponse < UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Successful
      field :crm_file, T.nilable(Shared::CrmFile)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, crm_file: T.nilable(Shared::CrmFile)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, crm_file: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @crm_file = crm_file
      end
    end
  end
end
