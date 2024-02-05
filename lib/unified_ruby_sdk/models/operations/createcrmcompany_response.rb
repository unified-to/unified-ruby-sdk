# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreateCrmCompanyResponse < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Successful
      field :crm_company, T.nilable(::UnifiedRubySDK::Shared::CrmCompany)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, crm_company: T.nilable(::UnifiedRubySDK::Shared::CrmCompany)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, crm_company: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @crm_company = crm_company
      end
    end
  end
end
