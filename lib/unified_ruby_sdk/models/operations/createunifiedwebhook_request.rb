# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Operations
    

      class CreateUnifiedWebhookRequest
        extend T::Sig
        include Crystalline::MetadataFields

        # A webhook is used to POST new/updated information to your server.
        field :webhook, Models::Shared::Webhook, { 'request': { 'media_type': 'application/json' } }
        # When set, all of the existing data will sent back to your server.
        field :include_all, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'include_all', 'style': 'form', 'explode': true } }


        sig { params(webhook: Models::Shared::Webhook, include_all: T.nilable(T::Boolean)).void }
        def initialize(webhook: nil, include_all: nil)
          @webhook = webhook
          @include_all = include_all
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @webhook == other.webhook
          return false unless @include_all == other.include_all
          true
        end
      end
    end
  end
end
