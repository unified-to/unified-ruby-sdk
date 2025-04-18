# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class AccountingContactPaymentMethod
        extend T::Sig
        include Crystalline::MetadataFields


        field :type, Models::Shared::AccountingContactPaymentMethodType, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Models::Shared::AccountingContactPaymentMethodType, false) } }

        field :default, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('default') } }

        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

        field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }


        sig { params(type: Models::Shared::AccountingContactPaymentMethodType, default: T.nilable(T::Boolean), id: T.nilable(::String), name: T.nilable(::String)).void }
        def initialize(type: nil, default: nil, id: nil, name: nil)
          @type = type
          @default = default
          @id = id
          @name = name
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @type == other.type
          return false unless @default == other.default
          return false unless @id == other.id
          return false unless @name == other.name
          true
        end
      end
    end
  end
end
