# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class UpdatePaymentPaymentRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Payment
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # Comma-delimited fields to return
      field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }

      field :payment_payment, T.nilable(::UnifiedRubySDK::Shared::PaymentPayment), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String]), payment_payment: T.nilable(::UnifiedRubySDK::Shared::PaymentPayment)).void }
      def initialize(connection_id: nil, id: nil, fields_: nil, payment_payment: nil)
        @connection_id = connection_id
        @id = id
        @fields_ = fields_
        @payment_payment = payment_payment
      end
    end
  end
end
