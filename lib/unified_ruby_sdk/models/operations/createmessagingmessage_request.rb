# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreateMessagingMessageRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

      field :messaging_message, T.nilable(::UnifiedRubySDK::Shared::MessagingMessage), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, messaging_message: T.nilable(::UnifiedRubySDK::Shared::MessagingMessage)).void }
      def initialize(connection_id: nil, messaging_message: nil)
        @connection_id = connection_id
        @messaging_message = messaging_message
      end
    end
  end
end
