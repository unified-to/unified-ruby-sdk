# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreateAtsActivityRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

      field :ats_activity, T.nilable(::UnifiedRubySDK::Shared::AtsActivity), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, ats_activity: T.nilable(::UnifiedRubySDK::Shared::AtsActivity)).void }
      def initialize(connection_id: nil, ats_activity: nil)
        @connection_id = connection_id
        @ats_activity = ats_activity
      end
    end
  end
end
