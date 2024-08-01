# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class HrisLocation < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :address, T.nilable(::UnifiedRubySDK::Shared::PropertyHrisLocationAddress), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('address') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :currency, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('currency') } }

      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('description') } }

      field :external_identifier, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('external_identifier') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :is_active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_active') } }

      field :is_hq, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_hq') } }

      field :language_locale, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('language_locale') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :parent_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('parent_id') } }

      field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :telephones, T.nilable(T::Array[::UnifiedRubySDK::Shared::HrisTelephone]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('telephones') } }

      field :timezone, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('timezone') } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(address: T.nilable(::UnifiedRubySDK::Shared::PropertyHrisLocationAddress), created_at: T.nilable(::DateTime), currency: T.nilable(::String), description: T.nilable(::String), external_identifier: T.nilable(::String), id: T.nilable(::String), is_active: T.nilable(T::Boolean), is_hq: T.nilable(T::Boolean), language_locale: T.nilable(::String), name: T.nilable(::String), parent_id: T.nilable(::String), raw: T.nilable(T::Hash[Symbol, ::Object]), telephones: T.nilable(T::Array[::UnifiedRubySDK::Shared::HrisTelephone]), timezone: T.nilable(::String), updated_at: T.nilable(::DateTime)).void }
      def initialize(address: nil, created_at: nil, currency: nil, description: nil, external_identifier: nil, id: nil, is_active: nil, is_hq: nil, language_locale: nil, name: nil, parent_id: nil, raw: nil, telephones: nil, timezone: nil, updated_at: nil)
        @address = address
        @created_at = created_at
        @currency = currency
        @description = description
        @external_identifier = external_identifier
        @id = id
        @is_active = is_active
        @is_hq = is_hq
        @language_locale = language_locale
        @name = name
        @parent_id = parent_id
        @raw = raw
        @telephones = telephones
        @timezone = timezone
        @updated_at = updated_at
      end
    end
  end
end
