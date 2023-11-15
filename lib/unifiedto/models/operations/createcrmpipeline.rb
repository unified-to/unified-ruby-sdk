# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/crmpipeline'

module OpenApiSDK
  module Operations

    class CreateCrmPipelineRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

      field :crm_pipeline, T.nilable(Shared::CrmPipeline), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: String, crm_pipeline: T.nilable(Shared::CrmPipeline)).void }
      def initialize(connection_id: nil, crm_pipeline: nil)
        @connection_id = connection_id
        @crm_pipeline = crm_pipeline
      end
    end


    class CreateCrmPipelineResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Successful
      field :crm_pipeline, T.nilable(Shared::CrmPipeline)
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, crm_pipeline: T.nilable(Shared::CrmPipeline), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, crm_pipeline: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @crm_pipeline = crm_pipeline
        @raw_response = raw_response
      end
    end
  end
end
