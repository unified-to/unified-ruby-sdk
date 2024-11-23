# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class CommerceItemMetadata < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :key, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('key') } }

      field :extra_data, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('extra_data') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :namespace, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('namespace') } }

      field :type, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type') } }

      field :value, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('value') } }


      sig { params(key: ::String, extra_data: T.nilable(T::Hash[Symbol, ::Object]), id: T.nilable(::String), namespace: T.nilable(::String), type: T.nilable(::String), value: T.nilable(T::Hash[Symbol, ::Object])).void }
      def initialize(key: nil, extra_data: nil, id: nil, namespace: nil, type: nil, value: nil)
        @key = key
        @extra_data = extra_data
        @id = id
        @namespace = namespace
        @type = type
        @value = value
      end
    end
  end
end
