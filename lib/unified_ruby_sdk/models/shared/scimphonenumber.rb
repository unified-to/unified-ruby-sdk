# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class ScimPhoneNumber
        extend T::Sig
        include Crystalline::MetadataFields


        field :display, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('display') } }

        field :primary, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('primary') } }

        field :type, T.nilable(Models::Shared::ScimPhoneNumberType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Models::Shared::ScimPhoneNumberType, true) } }

        field :value, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('value') } }


        sig { params(display: T.nilable(::String), primary: T.nilable(T::Boolean), type: T.nilable(Models::Shared::ScimPhoneNumberType), value: T.nilable(::String)).void }
        def initialize(display: nil, primary: nil, type: nil, value: nil)
          @display = display
          @primary = primary
          @type = type
          @value = value
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @display == other.display
          return false unless @primary == other.primary
          return false unless @type == other.type
          return false unless @value == other.value
          true
        end
      end
    end
  end
end
