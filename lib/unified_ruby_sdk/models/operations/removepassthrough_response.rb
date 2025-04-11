# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Operations
    

      class RemovePassthroughResponse
        extend T::Sig
        include Crystalline::MetadataFields

        # HTTP response content type for this operation
        field :content_type, ::String

        field :headers, T::Hash[Symbol, T::Array[::String]]
        # Raw HTTP response; suitable for custom response parsing
        field :raw_response, ::Faraday::Response
        # HTTP response status code for this operation
        field :status_code, ::Integer
        # Successful
        field :default_wildcard_wildcard_bytes, T.nilable(::String)
        # Successful
        field :default_application_json_any, T.nilable(::Object)
        # Successful
        field :default_application_xml_res, T.nilable(::String)
        # Successful
        field :default_text_csv_res, T.nilable(::String)
        # Successful
        field :default_text_plain_res, T.nilable(::String)


        sig { params(content_type: ::String, headers: T::Hash[Symbol, T::Array[::String]], raw_response: ::Faraday::Response, status_code: ::Integer, default_wildcard_wildcard_bytes: T.nilable(::String), default_application_json_any: T.nilable(::Object), default_application_xml_res: T.nilable(::String), default_text_csv_res: T.nilable(::String), default_text_plain_res: T.nilable(::String)).void }
        def initialize(content_type: nil, headers: nil, raw_response: nil, status_code: nil, default_wildcard_wildcard_bytes: nil, default_application_json_any: nil, default_application_xml_res: nil, default_text_csv_res: nil, default_text_plain_res: nil)
          @content_type = content_type
          @headers = headers
          @raw_response = raw_response
          @status_code = status_code
          @default_wildcard_wildcard_bytes = default_wildcard_wildcard_bytes
          @default_application_json_any = default_application_json_any
          @default_application_xml_res = default_application_xml_res
          @default_text_csv_res = default_text_csv_res
          @default_text_plain_res = default_text_plain_res
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @content_type == other.content_type
          return false unless @headers == other.headers
          return false unless @raw_response == other.raw_response
          return false unless @status_code == other.status_code
          return false unless @default_wildcard_wildcard_bytes == other.default_wildcard_wildcard_bytes
          return false unless @default_application_json_any == other.default_application_json_any
          return false unless @default_application_xml_res == other.default_application_xml_res
          return false unless @default_text_csv_res == other.default_text_csv_res
          return false unless @default_text_plain_res == other.default_text_plain_res
          true
        end
      end
    end
  end
end
