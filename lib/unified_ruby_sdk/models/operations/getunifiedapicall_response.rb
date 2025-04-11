# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Operations
    

      class GetUnifiedApicallResponse
        extend T::Sig
        include Crystalline::MetadataFields

        # HTTP response content type for this operation
        field :content_type, ::String
        # Raw HTTP response; suitable for custom response parsing
        field :raw_response, ::Faraday::Response
        # HTTP response status code for this operation
        field :status_code, ::Integer
        # Successful
        field :api_call, T.nilable(Models::Shared::ApiCall)


        sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, api_call: T.nilable(Models::Shared::ApiCall)).void }
        def initialize(content_type: nil, raw_response: nil, status_code: nil, api_call: nil)
          @content_type = content_type
          @raw_response = raw_response
          @status_code = status_code
          @api_call = api_call
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @content_type == other.content_type
          return false unless @raw_response == other.raw_response
          return false unless @status_code == other.status_code
          return false unless @api_call == other.api_call
          true
        end
      end
    end
  end
end
