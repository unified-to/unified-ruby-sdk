# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class AccountingTelephone < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :telephone, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('telephone') } }

      field :type, T.nilable(::UnifiedRubySDK::Shared::AccountingTelephoneType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::AccountingTelephoneType, true) } }


      sig { params(telephone: ::String, type: T.nilable(::UnifiedRubySDK::Shared::AccountingTelephoneType)).void }
      def initialize(telephone: nil, type: nil)
        @telephone = telephone
        @type = type
      end
    end
  end
end
