# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/property_ticketingnote_raw'

module OpenApiSDK
  module Shared

    class TicketingNote < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :agent_id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('agent_id') } }

      field :created_at, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :customer_id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('customer_id') } }

      field :description, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('description') } }

      field :id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }

      field :raw, T.nilable(Shared::PropertyTicketingNoteRaw), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('raw') } }

      field :ticket_id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('ticket_id') } }

      field :updated_at, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('updated_at') } }


      sig { params(agent_id: T.nilable(String), created_at: T.nilable(DateTime), customer_id: T.nilable(String), description: T.nilable(String), id: T.nilable(String), raw: T.nilable(Shared::PropertyTicketingNoteRaw), ticket_id: T.nilable(String), updated_at: T.nilable(String)).void }
      def initialize(agent_id: nil, created_at: nil, customer_id: nil, description: nil, id: nil, raw: nil, ticket_id: nil, updated_at: nil)
        @agent_id = agent_id
        @created_at = created_at
        @customer_id = customer_id
        @description = description
        @id = id
        @raw = raw
        @ticket_id = ticket_id
        @updated_at = updated_at
      end
    end
  end
end
