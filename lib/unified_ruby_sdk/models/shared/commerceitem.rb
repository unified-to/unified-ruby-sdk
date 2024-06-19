# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class CommerceItem < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('description') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :is_active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_active') } }

      field :is_taxable, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_taxable') } }

      field :media, T.nilable(T::Array[::UnifiedRubySDK::Shared::CommerceItemMedia]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('media') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :public_description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('public_description') } }

      field :public_name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('public_name') } }

      field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :slug, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('slug') } }

      field :tags, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('tags') } }

      field :type, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type') } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # first variant is the default variant
      field :variants, T.nilable(T::Array[::UnifiedRubySDK::Shared::CommerceItemVariant]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('variants') } }

      field :vendor_name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('vendor_name') } }


      sig { params(created_at: T.nilable(::DateTime), description: T.nilable(::String), id: T.nilable(::String), is_active: T.nilable(T::Boolean), is_taxable: T.nilable(T::Boolean), media: T.nilable(T::Array[::UnifiedRubySDK::Shared::CommerceItemMedia]), name: T.nilable(::String), public_description: T.nilable(::String), public_name: T.nilable(::String), raw: T.nilable(T::Hash[Symbol, ::Object]), slug: T.nilable(::String), tags: T.nilable(T::Array[::String]), type: T.nilable(::String), updated_at: T.nilable(::DateTime), variants: T.nilable(T::Array[::UnifiedRubySDK::Shared::CommerceItemVariant]), vendor_name: T.nilable(::String)).void }
      def initialize(created_at: nil, description: nil, id: nil, is_active: nil, is_taxable: nil, media: nil, name: nil, public_description: nil, public_name: nil, raw: nil, slug: nil, tags: nil, type: nil, updated_at: nil, variants: nil, vendor_name: nil)
        @created_at = created_at
        @description = description
        @id = id
        @is_active = is_active
        @is_taxable = is_taxable
        @media = media
        @name = name
        @public_description = public_description
        @public_name = public_name
        @raw = raw
        @slug = slug
        @tags = tags
        @type = type
        @updated_at = updated_at
        @variants = variants
        @vendor_name = vendor_name
      end
    end
  end
end
