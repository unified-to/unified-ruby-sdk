# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/atscandidate'

module UnifiedRubySDK
  module Operations

    class CreateAtsCandidateRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

      field :ats_candidate, T.nilable(Shared::AtsCandidate), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: String, ats_candidate: T.nilable(Shared::AtsCandidate)).void }
      def initialize(connection_id: nil, ats_candidate: nil)
        @connection_id = connection_id
        @ats_candidate = ats_candidate
      end
    end


    class CreateAtsCandidateResponse < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Successful
      field :ats_candidate, T.nilable(Shared::AtsCandidate)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, ats_candidate: T.nilable(Shared::AtsCandidate)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, ats_candidate: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @ats_candidate = ats_candidate
      end
    end
  end
end
