# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class PaymentSubscription < ::Crystalline::FieldAugmented
      extend T::Sig


      field :canceled_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('canceled_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :contact_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('contact_id') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :currency, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('currency') } }

      field :current_period_end_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('current_period_end_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :current_period_start_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('current_period_start_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :day_of_month, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('day_of_month') } }

      field :day_of_week, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('day_of_week') } }

      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('description') } }

      field :end_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('end_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :interval, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('interval') } }

      field :interval_unit, T.nilable(::UnifiedRubySDK::Shared::IntervalUnit), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('interval_unit'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::IntervalUnit, true) } }

      field :invoice_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('invoice_id') } }

      field :lineitems, T.nilable(T::Array[::UnifiedRubySDK::Shared::PaymentLineitem]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('lineitems') } }

      field :month, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('month') } }

      field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :start_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('start_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :status, T.nilable(::UnifiedRubySDK::Shared::PaymentSubscriptionStatus), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('status'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::PaymentSubscriptionStatus, true) } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(canceled_at: T.nilable(::DateTime), contact_id: T.nilable(::String), created_at: T.nilable(::DateTime), currency: T.nilable(::String), current_period_end_at: T.nilable(::DateTime), current_period_start_at: T.nilable(::DateTime), day_of_month: T.nilable(::Float), day_of_week: T.nilable(::Float), description: T.nilable(::String), end_at: T.nilable(::DateTime), id: T.nilable(::String), interval: T.nilable(::Float), interval_unit: T.nilable(::UnifiedRubySDK::Shared::IntervalUnit), invoice_id: T.nilable(::String), lineitems: T.nilable(T::Array[::UnifiedRubySDK::Shared::PaymentLineitem]), month: T.nilable(::Float), raw: T.nilable(T::Hash[Symbol, ::Object]), start_at: T.nilable(::DateTime), status: T.nilable(::UnifiedRubySDK::Shared::PaymentSubscriptionStatus), updated_at: T.nilable(::DateTime)).void }
      def initialize(canceled_at: nil, contact_id: nil, created_at: nil, currency: nil, current_period_end_at: nil, current_period_start_at: nil, day_of_month: nil, day_of_week: nil, description: nil, end_at: nil, id: nil, interval: nil, interval_unit: nil, invoice_id: nil, lineitems: nil, month: nil, raw: nil, start_at: nil, status: nil, updated_at: nil)
        @canceled_at = canceled_at
        @contact_id = contact_id
        @created_at = created_at
        @currency = currency
        @current_period_end_at = current_period_end_at
        @current_period_start_at = current_period_start_at
        @day_of_month = day_of_month
        @day_of_week = day_of_week
        @description = description
        @end_at = end_at
        @id = id
        @interval = interval
        @interval_unit = interval_unit
        @invoice_id = invoice_id
        @lineitems = lineitems
        @month = month
        @raw = raw
        @start_at = start_at
        @status = status
        @updated_at = updated_at
      end
    end
  end
end
