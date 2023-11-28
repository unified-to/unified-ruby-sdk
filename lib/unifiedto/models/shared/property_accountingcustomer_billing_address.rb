# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared

    class PropertyAccountingCustomerBillingAddress < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :address1, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('address1') } }

      field :address2, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('address2') } }

      field :city, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('city') } }

      field :country, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('country') } }

      field :country_code, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('country_code') } }

      field :postal_code, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('postal_code') } }

      field :region, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('region') } }

      field :region_code, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('region_code') } }


      sig { params(address1: T.nilable(String), address2: T.nilable(String), city: T.nilable(String), country: T.nilable(String), country_code: T.nilable(String), postal_code: T.nilable(String), region: T.nilable(String), region_code: T.nilable(String)).void }
      def initialize(address1: nil, address2: nil, city: nil, country: nil, country_code: nil, postal_code: nil, region: nil, region_code: nil)
        @address1 = address1
        @address2 = address2
        @city = city
        @country = country
        @country_code = country_code
        @postal_code = postal_code
        @region = region
        @region_code = region_code
      end
    end
  end
end
