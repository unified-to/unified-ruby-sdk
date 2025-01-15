# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreateTaskCommentRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # Comma-delimited fields to return
      field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }

      field :task_comment, T.nilable(::UnifiedRubySDK::Shared::TaskComment), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, fields_: T.nilable(T::Array[::String]), task_comment: T.nilable(::UnifiedRubySDK::Shared::TaskComment)).void }
      def initialize(connection_id: nil, fields_: nil, task_comment: nil)
        @connection_id = connection_id
        @fields_ = fields_
        @task_comment = task_comment
      end
    end
  end
end