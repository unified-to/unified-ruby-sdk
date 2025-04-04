# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class HrisTimeoff < ::Crystalline::FieldAugmented
      extend T::Sig


      field :start_at, ::DateTime, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('start_at'), 'decoder': Utils.datetime_from_iso_format(false) } }

      field :approved_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('approved_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :approver_user_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('approver_user_id') } }

      field :comments, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('comments') } }

      field :company_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('company_id') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :end_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('end_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :raw, T.nilable(::UnifiedRubySDK::Shared::HrisTimeoffRaw), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :status, T.nilable(::UnifiedRubySDK::Shared::HrisTimeoffStatus), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('status'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::HrisTimeoffStatus, true) } }

      field :type, T.nilable(::UnifiedRubySDK::Shared::HrisTimeoffType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::HrisTimeoffType, true) } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :user_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('user_id') } }


      sig { params(start_at: ::DateTime, approved_at: T.nilable(::DateTime), approver_user_id: T.nilable(::String), comments: T.nilable(::String), company_id: T.nilable(::String), created_at: T.nilable(::DateTime), end_at: T.nilable(::DateTime), id: T.nilable(::String), raw: T.nilable(::UnifiedRubySDK::Shared::HrisTimeoffRaw), status: T.nilable(::UnifiedRubySDK::Shared::HrisTimeoffStatus), type: T.nilable(::UnifiedRubySDK::Shared::HrisTimeoffType), updated_at: T.nilable(::DateTime), user_id: T.nilable(::String)).void }
      def initialize(start_at: nil, approved_at: nil, approver_user_id: nil, comments: nil, company_id: nil, created_at: nil, end_at: nil, id: nil, raw: nil, status: nil, type: nil, updated_at: nil, user_id: nil)
        @start_at = start_at
        @approved_at = approved_at
        @approver_user_id = approver_user_id
        @comments = comments
        @company_id = company_id
        @created_at = created_at
        @end_at = end_at
        @id = id
        @raw = raw
        @status = status
        @type = type
        @updated_at = updated_at
        @user_id = user_id
      end
    end
  end
end
