# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreateLmsStudentRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

      field :lms_student, ::UnifiedRubySDK::Shared::LmsStudent, { 'request': { 'media_type': 'application/json' } }
      # Comma-delimited fields to return
      field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }


      sig { params(connection_id: ::String, lms_student: ::UnifiedRubySDK::Shared::LmsStudent, fields_: T.nilable(T::Array[::String])).void }
      def initialize(connection_id: nil, lms_student: nil, fields_: nil)
        @connection_id = connection_id
        @lms_student = lms_student
        @fields_ = fields_
      end
    end
  end
end
