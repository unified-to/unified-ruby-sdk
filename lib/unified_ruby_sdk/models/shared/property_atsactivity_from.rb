# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class PropertyAtsActivityFrom < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :email, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('email') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :type, T.nilable(::UnifiedRubySDK::Shared::PropertyAtsActivityFromType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::PropertyAtsActivityFromType, true) } }


      sig { params(email: ::String, name: T.nilable(::String), type: T.nilable(::UnifiedRubySDK::Shared::PropertyAtsActivityFromType)).void }
      def initialize(email: nil, name: nil, type: nil)
        @email = email
        @name = name
        @type = type
      end
    end
  end
end
