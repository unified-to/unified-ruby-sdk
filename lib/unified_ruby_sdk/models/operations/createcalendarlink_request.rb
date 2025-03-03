# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreateCalendarLinkRequest < ::Crystalline::FieldAugmented
      extend T::Sig


      field :calendar_link, ::UnifiedRubySDK::Shared::CalendarLink, { 'request': { 'media_type': 'application/json' } }
      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # Comma-delimited fields to return
      field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }


      sig { params(calendar_link: ::UnifiedRubySDK::Shared::CalendarLink, connection_id: ::String, fields_: T.nilable(T::Array[::String])).void }
      def initialize(calendar_link: nil, connection_id: nil, fields_: nil)
        @calendar_link = calendar_link
        @connection_id = connection_id
        @fields_ = fields_
      end
    end
  end
end
