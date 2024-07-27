# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class GetPaymentRefundResponse < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Successful
      field :payment_refund, T.nilable(::UnifiedRubySDK::Shared::PaymentRefund)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, payment_refund: T.nilable(::UnifiedRubySDK::Shared::PaymentRefund)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, payment_refund: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @payment_refund = payment_refund
      end
    end
  end
end
