# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared

    class Frequency < T::Enum
      enums do
        ONE_TIME = new('ONE_TIME')
        DAY = new('DAY')
        QUARTER = new('QUARTER')
        YEAR = new('YEAR')
        HOUR = new('HOUR')
        MONTH = new('MONTH')
        WEEK = new('WEEK')
      end
    end



    class AtsCompensationType < T::Enum
      enums do
        SALARY = new('SALARY')
        BONUS = new('BONUS')
        STOCK_OPTIONS = new('STOCK_OPTIONS')
        EQUITY = new('EQUITY')
        OTHER = new('OTHER')
      end
    end



    class AtsCompensation < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :type, Shared::AtsCompensationType, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Shared::AtsCompensationType, false) } }

      field :currency, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('currency') } }

      field :frequency, T.nilable(Shared::Frequency), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('frequency'), 'decoder': Utils.enum_from_string(Shared::Frequency, true) } }

      field :max, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('max') } }

      field :min, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('min') } }


      sig { params(type: Shared::AtsCompensationType, currency: T.nilable(String), frequency: T.nilable(Shared::Frequency), max: T.nilable(Float), min: T.nilable(Float)).void }
      def initialize(type: nil, currency: nil, frequency: nil, max: nil, min: nil)
        @type = type
        @currency = currency
        @frequency = frequency
        @max = max
        @min = min
      end
    end
  end
end
