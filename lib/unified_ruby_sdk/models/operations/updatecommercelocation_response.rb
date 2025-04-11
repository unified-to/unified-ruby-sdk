# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Operations
    

      class UpdateCommerceLocationResponse
        extend T::Sig
        include Crystalline::MetadataFields

        # HTTP response content type for this operation
        field :content_type, ::String
        # Raw HTTP response; suitable for custom response parsing
        field :raw_response, ::Faraday::Response
        # HTTP response status code for this operation
        field :status_code, ::Integer
        # Successful
        field :commerce_location, T.nilable(Models::Shared::CommerceLocation)


        sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, commerce_location: T.nilable(Models::Shared::CommerceLocation)).void }
        def initialize(content_type: nil, raw_response: nil, status_code: nil, commerce_location: nil)
          @content_type = content_type
          @raw_response = raw_response
          @status_code = status_code
          @commerce_location = commerce_location
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @content_type == other.content_type
          return false unless @raw_response == other.raw_response
          return false unless @status_code == other.status_code
          return false unless @commerce_location == other.commerce_location
          true
        end
      end
    end
  end
end
