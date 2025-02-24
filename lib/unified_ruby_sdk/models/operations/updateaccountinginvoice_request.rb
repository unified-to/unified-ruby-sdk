# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class UpdateAccountingInvoiceRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :accounting_invoice, ::UnifiedRubySDK::Shared::AccountingInvoice, { 'request': { 'media_type': 'application/json' } }
      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Invoice
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # Comma-delimited fields to return
      field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }


      sig { params(accounting_invoice: ::UnifiedRubySDK::Shared::AccountingInvoice, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).void }
      def initialize(accounting_invoice: nil, connection_id: nil, id: nil, fields_: nil)
        @accounting_invoice = accounting_invoice
        @connection_id = connection_id
        @id = id
        @fields_ = fields_
      end
    end
  end
end
