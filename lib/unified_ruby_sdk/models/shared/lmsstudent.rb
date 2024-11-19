# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class LmsStudent < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :address, T.nilable(::UnifiedRubySDK::Shared::PropertyLmsStudentAddress), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('address') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :emails, T.nilable(T::Array[::UnifiedRubySDK::Shared::LmsEmail]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('emails') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :image_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('image_url') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :telephones, T.nilable(T::Array[::UnifiedRubySDK::Shared::LmsTelephone]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('telephones') } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(address: T.nilable(::UnifiedRubySDK::Shared::PropertyLmsStudentAddress), created_at: T.nilable(::DateTime), emails: T.nilable(T::Array[::UnifiedRubySDK::Shared::LmsEmail]), id: T.nilable(::String), image_url: T.nilable(::String), name: T.nilable(::String), raw: T.nilable(T::Hash[Symbol, ::Object]), telephones: T.nilable(T::Array[::UnifiedRubySDK::Shared::LmsTelephone]), updated_at: T.nilable(::DateTime)).void }
      def initialize(address: nil, created_at: nil, emails: nil, id: nil, image_url: nil, name: nil, raw: nil, telephones: nil, updated_at: nil)
        @address = address
        @created_at = created_at
        @emails = emails
        @id = id
        @image_url = image_url
        @name = name
        @raw = raw
        @telephones = telephones
        @updated_at = updated_at
      end
    end
  end
end
