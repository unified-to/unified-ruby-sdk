# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class KmsPage
        extend T::Sig
        include Crystalline::MetadataFields


        field :title, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('title') } }

        field :type, Models::Shared::KmsPageType, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Models::Shared::KmsPageType, false) } }

        field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

        field :download_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('download_url') } }

        field :has_children, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('has_children') } }

        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

        field :is_active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_active') } }

        field :metadata, T.nilable(T::Array[Models::Shared::KmsPageMetadata]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('metadata') } }

        field :parent_page_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('parent_page_id') } }

        field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

        field :space_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('space_id') } }

        field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

        field :user_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('user_id') } }

        field :web_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('web_url') } }


        sig { params(title: ::String, type: Models::Shared::KmsPageType, created_at: T.nilable(::DateTime), download_url: T.nilable(::String), has_children: T.nilable(T::Boolean), id: T.nilable(::String), is_active: T.nilable(T::Boolean), metadata: T.nilable(T::Array[Models::Shared::KmsPageMetadata]), parent_page_id: T.nilable(::String), raw: T.nilable(T::Hash[Symbol, ::Object]), space_id: T.nilable(::String), updated_at: T.nilable(::DateTime), user_id: T.nilable(::String), web_url: T.nilable(::String)).void }
        def initialize(title: nil, type: nil, created_at: nil, download_url: nil, has_children: nil, id: nil, is_active: nil, metadata: nil, parent_page_id: nil, raw: nil, space_id: nil, updated_at: nil, user_id: nil, web_url: nil)
          @title = title
          @type = type
          @created_at = created_at
          @download_url = download_url
          @has_children = has_children
          @id = id
          @is_active = is_active
          @metadata = metadata
          @parent_page_id = parent_page_id
          @raw = raw
          @space_id = space_id
          @updated_at = updated_at
          @user_id = user_id
          @web_url = web_url
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @title == other.title
          return false unless @type == other.type
          return false unless @created_at == other.created_at
          return false unless @download_url == other.download_url
          return false unless @has_children == other.has_children
          return false unless @id == other.id
          return false unless @is_active == other.is_active
          return false unless @metadata == other.metadata
          return false unless @parent_page_id == other.parent_page_id
          return false unless @raw == other.raw
          return false unless @space_id == other.space_id
          return false unless @updated_at == other.updated_at
          return false unless @user_id == other.user_id
          return false unless @web_url == other.web_url
          true
        end
      end
    end
  end
end
