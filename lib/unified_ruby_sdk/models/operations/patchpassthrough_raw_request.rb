# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Operations
    

      class PatchPassthroughRawRequest
        extend T::Sig
        include Crystalline::MetadataFields

        # ID of the connection
        field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

        field :path, ::String, { 'path_param': { 'field_name': 'path', 'style': 'simple', 'explode': false } }
        # integration-specific payload
        field :request_body, T.nilable(::String), { 'request': { 'media_type': 'text/plain' } }


        sig { params(connection_id: ::String, path: ::String, request_body: T.nilable(::String)).void }
        def initialize(connection_id: nil, path: nil, request_body: nil)
          @connection_id = connection_id
          @path = path
          @request_body = request_body
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @connection_id == other.connection_id
          return false unless @path == other.path
          return false unless @request_body == other.request_body
          true
        end
      end
    end
  end
end
