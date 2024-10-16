# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class UpdateScimUsersRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the User
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :user, T.nilable(::UnifiedRubySDK::Shared::User), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, id: ::String, user: T.nilable(::UnifiedRubySDK::Shared::User)).void }
      def initialize(connection_id: nil, id: nil, user: nil)
        @connection_id = connection_id
        @id = id
        @user = user
      end
    end
  end
end
