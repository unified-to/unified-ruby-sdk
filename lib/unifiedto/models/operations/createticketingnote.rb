# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/ticketingnote'

module UnifiedRubySDK
  module Operations

    class CreateTicketingNoteRequest < UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

      field :ticketing_note, T.nilable(Shared::TicketingNote), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: String, ticketing_note: T.nilable(Shared::TicketingNote)).void }
      def initialize(connection_id: nil, ticketing_note: nil)
        @connection_id = connection_id
        @ticketing_note = ticketing_note
      end
    end


    class CreateTicketingNoteResponse < UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Successful
      field :ticketing_note, T.nilable(Shared::TicketingNote)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, ticketing_note: T.nilable(Shared::TicketingNote)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, ticketing_note: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @ticketing_note = ticketing_note
      end
    end
  end
end
