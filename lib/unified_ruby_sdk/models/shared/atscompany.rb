# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class AtsCompany < ::Crystalline::FieldAugmented
      extend T::Sig


      field :name, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :address, T.nilable(::UnifiedRubySDK::Shared::PropertyAtsCompanyAddress), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('address') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :metadata, T.nilable(T::Array[::UnifiedRubySDK::Shared::AtsMetadata]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('metadata') } }

      field :parent_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('parent_id') } }

      field :phone, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('phone') } }

      field :raw, T.nilable(::UnifiedRubySDK::Shared::AtsCompanyRaw), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :recruiter_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('recruiter_ids') } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :website_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('website_url') } }


      sig { params(name: ::String, address: T.nilable(::UnifiedRubySDK::Shared::PropertyAtsCompanyAddress), created_at: T.nilable(::DateTime), id: T.nilable(::String), metadata: T.nilable(T::Array[::UnifiedRubySDK::Shared::AtsMetadata]), parent_id: T.nilable(::String), phone: T.nilable(::String), raw: T.nilable(::UnifiedRubySDK::Shared::AtsCompanyRaw), recruiter_ids: T.nilable(T::Array[::String]), updated_at: T.nilable(::DateTime), website_url: T.nilable(::String)).void }
      def initialize(name: nil, address: nil, created_at: nil, id: nil, metadata: nil, parent_id: nil, phone: nil, raw: nil, recruiter_ids: nil, updated_at: nil, website_url: nil)
        @name = name
        @address = address
        @created_at = created_at
        @id = id
        @metadata = metadata
        @parent_id = parent_id
        @phone = phone
        @raw = raw
        @recruiter_ids = recruiter_ids
        @updated_at = updated_at
        @website_url = website_url
      end
    end
  end
end
