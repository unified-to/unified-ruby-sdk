# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class AccountingContactPaymentMethod < ::Crystalline::FieldAugmented
      extend T::Sig


      field :type, ::UnifiedRubySDK::Shared::AccountingContactPaymentMethodType, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::AccountingContactPaymentMethodType, false) } }

      field :default, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('default') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }


      sig { params(type: ::UnifiedRubySDK::Shared::AccountingContactPaymentMethodType, default: T.nilable(T::Boolean), id: T.nilable(::String), name: T.nilable(::String)).void }
      def initialize(type: nil, default: nil, id: nil, name: nil)
        @type = type
        @default = default
        @id = id
        @name = name
      end
    end
  end
end
