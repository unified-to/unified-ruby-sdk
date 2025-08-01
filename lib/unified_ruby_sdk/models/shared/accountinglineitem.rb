# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class AccountingLineitem
        extend T::Sig
        include Crystalline::MetadataFields


        field :account_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('account_id') } }

        field :category_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('category_ids') } }

        field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

        field :discount_amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('discount_amount') } }

        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

        field :item_description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('item_description') } }

        field :item_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('item_id') } }

        field :item_name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('item_name') } }

        field :item_sku, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('item_sku') } }

        field :notes, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('notes') } }

        field :refund_amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('refund_amount') } }

        field :refunded_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('refunded_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

        field :tax_amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('tax_amount') } }

        field :taxrate_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('taxrate_id') } }

        field :total_amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('total_amount') } }

        field :unit_amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('unit_amount') } }

        field :unit_quantity, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('unit_quantity') } }

        field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


        sig { params(account_id: T.nilable(::String), category_ids: T.nilable(T::Array[::String]), created_at: T.nilable(::DateTime), discount_amount: T.nilable(::Float), id: T.nilable(::String), item_description: T.nilable(::String), item_id: T.nilable(::String), item_name: T.nilable(::String), item_sku: T.nilable(::String), notes: T.nilable(::String), refund_amount: T.nilable(::Float), refunded_at: T.nilable(::DateTime), tax_amount: T.nilable(::Float), taxrate_id: T.nilable(::String), total_amount: T.nilable(::Float), unit_amount: T.nilable(::Float), unit_quantity: T.nilable(::Float), updated_at: T.nilable(::DateTime)).void }
        def initialize(account_id: nil, category_ids: nil, created_at: nil, discount_amount: nil, id: nil, item_description: nil, item_id: nil, item_name: nil, item_sku: nil, notes: nil, refund_amount: nil, refunded_at: nil, tax_amount: nil, taxrate_id: nil, total_amount: nil, unit_amount: nil, unit_quantity: nil, updated_at: nil)
          @account_id = account_id
          @category_ids = category_ids
          @created_at = created_at
          @discount_amount = discount_amount
          @id = id
          @item_description = item_description
          @item_id = item_id
          @item_name = item_name
          @item_sku = item_sku
          @notes = notes
          @refund_amount = refund_amount
          @refunded_at = refunded_at
          @tax_amount = tax_amount
          @taxrate_id = taxrate_id
          @total_amount = total_amount
          @unit_amount = unit_amount
          @unit_quantity = unit_quantity
          @updated_at = updated_at
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @account_id == other.account_id
          return false unless @category_ids == other.category_ids
          return false unless @created_at == other.created_at
          return false unless @discount_amount == other.discount_amount
          return false unless @id == other.id
          return false unless @item_description == other.item_description
          return false unless @item_id == other.item_id
          return false unless @item_name == other.item_name
          return false unless @item_sku == other.item_sku
          return false unless @notes == other.notes
          return false unless @refund_amount == other.refund_amount
          return false unless @refunded_at == other.refunded_at
          return false unless @tax_amount == other.tax_amount
          return false unless @taxrate_id == other.taxrate_id
          return false unless @total_amount == other.total_amount
          return false unless @unit_amount == other.unit_amount
          return false unless @unit_quantity == other.unit_quantity
          return false unless @updated_at == other.updated_at
          true
        end
      end
    end
  end
end
