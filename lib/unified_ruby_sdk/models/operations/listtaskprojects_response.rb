# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class ListTaskProjectsResponse < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Successful
      field :task_projects, T.nilable(T::Array[::UnifiedRubySDK::Shared::TaskProject])


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, task_projects: T.nilable(T::Array[::UnifiedRubySDK::Shared::TaskProject])).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, task_projects: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @task_projects = task_projects
      end
    end
  end
end
