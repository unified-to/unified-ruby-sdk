# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class CommerceLocation < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :name, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :address, T.nilable(::UnifiedRubySDK::Shared::PropertyCommerceLocationAddress), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('address') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('description') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :is_active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_active') } }

      field :raw, T.nilable(::UnifiedRubySDK::Shared::CommerceLocationRaw), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(name: ::String, address: T.nilable(::UnifiedRubySDK::Shared::PropertyCommerceLocationAddress), created_at: T.nilable(::DateTime), description: T.nilable(::String), id: T.nilable(::String), is_active: T.nilable(T::Boolean), raw: T.nilable(::UnifiedRubySDK::Shared::CommerceLocationRaw), updated_at: T.nilable(::DateTime)).void }
      def initialize(name: nil, address: nil, created_at: nil, description: nil, id: nil, is_active: nil, raw: nil, updated_at: nil)
        @name = name
        @address = address
        @created_at = created_at
        @description = description
        @id = id
        @is_active = is_active
        @raw = raw
        @updated_at = updated_at
      end
    end
  end
end
