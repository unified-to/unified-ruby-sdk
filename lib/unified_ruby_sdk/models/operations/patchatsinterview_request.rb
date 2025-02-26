# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class PatchAtsInterviewRequest < ::Crystalline::FieldAugmented
      extend T::Sig


      field :ats_interview, ::UnifiedRubySDK::Shared::AtsInterview, { 'request': { 'media_type': 'application/json' } }
      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Interview
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # Comma-delimited fields to return
      field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }


      sig { params(ats_interview: ::UnifiedRubySDK::Shared::AtsInterview, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).void }
      def initialize(ats_interview: nil, connection_id: nil, id: nil, fields_: nil)
        @ats_interview = ats_interview
        @connection_id = connection_id
        @id = id
        @fields_ = fields_
      end
    end
  end
end
