# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreatePassthroughJsonResponse < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String

      field :headers, T::Hash[Symbol, T::Array[::String]]
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Successful
      field :two_xx_application_json_any, T.nilable(::Object)
      # Successful
      field :two_xx_text_plain_res, T.nilable(::String)

      field :body, T.nilable(::String)


      sig { params(content_type: ::String, headers: T::Hash[Symbol, T::Array[::String]], raw_response: ::Faraday::Response, status_code: ::Integer, two_xx_application_json_any: T.nilable(::Object), two_xx_text_plain_res: T.nilable(::String), body: T.nilable(::String)).void }
      def initialize(content_type: nil, headers: nil, raw_response: nil, status_code: nil, two_xx_application_json_any: nil, two_xx_text_plain_res: nil, body: nil)
        @content_type = content_type
        @headers = headers
        @raw_response = raw_response
        @status_code = status_code
        @two_xx_application_json_any = two_xx_application_json_any
        @two_xx_text_plain_res = two_xx_text_plain_res
        @body = body
      end
    end
  end
end
