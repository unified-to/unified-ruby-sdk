# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Operations
    

      class PatchTaskTaskRequest
        extend T::Sig
        include Crystalline::MetadataFields

        # ID of the connection
        field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
        # ID of the Task
        field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

        field :task_task, Models::Shared::TaskTask, { 'request': { 'media_type': 'application/json' } }
        # Comma-delimited fields to return
        field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }
        # Raw parameters to include in the 3rd-party request. Encoded as a URL component. eg. raw parameters: foo=bar&zoo=bar -> raw=foo%3Dbar%26zoo%3Dbar
        field :raw, T.nilable(::String), { 'query_param': { 'field_name': 'raw', 'style': 'form', 'explode': true } }


        sig { params(connection_id: ::String, id: ::String, task_task: Models::Shared::TaskTask, fields_: T.nilable(T::Array[::String]), raw: T.nilable(::String)).void }
        def initialize(connection_id: nil, id: nil, task_task: nil, fields_: nil, raw: nil)
          @connection_id = connection_id
          @id = id
          @task_task = task_task
          @fields_ = fields_
          @raw = raw
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @connection_id == other.connection_id
          return false unless @id == other.id
          return false unless @task_task == other.task_task
          return false unless @fields_ == other.fields_
          return false unless @raw == other.raw
          true
        end
      end
    end
  end
end
