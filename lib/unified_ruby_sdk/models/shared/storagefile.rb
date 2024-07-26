# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class StorageFile < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('description') } }

      field :download_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('download_url') } }

      field :hash, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('hash') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :mime_type, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('mime_type') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :parent_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('parent_id') } }

      field :permissions, T.nilable(T::Array[::UnifiedRubySDK::Shared::StoragePermission]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('permissions') } }

      field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :size, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('size') } }

      field :type, T.nilable(::UnifiedRubySDK::Shared::StorageFileType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::StorageFileType, true) } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :user_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('user_id') } }


      sig { params(created_at: T.nilable(::DateTime), description: T.nilable(::String), download_url: T.nilable(::String), hash: T.nilable(::String), id: T.nilable(::String), mime_type: T.nilable(::String), name: T.nilable(::String), parent_id: T.nilable(::String), permissions: T.nilable(T::Array[::UnifiedRubySDK::Shared::StoragePermission]), raw: T.nilable(T::Hash[Symbol, ::Object]), size: T.nilable(::Float), type: T.nilable(::UnifiedRubySDK::Shared::StorageFileType), updated_at: T.nilable(::DateTime), user_id: T.nilable(::String)).void }
      def initialize(created_at: nil, description: nil, download_url: nil, hash: nil, id: nil, mime_type: nil, name: nil, parent_id: nil, permissions: nil, raw: nil, size: nil, type: nil, updated_at: nil, user_id: nil)
        @created_at = created_at
        @description = description
        @download_url = download_url
        @hash = hash
        @id = id
        @mime_type = mime_type
        @name = name
        @parent_id = parent_id
        @permissions = permissions
        @raw = raw
        @size = size
        @type = type
        @updated_at = updated_at
        @user_id = user_id
      end
    end
  end
end
