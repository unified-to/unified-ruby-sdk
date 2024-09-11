# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class UpdateMessagingMessageRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Message
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # Comma-delimited fields to return
      field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }

      field :messaging_message, T.nilable(::UnifiedRubySDK::Shared::MessagingMessage), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String]), messaging_message: T.nilable(::UnifiedRubySDK::Shared::MessagingMessage)).void }
      def initialize(connection_id: nil, id: nil, fields_: nil, messaging_message: nil)
        @connection_id = connection_id
        @id = id
        @fields_ = fields_
        @messaging_message = messaging_message
      end
    end
  end
end
