# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class TicketingCustomer
        extend T::Sig
        include Crystalline::MetadataFields


        field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

        field :emails, T.nilable(T::Array[Models::Shared::TicketingEmail]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('emails') } }

        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

        field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

        field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

        field :tags, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('tags') } }

        field :telephones, T.nilable(T::Array[Models::Shared::TicketingTelephone]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('telephones') } }

        field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


        sig { params(created_at: T.nilable(::DateTime), emails: T.nilable(T::Array[Models::Shared::TicketingEmail]), id: T.nilable(::String), name: T.nilable(::String), raw: T.nilable(T::Hash[Symbol, ::Object]), tags: T.nilable(T::Array[::String]), telephones: T.nilable(T::Array[Models::Shared::TicketingTelephone]), updated_at: T.nilable(::DateTime)).void }
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

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @created_at == other.created_at
          return false unless @emails == other.emails
          return false unless @id == other.id
          return false unless @name == other.name
          return false unless @raw == other.raw
          return false unless @tags == other.tags
          return false unless @telephones == other.telephones
          return false unless @updated_at == other.updated_at
          true
        end
      end
    end
  end
end
