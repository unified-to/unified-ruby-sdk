# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreateUnifiedWebhookRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # When set, all of the existing data will sent back to your server.
      field :include_all, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'include_all', 'style': 'form', 'explode': true } }
      # A webhook is used to POST new/updated information to your server.
      field :webhook, T.nilable(::UnifiedRubySDK::Shared::Webhook), { 'request': { 'media_type': 'application/json' } }


      sig { params(include_all: T.nilable(T::Boolean), webhook: T.nilable(::UnifiedRubySDK::Shared::Webhook)).void }
      def initialize(include_all: nil, webhook: nil)
        @include_all = include_all
        @webhook = webhook
      end
    end
  end
end
