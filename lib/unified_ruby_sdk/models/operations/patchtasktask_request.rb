# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class PatchTaskTaskRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Task
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :task_task, T.nilable(::UnifiedRubySDK::Shared::TaskTask), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, id: ::String, task_task: T.nilable(::UnifiedRubySDK::Shared::TaskTask)).void }
      def initialize(connection_id: nil, id: nil, task_task: nil)
        @connection_id = connection_id
        @id = id
        @task_task = task_task
      end
    end
  end
end
