# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreateScimUsersResponse < ::Crystalline::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Successful
      field :scim_user, T.nilable(::UnifiedRubySDK::Shared::ScimUser)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, scim_user: T.nilable(::UnifiedRubySDK::Shared::ScimUser)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, scim_user: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @scim_user = scim_user
      end
    end
  end
end
