# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/accountinginvoice'

module OpenApiSDK
  module Operations

    class CreateAccountingInvoiceRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }

      field :accounting_invoice, T.nilable(Shared::AccountingInvoice), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: String, accounting_invoice: T.nilable(Shared::AccountingInvoice)).void }
      def initialize(connection_id: nil, accounting_invoice: nil)
        @connection_id = connection_id
        @accounting_invoice = accounting_invoice
      end
    end


    class CreateAccountingInvoiceResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Successful
      field :accounting_invoice, T.nilable(Shared::AccountingInvoice)
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, accounting_invoice: T.nilable(Shared::AccountingInvoice), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, accounting_invoice: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @accounting_invoice = accounting_invoice
        @raw_response = raw_response
      end
    end
  end
end
