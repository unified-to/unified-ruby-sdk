# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module UnifiedRubySDK
  module Shared

    class EnrichPersonWorkHistory < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :title, String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('title') } }

      field :company_domain, T.nilable(String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('company_domain') } }

      field :company_id, T.nilable(String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('company_id') } }

      field :company_name, T.nilable(String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('company_name') } }

      field :end_at, T.nilable(DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('end_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :location, T.nilable(String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('location') } }

      field :start_at, T.nilable(DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('start_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(title: String, company_domain: T.nilable(String), company_id: T.nilable(String), company_name: T.nilable(String), end_at: T.nilable(DateTime), location: T.nilable(String), start_at: T.nilable(DateTime)).void }
      def initialize(title: nil, company_domain: nil, company_id: nil, company_name: nil, end_at: nil, location: nil, start_at: nil)
        @title = title
        @company_domain = company_domain
        @company_id = company_id
        @company_name = company_name
        @end_at = end_at
        @location = location
        @start_at = start_at
      end
    end
  end
end
