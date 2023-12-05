# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/accountingcustomer'

module UnifiedRubySDK
  module Operations

    class PatchAccountingCustomerRequest < UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Customer
      field :id, String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :accounting_customer, T.nilable(Shared::AccountingCustomer), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: String, id: String, accounting_customer: T.nilable(Shared::AccountingCustomer)).void }
      def initialize(connection_id: nil, id: nil, accounting_customer: nil)
        @connection_id = connection_id
        @id = id
        @accounting_customer = accounting_customer
      end
    end


    class PatchAccountingCustomerResponse < UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Successful
      field :accounting_customer, T.nilable(Shared::AccountingCustomer)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, accounting_customer: T.nilable(Shared::AccountingCustomer)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, accounting_customer: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @accounting_customer = accounting_customer
      end
    end
  end
end
