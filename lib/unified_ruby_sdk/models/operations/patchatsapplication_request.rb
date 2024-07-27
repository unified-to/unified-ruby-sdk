# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class PatchAtsApplicationRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Application
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :ats_application, T.nilable(::UnifiedRubySDK::Shared::AtsApplication), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, id: ::String, ats_application: T.nilable(::UnifiedRubySDK::Shared::AtsApplication)).void }
      def initialize(connection_id: nil, id: nil, ats_application: nil)
        @connection_id = connection_id
        @id = id
        @ats_application = ats_application
      end
    end
  end
end
