# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class UpdatePaymentSubscriptionRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Subscription
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # Comma-delimited fields to return
      field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }

      field :payment_subscription, T.nilable(::UnifiedRubySDK::Shared::PaymentSubscription), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String]), payment_subscription: T.nilable(::UnifiedRubySDK::Shared::PaymentSubscription)).void }
      def initialize(connection_id: nil, id: nil, fields_: nil, payment_subscription: nil)
        @connection_id = connection_id
        @id = id
        @fields_ = fields_
        @payment_subscription = payment_subscription
      end
    end
  end
end
