# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class PatchPaymentLinkRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Link
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :payment_link, T.nilable(::UnifiedRubySDK::Shared::PaymentLink), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, id: ::String, payment_link: T.nilable(::UnifiedRubySDK::Shared::PaymentLink)).void }
      def initialize(connection_id: nil, id: nil, payment_link: nil)
        @connection_id = connection_id
        @id = id
        @payment_link = payment_link
      end
    end
  end
end