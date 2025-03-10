# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class CommerceItemVariant < ::Crystalline::FieldAugmented
      extend T::Sig


      field :available_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('available_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('description') } }

      field :height, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('height') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :inventory_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('inventory_id') } }

      field :is_active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_active') } }

      field :is_featured, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_featured') } }

      field :is_visible, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_visible') } }

      field :length, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('length') } }

      field :media, T.nilable(T::Array[::UnifiedRubySDK::Shared::CommerceItemMedia]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('media') } }

      field :metadata, T.nilable(T::Array[::UnifiedRubySDK::Shared::CommerceItemMetadata]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('metadata') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :options, T.nilable(T::Array[::UnifiedRubySDK::Shared::CommerceItemOption]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('options') } }

      field :prices, T.nilable(T::Array[::UnifiedRubySDK::Shared::CommerceItemPrice]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('prices') } }

      field :public_description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('public_description') } }

      field :public_name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('public_name') } }

      field :requires_shipping, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('requires_shipping') } }

      field :size_unit, T.nilable(::UnifiedRubySDK::Shared::SizeUnit), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('size_unit'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::SizeUnit, true) } }

      field :sku, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('sku') } }

      field :tags, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('tags') } }

      field :total_stock, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('total_stock') } }

      field :weight, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('weight') } }

      field :weight_unit, T.nilable(::UnifiedRubySDK::Shared::WeightUnit), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('weight_unit'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::WeightUnit, true) } }

      field :width, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('width') } }


      sig { params(available_at: T.nilable(::DateTime), description: T.nilable(::String), height: T.nilable(::Float), id: T.nilable(::String), inventory_id: T.nilable(::String), is_active: T.nilable(T::Boolean), is_featured: T.nilable(T::Boolean), is_visible: T.nilable(T::Boolean), length: T.nilable(::Float), media: T.nilable(T::Array[::UnifiedRubySDK::Shared::CommerceItemMedia]), metadata: T.nilable(T::Array[::UnifiedRubySDK::Shared::CommerceItemMetadata]), name: T.nilable(::String), options: T.nilable(T::Array[::UnifiedRubySDK::Shared::CommerceItemOption]), prices: T.nilable(T::Array[::UnifiedRubySDK::Shared::CommerceItemPrice]), public_description: T.nilable(::String), public_name: T.nilable(::String), requires_shipping: T.nilable(T::Boolean), size_unit: T.nilable(::UnifiedRubySDK::Shared::SizeUnit), sku: T.nilable(::String), tags: T.nilable(T::Array[::String]), total_stock: T.nilable(::Float), weight: T.nilable(::Float), weight_unit: T.nilable(::UnifiedRubySDK::Shared::WeightUnit), width: T.nilable(::Float)).void }
      def initialize(available_at: nil, description: nil, height: nil, id: nil, inventory_id: nil, is_active: nil, is_featured: nil, is_visible: nil, length: nil, media: nil, metadata: nil, name: nil, options: nil, prices: nil, public_description: nil, public_name: nil, requires_shipping: nil, size_unit: nil, sku: nil, tags: nil, total_stock: nil, weight: nil, weight_unit: nil, width: nil)
        @available_at = available_at
        @description = description
        @height = height
        @id = id
        @inventory_id = inventory_id
        @is_active = is_active
        @is_featured = is_featured
        @is_visible = is_visible
        @length = length
        @media = media
        @metadata = metadata
        @name = name
        @options = options
        @prices = prices
        @public_description = public_description
        @public_name = public_name
        @requires_shipping = requires_shipping
        @size_unit = size_unit
        @sku = sku
        @tags = tags
        @total_stock = total_stock
        @weight = weight
        @weight_unit = weight_unit
        @width = width
      end
    end
  end
end
