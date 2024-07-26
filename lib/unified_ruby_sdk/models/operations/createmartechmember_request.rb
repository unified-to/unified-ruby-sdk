# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreateMartechMemberRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # A member represents a person
      field :marketing_member, T.nilable(::UnifiedRubySDK::Shared::MarketingMember), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, marketing_member: T.nilable(::UnifiedRubySDK::Shared::MarketingMember)).void }
      def initialize(connection_id: nil, marketing_member: nil)
        @connection_id = connection_id
        @marketing_member = marketing_member
      end
    end
  end
end
