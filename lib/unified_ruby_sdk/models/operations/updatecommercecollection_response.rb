# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class UpdateCommerceCollectionResponse < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Successful
      field :commerce_collection, T.nilable(::UnifiedRubySDK::Shared::CommerceCollection)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, commerce_collection: T.nilable(::UnifiedRubySDK::Shared::CommerceCollection)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, commerce_collection: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @commerce_collection = commerce_collection
      end
    end
  end
end
