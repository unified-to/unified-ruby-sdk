# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Operations
    

      class GetMetadataMetadataResponse
        extend T::Sig
        include Crystalline::MetadataFields

        # HTTP response content type for this operation
        field :content_type, ::String
        # Raw HTTP response; suitable for custom response parsing
        field :raw_response, ::Faraday::Response
        # HTTP response status code for this operation
        field :status_code, ::Integer
        # Successful
        field :metadata_metadata, T.nilable(Models::Shared::MetadataMetadata)


        sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, metadata_metadata: T.nilable(Models::Shared::MetadataMetadata)).void }
        def initialize(content_type: nil, raw_response: nil, status_code: nil, metadata_metadata: nil)
          @content_type = content_type
          @raw_response = raw_response
          @status_code = status_code
          @metadata_metadata = metadata_metadata
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @content_type == other.content_type
          return false unless @raw_response == other.raw_response
          return false unless @status_code == other.status_code
          return false unless @metadata_metadata == other.metadata_metadata
          true
        end
      end
    end
  end
end
