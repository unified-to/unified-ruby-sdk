# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/atsinterview'

module UnifiedRubySDK
  module Operations

    class CreateAtsInterviewRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

      field :ats_interview, T.nilable(Shared::AtsInterview), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: String, ats_interview: T.nilable(Shared::AtsInterview)).void }
      def initialize(connection_id: nil, ats_interview: nil)
        @connection_id = connection_id
        @ats_interview = ats_interview
      end
    end


    class CreateAtsInterviewResponse < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Successful
      field :ats_interview, T.nilable(Shared::AtsInterview)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, ats_interview: T.nilable(Shared::AtsInterview)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, ats_interview: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @ats_interview = ats_interview
      end
    end
  end
end
