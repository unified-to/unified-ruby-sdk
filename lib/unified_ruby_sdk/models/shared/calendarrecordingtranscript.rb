# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class CalendarRecordingTranscript
        extend T::Sig
        include Crystalline::MetadataFields


        field :text, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('text') } }

        field :attendee, T.nilable(Models::Shared::PropertyCalendarRecordingTranscriptAttendee), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('attendee') } }

        field :end_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('end_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

        field :language, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('language') } }

        field :start_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('start_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


        sig { params(text: ::String, attendee: T.nilable(Models::Shared::PropertyCalendarRecordingTranscriptAttendee), end_at: T.nilable(::DateTime), language: T.nilable(::String), start_at: T.nilable(::DateTime)).void }
        def initialize(text: nil, attendee: nil, end_at: nil, language: nil, start_at: nil)
          @text = text
          @attendee = attendee
          @end_at = end_at
          @language = language
          @start_at = start_at
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @text == other.text
          return false unless @attendee == other.attendee
          return false unless @end_at == other.end_at
          return false unless @language == other.language
          return false unless @start_at == other.start_at
          true
        end
      end
    end
  end
end
