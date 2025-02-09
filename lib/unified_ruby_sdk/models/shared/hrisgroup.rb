# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class HrisGroup < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :company_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('company_id') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('description') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :is_active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_active') } }

      field :manager_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('manager_ids') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :parent_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('parent_id') } }

      field :raw, T.nilable(::UnifiedRubySDK::Shared::HrisGroupRaw), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :type, T.nilable(::UnifiedRubySDK::Shared::HrisGroupType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::HrisGroupType, true) } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :user_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('user_ids') } }


      sig { params(company_id: T.nilable(::String), created_at: T.nilable(::DateTime), description: T.nilable(::String), id: T.nilable(::String), is_active: T.nilable(T::Boolean), manager_ids: T.nilable(T::Array[::String]), name: T.nilable(::String), parent_id: T.nilable(::String), raw: T.nilable(::UnifiedRubySDK::Shared::HrisGroupRaw), type: T.nilable(::UnifiedRubySDK::Shared::HrisGroupType), updated_at: T.nilable(::DateTime), user_ids: T.nilable(T::Array[::String])).void }
      def initialize(company_id: nil, created_at: nil, description: nil, id: nil, is_active: nil, manager_ids: nil, name: nil, parent_id: nil, raw: nil, type: nil, updated_at: nil, user_ids: nil)
        @company_id = company_id
        @created_at = created_at
        @description = description
        @id = id
        @is_active = is_active
        @manager_ids = manager_ids
        @name = name
        @parent_id = parent_id
        @raw = raw
        @type = type
        @updated_at = updated_at
        @user_ids = user_ids
      end
    end
  end
end
