# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreateUnifiedWebhookRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # A webhook is used to POST new/updated information to your server.
      field :webhook, ::UnifiedRubySDK::Shared::Webhook, { 'request': { 'media_type': 'application/json' } }
      # When set, all of the existing data will sent back to your server.
      field :include_all, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'include_all', 'style': 'form', 'explode': true } }


      sig { params(webhook: ::UnifiedRubySDK::Shared::Webhook, include_all: T.nilable(T::Boolean)).void }
      def initialize(webhook: nil, include_all: nil)
        @webhook = webhook
        @include_all = include_all
      end
    end
  end
end
