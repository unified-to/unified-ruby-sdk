# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class GenaiModel < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('description') } }

      field :has_temperature, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('has_temperature') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :max_tokens, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('max_tokens') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :web_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('web_url') } }


      sig { params(description: T.nilable(::String), has_temperature: T.nilable(T::Boolean), id: T.nilable(::String), max_tokens: T.nilable(::Float), name: T.nilable(::String), raw: T.nilable(T::Hash[Symbol, ::Object]), web_url: T.nilable(::String)).void }
      def initialize(description: nil, has_temperature: nil, id: nil, max_tokens: nil, name: nil, raw: nil, web_url: nil)
        @description = description
        @has_temperature = has_temperature
        @id = id
        @max_tokens = max_tokens
        @name = name
        @raw = raw
        @web_url = web_url
      end
    end
  end
end
