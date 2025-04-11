# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Operations
    

      class UpdateAtsInterviewRequest
        extend T::Sig
        include Crystalline::MetadataFields


        field :ats_interview, Models::Shared::AtsInterview, { 'request': { 'media_type': 'application/json' } }
        # ID of the connection
        field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
        # ID of the Interview
        field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
        # Comma-delimited fields to return
        field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }


        sig { params(ats_interview: Models::Shared::AtsInterview, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).void }
        def initialize(ats_interview: nil, connection_id: nil, id: nil, fields_: nil)
          @ats_interview = ats_interview
          @connection_id = connection_id
          @id = id
          @fields_ = fields_
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @ats_interview == other.ats_interview
          return false unless @connection_id == other.connection_id
          return false unless @id == other.id
          return false unless @fields_ == other.fields_
          true
        end
      end
    end
  end
end
