# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class ListCommerceCollectionsResponse < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Successful
      field :commerce_collections, T.nilable(T::Array[::UnifiedRubySDK::Shared::CommerceCollection])


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, commerce_collections: T.nilable(T::Array[::UnifiedRubySDK::Shared::CommerceCollection])).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, commerce_collections: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @commerce_collections = commerce_collections
      end
    end
  end
end
