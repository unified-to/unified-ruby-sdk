# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/drinktype'

module OpenApiSDK
  module Shared

    class DrinkInput < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The name of the drink.
      field :name, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('name') } }
      # The price of one unit of the drink in US cents.
      field :price, Float, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('price') } }
      # The product code of the drink, only available when authenticated.
      field :product_code, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('productCode') } }
      # The type of drink.
      field :type, T.nilable(Shared::DrinkType), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Shared::DrinkType, true) } }


      sig { params(name: String, price: Float, product_code: T.nilable(String), type: T.nilable(Shared::DrinkType)).void }
      def initialize(name: nil, price: nil, product_code: nil, type: nil)
        @name = name
        @price = price
        @product_code = product_code
        @type = type
      end
    end


    class Drink < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The name of the drink.
      field :name, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('name') } }
      # The price of one unit of the drink in US cents.
      field :price, Float, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('price') } }
      # The product code of the drink, only available when authenticated.
      field :product_code, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('productCode') } }
      # The number of units of the drink in stock, only available when authenticated.
      field :stock, T.nilable(Integer), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('stock') } }
      # The type of drink.
      field :type, T.nilable(Shared::DrinkType), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Shared::DrinkType, true) } }


      sig { params(name: String, price: Float, product_code: T.nilable(String), stock: T.nilable(Integer), type: T.nilable(Shared::DrinkType)).void }
      def initialize(name: nil, price: nil, product_code: nil, stock: nil, type: nil)
        @name = name
        @price = price
        @product_code = product_code
        @stock = stock
        @type = type
      end
    end
  end
end
