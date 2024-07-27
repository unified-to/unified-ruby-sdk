# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  
    # A collection of items/products/services
    class CommerceCollection < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :id, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :name, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('description') } }

      field :is_active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_active') } }

      field :is_featured, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_featured') } }

      field :is_visible, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_visible') } }

      field :media, T.nilable(T::Array[::UnifiedRubySDK::Shared::CommerceItemMedia]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('media') } }

      field :parent_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('parent_id') } }

      field :public_description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('public_description') } }

      field :public_name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('public_name') } }

      field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :tags, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('tags') } }

      field :type, T.nilable(::UnifiedRubySDK::Shared::CommerceCollectionType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::CommerceCollectionType, true) } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(id: ::String, name: ::String, created_at: T.nilable(::DateTime), description: T.nilable(::String), is_active: T.nilable(T::Boolean), is_featured: T.nilable(T::Boolean), is_visible: T.nilable(T::Boolean), media: T.nilable(T::Array[::UnifiedRubySDK::Shared::CommerceItemMedia]), parent_id: T.nilable(::String), public_description: T.nilable(::String), public_name: T.nilable(::String), raw: T.nilable(T::Hash[Symbol, ::Object]), tags: T.nilable(T::Array[::String]), type: T.nilable(::UnifiedRubySDK::Shared::CommerceCollectionType), updated_at: T.nilable(::DateTime)).void }
      def initialize(id: nil, name: nil, created_at: nil, description: nil, is_active: nil, is_featured: nil, is_visible: nil, media: nil, parent_id: nil, public_description: nil, public_name: nil, raw: nil, tags: nil, type: nil, updated_at: nil)
        @id = id
        @name = name
        @created_at = created_at
        @description = description
        @is_active = is_active
        @is_featured = is_featured
        @is_visible = is_visible
        @media = media
        @parent_id = parent_id
        @public_description = public_description
        @public_name = public_name
        @raw = raw
        @tags = tags
        @type = type
        @updated_at = updated_at
      end
    end
  end
end
