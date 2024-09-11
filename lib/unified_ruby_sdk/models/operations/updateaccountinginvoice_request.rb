# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class UpdateAccountingInvoiceRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Invoice
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :accounting_invoice, T.nilable(::UnifiedRubySDK::Shared::AccountingInvoice), { 'request': { 'media_type': 'application/json' } }
      # Comma-delimited fields to return
      field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }


      sig { params(connection_id: ::String, id: ::String, accounting_invoice: T.nilable(::UnifiedRubySDK::Shared::AccountingInvoice), fields_: T.nilable(T::Array[::String])).void }
      def initialize(connection_id: nil, id: nil, accounting_invoice: nil, fields_: nil)
        @connection_id = connection_id
        @id = id
        @accounting_invoice = accounting_invoice
        @fields_ = fields_
      end
    end
  end
end
