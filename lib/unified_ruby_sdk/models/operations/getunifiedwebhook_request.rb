# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class GetUnifiedWebhookRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # ID of the Webhook
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }


      sig { params(id: ::String).void }
      def initialize(id: nil)
        @id = id
      end
    end
  end
end
