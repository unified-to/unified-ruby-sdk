# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Operations
    

      class UpdateLmsCourseRequest
        extend T::Sig
        include Crystalline::MetadataFields

        # ID of the connection
        field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
        # ID of the Course
        field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

        field :lms_course, Models::Shared::LmsCourse, { 'request': { 'media_type': 'application/json' } }
        # Comma-delimited fields to return
        field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }


        sig { params(connection_id: ::String, id: ::String, lms_course: Models::Shared::LmsCourse, fields_: T.nilable(T::Array[::String])).void }
        def initialize(connection_id: nil, id: nil, lms_course: nil, fields_: nil)
          @connection_id = connection_id
          @id = id
          @lms_course = lms_course
          @fields_ = fields_
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @connection_id == other.connection_id
          return false unless @id == other.id
          return false unless @lms_course == other.lms_course
          return false unless @fields_ == other.fields_
          true
        end
      end
    end
  end
end
