# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class PropertyAccountingOrderBillingAddress
        extend T::Sig
        include Crystalline::MetadataFields


        field :address1, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('address1') } }

        field :address2, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('address2') } }

        field :city, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('city') } }

        field :country, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('country') } }

        field :country_code, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('country_code') } }

        field :postal_code, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('postal_code') } }

        field :region, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('region') } }

        field :region_code, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('region_code') } }


        sig { params(address1: T.nilable(::String), address2: T.nilable(::String), city: T.nilable(::String), country: T.nilable(::String), country_code: T.nilable(::String), postal_code: T.nilable(::String), region: T.nilable(::String), region_code: T.nilable(::String)).void }
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

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @address1 == other.address1
          return false unless @address2 == other.address2
          return false unless @city == other.city
          return false unless @country == other.country
          return false unless @country_code == other.country_code
          return false unless @postal_code == other.postal_code
          return false unless @region == other.region
          return false unless @region_code == other.region_code
          true
        end
      end
    end
  end
end
