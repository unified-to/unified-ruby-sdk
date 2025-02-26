# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class HrisCompany < ::Crystalline::FieldAugmented
      extend T::Sig


      field :address, T.nilable(::UnifiedRubySDK::Shared::PropertyHrisCompanyAddress), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('address') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :legal_name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('legal_name') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :raw, T.nilable(::UnifiedRubySDK::Shared::HrisCompanyRaw), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(address: T.nilable(::UnifiedRubySDK::Shared::PropertyHrisCompanyAddress), created_at: T.nilable(::DateTime), id: T.nilable(::String), legal_name: T.nilable(::String), name: T.nilable(::String), raw: T.nilable(::UnifiedRubySDK::Shared::HrisCompanyRaw), updated_at: T.nilable(::DateTime)).void }
      def initialize(address: nil, created_at: nil, id: nil, legal_name: nil, name: nil, raw: nil, updated_at: nil)
        @address = address
        @created_at = created_at
        @id = id
        @legal_name = legal_name
        @name = name
        @raw = raw
        @updated_at = updated_at
      end
    end
  end
end
