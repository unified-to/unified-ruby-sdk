# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/property_crmevent_call'
require_relative '../shared/property_crmevent_email'
require_relative '../shared/property_crmevent_meeting'
require_relative '../shared/property_crmevent_note'
require_relative '../shared/property_crmevent_raw'
require_relative '../shared/property_crmevent_task'

module OpenApiSDK
  module Shared

    class CrmEventType < T::Enum
      enums do
        NOTE = new('NOTE')
        EMAIL = new('EMAIL')
        TASK = new('TASK')
        MEETING = new('MEETING')
        CALL = new('CALL')
      end
    end


    # An event represents an event, activity, or engagement and is always associated with a deal, contact, or company
    class CrmEvent < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The call object, when type = call
      field :call, T.nilable(Shared::PropertyCrmEventCall), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('call') } }
      # An array of company IDs associated with this event
      field :company_ids, T.nilable(T::Array[String]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('company_ids') } }
      # An array of contact IDs associated with this event
      field :contact_ids, T.nilable(T::Array[String]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('contact_ids') } }

      field :created_at, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # An array of deal IDs associated with this event
      field :deal_ids, T.nilable(T::Array[String]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('deal_ids') } }
      # The email object, when type = email
      field :email, T.nilable(Shared::PropertyCrmEventEmail), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('email') } }

      field :id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }

      field :lead_ids, T.nilable(T::Array[String]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('lead_ids') } }
      # The meeting object, when type = meeting
      field :meeting, T.nilable(Shared::PropertyCrmEventMeeting), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('meeting') } }
      # The note object, when type = note
      field :note, T.nilable(Shared::PropertyCrmEventNote), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('note') } }
      # The raw data returned by the integration for this event.
      field :raw, T.nilable(Shared::PropertyCrmEventRaw), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('raw') } }
      # The task object, when type = task
      field :task, T.nilable(Shared::PropertyCrmEventTask), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('task') } }

      field :type, T.nilable(Shared::CrmEventType), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Shared::CrmEventType, true) } }

      field :updated_at, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(call: T.nilable(Shared::PropertyCrmEventCall), company_ids: T.nilable(T::Array[String]), contact_ids: T.nilable(T::Array[String]), created_at: T.nilable(DateTime), deal_ids: T.nilable(T::Array[String]), email: T.nilable(Shared::PropertyCrmEventEmail), id: T.nilable(String), lead_ids: T.nilable(T::Array[String]), meeting: T.nilable(Shared::PropertyCrmEventMeeting), note: T.nilable(Shared::PropertyCrmEventNote), raw: T.nilable(Shared::PropertyCrmEventRaw), task: T.nilable(Shared::PropertyCrmEventTask), type: T.nilable(Shared::CrmEventType), updated_at: T.nilable(DateTime)).void }
      def initialize(call: nil, company_ids: nil, contact_ids: nil, created_at: nil, deal_ids: nil, email: nil, id: nil, lead_ids: nil, meeting: nil, note: nil, raw: nil, task: nil, type: nil, updated_at: nil)
        @call = call
        @company_ids = company_ids
        @contact_ids = contact_ids
        @created_at = created_at
        @deal_ids = deal_ids
        @email = email
        @id = id
        @lead_ids = lead_ids
        @meeting = meeting
        @note = note
        @raw = raw
        @task = task
        @type = type
        @updated_at = updated_at
      end
    end
  end
end
