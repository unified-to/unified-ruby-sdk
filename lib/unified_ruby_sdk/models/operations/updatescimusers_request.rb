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

      field :scim_user, T.nilable(::UnifiedRubySDK::Shared::ScimUser), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, id: ::String, scim_user: T.nilable(::UnifiedRubySDK::Shared::ScimUser)).void }
      def initialize(connection_id: nil, id: nil, scim_user: nil)
        @connection_id = connection_id
        @id = id
        @scim_user = scim_user
      end
    end
  end
end
