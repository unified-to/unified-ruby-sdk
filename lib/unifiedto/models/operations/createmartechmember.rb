# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/marketingmember'

module UnifiedRubySDK
  module Operations

    class CreateMartechMemberRequest < UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # A member represents a person
      field :marketing_member, T.nilable(Shared::MarketingMember), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: String, marketing_member: T.nilable(Shared::MarketingMember)).void }
      def initialize(connection_id: nil, marketing_member: nil)
        @connection_id = connection_id
        @marketing_member = marketing_member
      end
    end


    class CreateMartechMemberResponse < UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Successful
      field :marketing_member, T.nilable(Shared::MarketingMember)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, marketing_member: T.nilable(Shared::MarketingMember)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, marketing_member: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @marketing_member = marketing_member
      end
    end
  end
end
