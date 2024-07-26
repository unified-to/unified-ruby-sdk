# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class PatchCrmPipelineRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Pipeline
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :crm_pipeline, T.nilable(::UnifiedRubySDK::Shared::CrmPipeline), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, id: ::String, crm_pipeline: T.nilable(::UnifiedRubySDK::Shared::CrmPipeline)).void }
      def initialize(connection_id: nil, id: nil, crm_pipeline: nil)
        @connection_id = connection_id
        @id = id
        @crm_pipeline = crm_pipeline
      end
    end
  end
end
