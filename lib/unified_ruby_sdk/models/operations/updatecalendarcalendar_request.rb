# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Operations
    

      class UpdateCalendarCalendarRequest
        extend T::Sig
        include Crystalline::MetadataFields


        field :calendar_calendar, Models::Shared::CalendarCalendar, { 'request': { 'media_type': 'application/json' } }
        # ID of the connection
        field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
        # ID of the Calendar
        field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
        # Comma-delimited fields to return
        field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }


        sig { params(calendar_calendar: Models::Shared::CalendarCalendar, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).void }
        def initialize(calendar_calendar: nil, connection_id: nil, id: nil, fields_: nil)
          @calendar_calendar = calendar_calendar
          @connection_id = connection_id
          @id = id
          @fields_ = fields_
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @calendar_calendar == other.calendar_calendar
          return false unless @connection_id == other.connection_id
          return false unless @id == other.id
          return false unless @fields_ == other.fields_
          true
        end
      end
    end
  end
end
