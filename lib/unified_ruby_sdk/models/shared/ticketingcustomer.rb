# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class TicketingCustomer < ::Crystalline::FieldAugmented
      extend T::Sig


      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :emails, T.nilable(T::Array[::UnifiedRubySDK::Shared::TicketingEmail]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('emails') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :tags, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('tags') } }

      field :telephones, T.nilable(T::Array[::UnifiedRubySDK::Shared::TicketingTelephone]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('telephones') } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(created_at: T.nilable(::DateTime), emails: T.nilable(T::Array[::UnifiedRubySDK::Shared::TicketingEmail]), id: T.nilable(::String), name: T.nilable(::String), raw: T.nilable(T::Hash[Symbol, ::Object]), tags: T.nilable(T::Array[::String]), telephones: T.nilable(T::Array[::UnifiedRubySDK::Shared::TicketingTelephone]), updated_at: T.nilable(::DateTime)).void }
      def initialize(created_at: nil, emails: nil, id: nil, name: nil, raw: nil, tags: nil, telephones: nil, updated_at: nil)
        @created_at = created_at
        @emails = emails
        @id = id
        @name = name
        @raw = raw
        @tags = tags
        @telephones = telephones
        @updated_at = updated_at
      end
    end
  end
end
