# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreateAccountingContactResponse < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Successful
      field :accounting_contact, T.nilable(::UnifiedRubySDK::Shared::AccountingContact)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, accounting_contact: T.nilable(::UnifiedRubySDK::Shared::AccountingContact)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, accounting_contact: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @accounting_contact = accounting_contact
      end
    end
  end
end
