# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class MetadataMetadata < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :name, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :object_type, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('object_type') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :objects, T.nilable(T::Hash[Symbol, ::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('objects') } }

      field :options, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('options') } }

      field :raw, T.nilable(::UnifiedRubySDK::Shared::MetadataMetadataRaw), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :type, T.nilable(::UnifiedRubySDK::Shared::MetadataMetadataType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::MetadataMetadataType, true) } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(name: ::String, object_type: ::String, created_at: T.nilable(::DateTime), id: T.nilable(::String), objects: T.nilable(T::Hash[Symbol, ::String]), options: T.nilable(T::Array[::String]), raw: T.nilable(::UnifiedRubySDK::Shared::MetadataMetadataRaw), type: T.nilable(::UnifiedRubySDK::Shared::MetadataMetadataType), updated_at: T.nilable(::DateTime)).void }
      def initialize(name: nil, object_type: nil, created_at: nil, id: nil, objects: nil, options: nil, raw: nil, type: nil, updated_at: nil)
        @name = name
        @object_type = object_type
        @created_at = created_at
        @id = id
        @objects = objects
        @options = options
        @raw = raw
        @type = type
        @updated_at = updated_at
      end
    end
  end
end
