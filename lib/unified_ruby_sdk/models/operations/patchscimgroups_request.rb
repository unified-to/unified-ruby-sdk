# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class PatchScimGroupsRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Group
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :group, T.nilable(::UnifiedRubySDK::Shared::Group), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, id: ::String, group: T.nilable(::UnifiedRubySDK::Shared::Group)).void }
      def initialize(connection_id: nil, id: nil, group: nil)
        @connection_id = connection_id
        @id = id
        @group = group
      end
    end
  end
end
