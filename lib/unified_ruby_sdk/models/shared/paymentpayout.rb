# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class PaymentPayout
        extend T::Sig
        include Crystalline::MetadataFields


        field :total_amount, ::Float, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('total_amount') } }

        field :created_at, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at') } }

        field :currency, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('currency') } }

        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

        field :notes, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('notes') } }

        field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

        field :status, T.nilable(Models::Shared::PaymentPayoutStatus), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('status'), 'decoder': Utils.enum_from_string(Models::Shared::PaymentPayoutStatus, true) } }

        field :updated_at, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at') } }


        sig { params(total_amount: ::Float, created_at: T.nilable(::String), currency: T.nilable(::String), id: T.nilable(::String), notes: T.nilable(::String), raw: T.nilable(T::Hash[Symbol, ::Object]), status: T.nilable(Models::Shared::PaymentPayoutStatus), updated_at: T.nilable(::String)).void }
        def initialize(total_amount: nil, created_at: nil, currency: nil, id: nil, notes: nil, raw: nil, status: nil, updated_at: nil)
          @total_amount = total_amount
          @created_at = created_at
          @currency = currency
          @id = id
          @notes = notes
          @raw = raw
          @status = status
          @updated_at = updated_at
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @total_amount == other.total_amount
          return false unless @created_at == other.created_at
          return false unless @currency == other.currency
          return false unless @id == other.id
          return false unless @notes == other.notes
          return false unless @raw == other.raw
          return false unless @status == other.status
          return false unless @updated_at == other.updated_at
          true
        end
      end
    end
  end
end
