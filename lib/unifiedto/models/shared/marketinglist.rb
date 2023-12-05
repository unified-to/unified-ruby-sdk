# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/property_marketinglist_raw'

module UnifiedRubySDK
  module Shared
    # Mailing List
    class MarketingList < UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :created_at, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('created_at') } }

      field :id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }

      field :name, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('name') } }
      # The raw data returned by the integration for this list
      field :raw, T.nilable(Shared::PropertyMarketingListRaw), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('raw') } }

      field :updated_at, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(created_at: T.nilable(String), id: T.nilable(String), name: T.nilable(String), raw: T.nilable(Shared::PropertyMarketingListRaw), updated_at: T.nilable(DateTime)).void }
      def initialize(created_at: nil, id: nil, name: nil, raw: nil, updated_at: nil)
        @created_at = created_at
        @id = id
        @name = name
        @raw = raw
        @updated_at = updated_at
      end
    end
  end
end
