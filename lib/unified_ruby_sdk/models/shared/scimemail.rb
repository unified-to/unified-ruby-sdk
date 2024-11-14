# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class ScimEmail < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :type, ::UnifiedRubySDK::Shared::ScimEmailType, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ScimEmailType, false) } }

      field :display, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('display') } }

      field :primary, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('primary') } }

      field :value, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('value') } }


      sig { params(type: ::UnifiedRubySDK::Shared::ScimEmailType, display: T.nilable(::String), primary: T.nilable(T::Boolean), value: T.nilable(::String)).void }
      def initialize(type: nil, display: nil, primary: nil, value: nil)
        @type = type
        @display = display
        @primary = primary
        @value = value
      end
    end
  end
end
