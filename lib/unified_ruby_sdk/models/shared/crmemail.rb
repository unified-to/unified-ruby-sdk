# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class CrmEmail < ::Crystalline::FieldAugmented
      extend T::Sig


      field :email, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('email') } }

      field :type, T.nilable(::UnifiedRubySDK::Shared::CrmEmailType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::CrmEmailType, true) } }


      sig { params(email: T.nilable(::String), type: T.nilable(::UnifiedRubySDK::Shared::CrmEmailType)).void }
      def initialize(email: nil, type: nil)
        @email = email
        @type = type
      end
    end
  end
end
