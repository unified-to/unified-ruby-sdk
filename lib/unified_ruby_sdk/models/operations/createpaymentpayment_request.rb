# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreatePaymentPaymentRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

      field :payment_payment, ::UnifiedRubySDK::Shared::PaymentPayment, { 'request': { 'media_type': 'application/json' } }
      # Comma-delimited fields to return
      field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }


      sig { params(connection_id: ::String, payment_payment: ::UnifiedRubySDK::Shared::PaymentPayment, fields_: T.nilable(T::Array[::String])).void }
      def initialize(connection_id: nil, payment_payment: nil, fields_: nil)
        @connection_id = connection_id
        @payment_payment = payment_payment
        @fields_ = fields_
      end
    end
  end
end
