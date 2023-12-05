# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/integration'

module UnifiedRubySDK
  module Operations

    class GetUnifiedIntegrationRequest < UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # Type of the supported integration
      field :integration_type, String, { 'path_param': { 'field_name': 'integration_type', 'style': 'simple', 'explode': false } }


      sig { params(integration_type: String).void }
      def initialize(integration_type: nil)
        @integration_type = integration_type
      end
    end


    class GetUnifiedIntegrationResponse < UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Successful
      field :integration, T.nilable(Shared::Integration)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, integration: T.nilable(Shared::Integration)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, integration: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @integration = integration
      end
    end
  end
end
