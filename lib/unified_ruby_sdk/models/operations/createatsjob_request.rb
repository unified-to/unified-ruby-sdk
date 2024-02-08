# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreateAtsJobRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

      field :ats_job, T.nilable(::UnifiedRubySDK::Shared::AtsJob), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, ats_job: T.nilable(::UnifiedRubySDK::Shared::AtsJob)).void }
      def initialize(connection_id: nil, ats_job: nil)
        @connection_id = connection_id
        @ats_job = ats_job
      end
    end
  end
end