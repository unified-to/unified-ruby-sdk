# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class UpdateAccountingJournalRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # ID of the connection
      field :connection_id, ::String, { 'path_param': { 'field_name': 'connection_id', 'style': 'simple', 'explode': false } }
      # ID of the Journal
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }

      field :accounting_journal, T.nilable(::UnifiedRubySDK::Shared::AccountingJournal), { 'request': { 'media_type': 'application/json' } }


      sig { params(connection_id: ::String, id: ::String, accounting_journal: T.nilable(::UnifiedRubySDK::Shared::AccountingJournal)).void }
      def initialize(connection_id: nil, id: nil, accounting_journal: nil)
        @connection_id = connection_id
        @id = id
        @accounting_journal = accounting_journal
      end
    end
  end
end
