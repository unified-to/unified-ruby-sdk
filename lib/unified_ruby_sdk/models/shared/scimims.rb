# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class ScimIms < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :display, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('display') } }

      field :primary, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('primary') } }

      field :type, T.nilable(::UnifiedRubySDK::Shared::ScimImsType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ScimImsType, true) } }

      field :value, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('value') } }


      sig { params(display: T.nilable(::String), primary: T.nilable(T::Boolean), type: T.nilable(::UnifiedRubySDK::Shared::ScimImsType), value: T.nilable(::String)).void }
      def initialize(display: nil, primary: nil, type: nil, value: nil)
        @display = display
        @primary = primary
        @type = type
        @value = value
      end
    end
  end
end