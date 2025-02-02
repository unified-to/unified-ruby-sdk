# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class CommerceInventory < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :available, ::Float, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('available') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :item_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('item_id') } }

      field :item_option_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('item_option_id') } }

      field :item_variant_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('item_variant_id') } }

      field :location_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('location_id') } }

      field :raw, T.nilable(::UnifiedRubySDK::Shared::CommerceInventoryRaw), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(available: ::Float, id: T.nilable(::String), item_id: T.nilable(::String), item_option_id: T.nilable(::String), item_variant_id: T.nilable(::String), location_id: T.nilable(::String), raw: T.nilable(::UnifiedRubySDK::Shared::CommerceInventoryRaw), updated_at: T.nilable(::DateTime)).void }
      def initialize(available: nil, id: nil, item_id: nil, item_option_id: nil, item_variant_id: nil, location_id: nil, raw: nil, updated_at: nil)
        @available = available
        @id = id
        @item_id = item_id
        @item_option_id = item_option_id
        @item_variant_id = item_variant_id
        @location_id = location_id
        @raw = raw
        @updated_at = updated_at
      end
    end
  end
end
