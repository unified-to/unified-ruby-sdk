# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class AtsCompensation < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :currency, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('currency') } }

      field :frequency, T.nilable(::UnifiedRubySDK::Shared::Frequency), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('frequency'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::Frequency, true) } }

      field :max, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('max') } }

      field :min, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('min') } }

      field :type, T.nilable(::UnifiedRubySDK::Shared::AtsCompensationType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::AtsCompensationType, true) } }


      sig { params(currency: T.nilable(::String), frequency: T.nilable(::UnifiedRubySDK::Shared::Frequency), max: T.nilable(::Float), min: T.nilable(::Float), type: T.nilable(::UnifiedRubySDK::Shared::AtsCompensationType)).void }
      def initialize(currency: nil, frequency: nil, max: nil, min: nil, type: nil)
        @currency = currency
        @frequency = frequency
        @max = max
        @min = min
        @type = type
      end
    end
  end
end
