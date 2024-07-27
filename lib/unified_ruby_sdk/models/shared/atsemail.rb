# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class AtsEmail < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :email, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('email') } }

      field :type, T.nilable(::UnifiedRubySDK::Shared::AtsEmailType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::AtsEmailType, true) } }


      sig { params(email: ::String, type: T.nilable(::UnifiedRubySDK::Shared::AtsEmailType)).void }
      def initialize(email: nil, type: nil)
        @email = email
        @type = type
      end
    end
  end
end
