# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/property_crmpipeline_raw'

module UnifiedRubySDK
  module Shared

    class CrmPipeline < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :created_at, T.nilable(DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :deal_probability, T.nilable(Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('deal_probability') } }

      field :display_order, T.nilable(Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('display_order') } }

      field :id, T.nilable(String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :is_active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_active') } }

      field :name, T.nilable(String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :raw, T.nilable(Shared::PropertyCrmPipelineRaw), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :updated_at, T.nilable(DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(created_at: T.nilable(DateTime), deal_probability: T.nilable(Float), display_order: T.nilable(Float), id: T.nilable(String), is_active: T.nilable(T::Boolean), name: T.nilable(String), raw: T.nilable(Shared::PropertyCrmPipelineRaw), updated_at: T.nilable(DateTime)).void }
      def initialize(created_at: nil, deal_probability: nil, display_order: nil, id: nil, is_active: nil, name: nil, raw: nil, updated_at: nil)
        @created_at = created_at
        @deal_probability = deal_probability
        @display_order = display_order
        @id = id
        @is_active = is_active
        @name = name
        @raw = raw
        @updated_at = updated_at
      end
    end
  end
end
