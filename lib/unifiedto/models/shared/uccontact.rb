# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module UnifiedRubySDK
  module Shared
    # A contact represents a person that optionally is associated with a call
    class UcContact < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :company, T.nilable(String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('company') } }

      field :created_at, T.nilable(DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # An array of email addresses for this contact
      field :emails, T.nilable(T::Array[Shared::UcEmail]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('emails') } }

      field :id, T.nilable(String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :name, T.nilable(String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }
      # The raw data returned by the integration for this contact
      field :raw, T.nilable(T::Hash[Symbol, Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }
      # An array of telephones for this contact
      field :telephones, T.nilable(T::Array[Shared::UcTelephone]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('telephones') } }

      field :title, T.nilable(String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('title') } }

      field :updated_at, T.nilable(DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(company: T.nilable(String), created_at: T.nilable(DateTime), emails: T.nilable(T::Array[Shared::UcEmail]), id: T.nilable(String), name: T.nilable(String), raw: T.nilable(T::Hash[Symbol, Object]), telephones: T.nilable(T::Array[Shared::UcTelephone]), title: T.nilable(String), updated_at: T.nilable(DateTime)).void }
      def initialize(company: nil, created_at: nil, emails: nil, id: nil, name: nil, raw: nil, telephones: nil, title: nil, updated_at: nil)
        @company = company
        @created_at = created_at
        @emails = emails
        @id = id
        @name = name
        @raw = raw
        @telephones = telephones
        @title = title
        @updated_at = updated_at
      end
    end
  end
end
