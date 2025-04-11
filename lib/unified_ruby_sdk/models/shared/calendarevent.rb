# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class CalendarEvent
        extend T::Sig
        include Crystalline::MetadataFields


        field :end_at, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('end_at') } }

        field :start_at, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('start_at') } }

        field :subject, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('subject') } }

        field :attendees, T.nilable(T::Array[Models::Shared::CalendarAttendee]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('attendees') } }

        field :calendar_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('calendar_id') } }

        field :created_at, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at') } }

        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

        field :is_all_day, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_all_day') } }

        field :is_free, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_free') } }

        field :is_private, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_private') } }

        field :location, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('location') } }

        field :notes, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('notes') } }

        field :organizer, T.nilable(Models::Shared::PropertyCalendarEventOrganizer), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('organizer') } }

        field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

        field :status, T.nilable(Models::Shared::CalendarEventStatus), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('status'), 'decoder': Utils.enum_from_string(Models::Shared::CalendarEventStatus, true) } }

        field :timezone, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('timezone') } }

        field :updated_at, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at') } }

        field :web_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('web_url') } }


        sig { params(end_at: ::String, start_at: ::String, subject: ::String, attendees: T.nilable(T::Array[Models::Shared::CalendarAttendee]), calendar_id: T.nilable(::String), created_at: T.nilable(::String), id: T.nilable(::String), is_all_day: T.nilable(T::Boolean), is_free: T.nilable(T::Boolean), is_private: T.nilable(T::Boolean), location: T.nilable(::String), notes: T.nilable(::String), organizer: T.nilable(Models::Shared::PropertyCalendarEventOrganizer), raw: T.nilable(T::Hash[Symbol, ::Object]), status: T.nilable(Models::Shared::CalendarEventStatus), timezone: T.nilable(::String), updated_at: T.nilable(::String), web_url: T.nilable(::String)).void }
        def initialize(end_at: nil, start_at: nil, subject: nil, attendees: nil, calendar_id: nil, created_at: nil, id: nil, is_all_day: nil, is_free: nil, is_private: nil, location: nil, notes: nil, organizer: nil, raw: nil, status: nil, timezone: nil, updated_at: nil, web_url: nil)
          @end_at = end_at
          @start_at = start_at
          @subject = subject
          @attendees = attendees
          @calendar_id = calendar_id
          @created_at = created_at
          @id = id
          @is_all_day = is_all_day
          @is_free = is_free
          @is_private = is_private
          @location = location
          @notes = notes
          @organizer = organizer
          @raw = raw
          @status = status
          @timezone = timezone
          @updated_at = updated_at
          @web_url = web_url
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @end_at == other.end_at
          return false unless @start_at == other.start_at
          return false unless @subject == other.subject
          return false unless @attendees == other.attendees
          return false unless @calendar_id == other.calendar_id
          return false unless @created_at == other.created_at
          return false unless @id == other.id
          return false unless @is_all_day == other.is_all_day
          return false unless @is_free == other.is_free
          return false unless @is_private == other.is_private
          return false unless @location == other.location
          return false unless @notes == other.notes
          return false unless @organizer == other.organizer
          return false unless @raw == other.raw
          return false unless @status == other.status
          return false unless @timezone == other.timezone
          return false unless @updated_at == other.updated_at
          return false unless @web_url == other.web_url
          true
        end
      end
    end
  end
end
