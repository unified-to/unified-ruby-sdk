# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class UpdateMartechMemberRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Member
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # A member represents a person
      field :marketing_member, T.nilable(::UnifiedRubySDK::Shared::MarketingMember), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, id: ::String, marketing_member: T.nilable(::UnifiedRubySDK::Shared::MarketingMember)).void }
      def initialize(connection_id: nil, id: nil, marketing_member: nil)
        @connection_id = connection_id
        @id = id
        @marketing_member = marketing_member
      end
    end
  end
end
