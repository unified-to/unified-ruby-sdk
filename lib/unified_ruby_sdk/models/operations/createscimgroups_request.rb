# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreateScimGroupsRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

      field :scim_group, ::UnifiedRubySDK::Shared::ScimGroup, { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, scim_group: ::UnifiedRubySDK::Shared::ScimGroup).void }
      def initialize(connection_id: nil, scim_group: nil)
        @connection_id = connection_id
        @scim_group = scim_group
      end
    end
  end
end
