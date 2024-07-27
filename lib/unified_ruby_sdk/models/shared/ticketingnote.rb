# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class TicketingNote < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :customer_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('customer_id') } }

      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('description') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :ticket_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('ticket_id') } }

      field :updated_at, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at') } }

      field :user_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('user_id') } }


      sig { params(created_at: T.nilable(::DateTime), customer_id: T.nilable(::String), description: T.nilable(::String), id: T.nilable(::String), raw: T.nilable(T::Hash[Symbol, ::Object]), ticket_id: T.nilable(::String), updated_at: T.nilable(::String), user_id: T.nilable(::String)).void }
      def initialize(created_at: nil, customer_id: nil, description: nil, id: nil, raw: nil, ticket_id: nil, updated_at: nil, user_id: nil)
        @created_at = created_at
        @customer_id = customer_id
        @description = description
        @id = id
        @raw = raw
        @ticket_id = ticket_id
        @updated_at = updated_at
        @user_id = user_id
      end
    end
  end
end
