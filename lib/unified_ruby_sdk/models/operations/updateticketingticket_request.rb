# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class UpdateTicketingTicketRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Ticket
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :ticketing_ticket, T.nilable(::UnifiedRubySDK::Shared::TicketingTicket), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, id: ::String, ticketing_ticket: T.nilable(::UnifiedRubySDK::Shared::TicketingTicket)).void }
      def initialize(connection_id: nil, id: nil, ticketing_ticket: nil)
        @connection_id = connection_id
        @id = id
        @ticketing_ticket = ticketing_ticket
      end
    end
  end
end
