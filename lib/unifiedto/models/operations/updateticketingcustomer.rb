# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/ticketingcustomer'

module OpenApiSDK
  module Operations

    class UpdateTicketingCustomerRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Customer
      field :id, String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :ticketing_customer, T.nilable(Shared::TicketingCustomer), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: String, id: String, ticketing_customer: T.nilable(Shared::TicketingCustomer)).void }
      def initialize(connection_id: nil, id: nil, ticketing_customer: nil)
        @connection_id = connection_id
        @id = id
        @ticketing_customer = ticketing_customer
      end
    end


    class UpdateTicketingCustomerResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)
      # Successful
      field :ticketing_customer, T.nilable(Shared::TicketingCustomer)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), ticketing_customer: T.nilable(Shared::TicketingCustomer)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, ticketing_customer: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @ticketing_customer = ticketing_customer
      end
    end
  end
end
