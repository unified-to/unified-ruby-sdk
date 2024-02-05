# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class ListEnrichCompaniesResponse < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Successful
      field :enrich_company, T.nilable(::UnifiedRubySDK::Shared::EnrichCompany)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, enrich_company: T.nilable(::UnifiedRubySDK::Shared::EnrichCompany)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, enrich_company: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @enrich_company = enrich_company
      end
    end
  end
end
