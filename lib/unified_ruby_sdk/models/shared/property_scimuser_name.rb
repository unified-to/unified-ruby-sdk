# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class PropertyScimUserName < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :family_name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('familyName') } }

      field :formatted, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('formatted') } }

      field :given_name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('givenName') } }

      field :honorific_prefix, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('honorificPrefix') } }

      field :honorific_suffix, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('honorificSuffix') } }

      field :middle_name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('middleName') } }


      sig { params(family_name: T.nilable(::String), formatted: T.nilable(::String), given_name: T.nilable(::String), honorific_prefix: T.nilable(::String), honorific_suffix: T.nilable(::String), middle_name: T.nilable(::String)).void }
      def initialize(family_name: nil, formatted: nil, given_name: nil, honorific_prefix: nil, honorific_suffix: nil, middle_name: nil)
        @family_name = family_name
        @formatted = formatted
        @given_name = given_name
        @honorific_prefix = honorific_prefix
        @honorific_suffix = honorific_suffix
        @middle_name = middle_name
      end
    end
  end
end