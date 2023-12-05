# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/atsjob'

module UnifiedRubySDK
  module Operations

    class PatchAtsJobRequest < UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Job
      field :id, String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :ats_job, T.nilable(Shared::AtsJob), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: String, id: String, ats_job: T.nilable(Shared::AtsJob)).void }
      def initialize(connection_id: nil, id: nil, ats_job: nil)
        @connection_id = connection_id
        @id = id
        @ats_job = ats_job
      end
    end


    class PatchAtsJobResponse < UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Successful
      field :ats_job, T.nilable(Shared::AtsJob)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, ats_job: T.nilable(Shared::AtsJob)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, ats_job: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @ats_job = ats_job
      end
    end
  end
end
