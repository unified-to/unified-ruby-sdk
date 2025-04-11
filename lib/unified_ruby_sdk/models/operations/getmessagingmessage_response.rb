# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Operations
    

      class GetMessagingMessageResponse
        extend T::Sig
        include Crystalline::MetadataFields

        # HTTP response content type for this operation
        field :content_type, ::String
        # Raw HTTP response; suitable for custom response parsing
        field :raw_response, ::Faraday::Response
        # HTTP response status code for this operation
        field :status_code, ::Integer
        # Successful
        field :messaging_message, T.nilable(Models::Shared::MessagingMessage)


        sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, messaging_message: T.nilable(Models::Shared::MessagingMessage)).void }
        def initialize(content_type: nil, raw_response: nil, status_code: nil, messaging_message: nil)
          @content_type = content_type
          @raw_response = raw_response
          @status_code = status_code
          @messaging_message = messaging_message
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @content_type == other.content_type
          return false unless @raw_response == other.raw_response
          return false unless @status_code == other.status_code
          return false unless @messaging_message == other.messaging_message
          true
        end
      end
    end
  end
end
