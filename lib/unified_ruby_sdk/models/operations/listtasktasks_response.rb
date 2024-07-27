# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class ListTaskTasksResponse < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Successful
      field :task_tasks, T.nilable(T::Array[::UnifiedRubySDK::Shared::TaskTask])


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, task_tasks: T.nilable(T::Array[::UnifiedRubySDK::Shared::TaskTask])).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, task_tasks: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @task_tasks = task_tasks
      end
    end
  end
end
