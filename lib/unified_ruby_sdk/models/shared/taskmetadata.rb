# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class TaskMetadata
        extend T::Sig
        include Crystalline::MetadataFields


        field :extra_data, T.nilable(T.any(Models::Shared::TaskMetadata1, T.any(::String, Models::Shared::TaskMetadataSchemasExtraData22), T.any(::Float, Models::Shared::TaskMetadataSchemasExtraData32), T.any(T::Boolean, Models::Shared::TaskMetadataSchemasExtraData2), T.any(T::Array[::Object], Models::Shared::TaskMetadataSchemasExtraData52))), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('extra_data') } }

        field :format, T.nilable(Models::Shared::TaskMetadataFormat), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('format'), 'decoder': Utils.enum_from_string(Models::Shared::TaskMetadataFormat, true) } }

        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

        field :key, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('key') } }

        field :namespace, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('namespace') } }

        field :slug, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('slug') } }

        field :type, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type') } }

        field :value, T.nilable(T.any(Models::Shared::TaskMetadataSchemas1, T.any(::String, Models::Shared::TaskMetadataSchemasValue2), T.any(::Float, Models::Shared::TaskMetadataSchemasValue32), T.any(T::Boolean, Models::Shared::TaskMetadataSchemasValue42), T.any(T::Array[::Object], Models::Shared::TaskMetadataSchemasValue52))), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('value') } }


        sig { params(extra_data: T.nilable(T.any(Models::Shared::TaskMetadata1, T.any(::String, Models::Shared::TaskMetadataSchemasExtraData22), T.any(::Float, Models::Shared::TaskMetadataSchemasExtraData32), T.any(T::Boolean, Models::Shared::TaskMetadataSchemasExtraData2), T.any(T::Array[::Object], Models::Shared::TaskMetadataSchemasExtraData52))), format: T.nilable(Models::Shared::TaskMetadataFormat), id: T.nilable(::String), key: T.nilable(::String), namespace: T.nilable(::String), slug: T.nilable(::String), type: T.nilable(::String), value: T.nilable(T.any(Models::Shared::TaskMetadataSchemas1, T.any(::String, Models::Shared::TaskMetadataSchemasValue2), T.any(::Float, Models::Shared::TaskMetadataSchemasValue32), T.any(T::Boolean, Models::Shared::TaskMetadataSchemasValue42), T.any(T::Array[::Object], Models::Shared::TaskMetadataSchemasValue52)))).void }
        def initialize(extra_data: nil, format: nil, id: nil, key: nil, namespace: nil, slug: nil, type: nil, value: nil)
          @extra_data = extra_data
          @format = format
          @id = id
          @key = key
          @namespace = namespace
          @slug = slug
          @type = type
          @value = value
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @extra_data == other.extra_data
          return false unless @format == other.format
          return false unless @id == other.id
          return false unless @key == other.key
          return false unless @namespace == other.namespace
          return false unless @slug == other.slug
          return false unless @type == other.type
          return false unless @value == other.value
          true
        end
      end
    end
  end
end
