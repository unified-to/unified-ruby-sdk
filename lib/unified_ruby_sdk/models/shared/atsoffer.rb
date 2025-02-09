# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class AtsOffer < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :accepted_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('accepted_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # compensation details for the offer
      field :compensation, T.nilable(T::Array[::UnifiedRubySDK::Shared::AtsCompensation]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('compensation') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :creator_user_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('creator_user_id') } }

      field :employee_user_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('employee_user_id') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :raw, T.nilable(::UnifiedRubySDK::Shared::AtsOfferRaw), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :rejected_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('rejected_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :sent_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('sent_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :start_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('start_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :status, T.nilable(::UnifiedRubySDK::Shared::AtsOfferStatus), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('status'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::AtsOfferStatus, true) } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(accepted_at: T.nilable(::DateTime), compensation: T.nilable(T::Array[::UnifiedRubySDK::Shared::AtsCompensation]), created_at: T.nilable(::DateTime), creator_user_id: T.nilable(::String), employee_user_id: T.nilable(::String), id: T.nilable(::String), raw: T.nilable(::UnifiedRubySDK::Shared::AtsOfferRaw), rejected_at: T.nilable(::DateTime), sent_at: T.nilable(::DateTime), start_at: T.nilable(::DateTime), status: T.nilable(::UnifiedRubySDK::Shared::AtsOfferStatus), updated_at: T.nilable(::DateTime)).void }
      def initialize(accepted_at: nil, compensation: nil, created_at: nil, creator_user_id: nil, employee_user_id: nil, id: nil, raw: nil, rejected_at: nil, sent_at: nil, start_at: nil, status: nil, updated_at: nil)
        @accepted_at = accepted_at
        @compensation = compensation
        @created_at = created_at
        @creator_user_id = creator_user_id
        @employee_user_id = employee_user_id
        @id = id
        @raw = raw
        @rejected_at = rejected_at
        @sent_at = sent_at
        @start_at = start_at
        @status = status
        @updated_at = updated_at
      end
    end
  end
end
