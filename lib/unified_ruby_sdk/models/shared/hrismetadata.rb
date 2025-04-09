# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class HrisMetadata < ::Crystalline::FieldAugmented
      extend T::Sig


      field :extra_data, T.nilable(::UnifiedRubySDK::Shared::HrisMetadataExtraData), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('extra_data') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :key, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('key') } }

      field :namespace, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('namespace') } }

      field :slug, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('slug') } }

      field :type, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type') } }

      field :value, T.nilable(::UnifiedRubySDK::Shared::HrisMetadataValue), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('value') } }


      sig { params(extra_data: T.nilable(::UnifiedRubySDK::Shared::HrisMetadataExtraData), id: T.nilable(::String), key: T.nilable(::String), namespace: T.nilable(::String), slug: T.nilable(::String), type: T.nilable(::String), value: T.nilable(::UnifiedRubySDK::Shared::HrisMetadataValue)).void }
      def initialize(extra_data: nil, id: nil, key: nil, namespace: nil, slug: nil, type: nil, value: nil)
        @extra_data = extra_data
        @id = id
        @key = key
        @namespace = namespace
        @slug = slug
        @type = type
        @value = value
      end
    end
  end
end
