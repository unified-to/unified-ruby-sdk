# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreateTaskProjectRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

      field :task_project, T.nilable(::UnifiedRubySDK::Shared::TaskProject), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, task_project: T.nilable(::UnifiedRubySDK::Shared::TaskProject)).void }
      def initialize(connection_id: nil, task_project: nil)
        @connection_id = connection_id
        @task_project = task_project
      end
    end
  end
end
