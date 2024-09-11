# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class UpdateTicketingNoteRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Note
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # Comma-delimited fields to return
      field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }

      field :ticketing_note, T.nilable(::UnifiedRubySDK::Shared::TicketingNote), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String]), ticketing_note: T.nilable(::UnifiedRubySDK::Shared::TicketingNote)).void }
      def initialize(connection_id: nil, id: nil, fields_: nil, ticketing_note: nil)
        @connection_id = connection_id
        @id = id
        @fields_ = fields_
        @ticketing_note = ticketing_note
      end
    end
  end
end
