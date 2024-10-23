# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class PropertyPropertyUserUrnIetfParamsScimSchemasExtensionEnterprise20UserManager < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :dollar_ref, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('$ref') } }

      field :display_name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('displayName') } }

      field :manager_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('managerId') } }

      field :type, T.nilable(::UnifiedRubySDK::Shared::PropertyPropertyUserUrnIetfParamsScimSchemasExtensionEnterprise20UserManagerType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::PropertyPropertyUserUrnIetfParamsScimSchemasExtensionEnterprise20UserManagerType, true) } }

      field :value, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('value') } }


      sig { params(dollar_ref: T.nilable(::String), display_name: T.nilable(::String), manager_id: T.nilable(::String), type: T.nilable(::UnifiedRubySDK::Shared::PropertyPropertyUserUrnIetfParamsScimSchemasExtensionEnterprise20UserManagerType), value: T.nilable(::String)).void }
      def initialize(dollar_ref: nil, display_name: nil, manager_id: nil, type: nil, value: nil)
        @dollar_ref = dollar_ref
        @display_name = display_name
        @manager_id = manager_id
        @type = type
        @value = value
      end
    end
  end
end
