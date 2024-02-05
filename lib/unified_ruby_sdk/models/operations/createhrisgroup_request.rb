# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreateHrisGroupRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

      field :hris_group, T.nilable(::UnifiedRubySDK::Shared::HrisGroup), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, hris_group: T.nilable(::UnifiedRubySDK::Shared::HrisGroup)).void }
      def initialize(connection_id: nil, hris_group: nil)
        @connection_id = connection_id
        @hris_group = hris_group
      end
    end
  end
end
