# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class CreateAccountingJournalRequest < ::Crystalline::FieldAugmented
      extend T::Sig


      field :accounting_journal, ::UnifiedRubySDK::Shared::AccountingJournal, { 'request': { 'media_type': 'application/json' } }
      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # Comma-delimited fields to return
      field :fields_, T.nilable(T::Array[::String]), { 'query_param': { 'field_name': 'fields', 'style': 'form', 'explode': true } }


      sig { params(accounting_journal: ::UnifiedRubySDK::Shared::AccountingJournal, connection_id: ::String, fields_: T.nilable(T::Array[::String])).void }
      def initialize(accounting_journal: nil, connection_id: nil, fields_: nil)
        @accounting_journal = accounting_journal
        @connection_id = connection_id
        @fields_ = fields_
      end
    end
  end
end
