# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class GetAtsCompanyResponse < ::Crystalline::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Successful
      field :ats_company, T.nilable(::UnifiedRubySDK::Shared::AtsCompany)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, ats_company: T.nilable(::UnifiedRubySDK::Shared::AtsCompany)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, ats_company: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @ats_company = ats_company
      end
    end
  end
end
