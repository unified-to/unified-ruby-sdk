# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class HrisPayslipDetail
        extend T::Sig
        include Crystalline::MetadataFields


        field :amount, ::Float, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('amount') } }

        field :company_amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('company_amount') } }

        field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('description') } }

        field :employee_amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('employee_amount') } }

        field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

        field :type, T.nilable(Models::Shared::HrisPayslipDetailType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Models::Shared::HrisPayslipDetailType, true) } }


        sig { params(amount: ::Float, company_amount: T.nilable(::Float), description: T.nilable(::String), employee_amount: T.nilable(::Float), name: T.nilable(::String), type: T.nilable(Models::Shared::HrisPayslipDetailType)).void }
        def initialize(amount: nil, company_amount: nil, description: nil, employee_amount: nil, name: nil, type: nil)
          @amount = amount
          @company_amount = company_amount
          @description = description
          @employee_amount = employee_amount
          @name = name
          @type = type
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @amount == other.amount
          return false unless @company_amount == other.company_amount
          return false unless @description == other.description
          return false unless @employee_amount == other.employee_amount
          return false unless @name == other.name
          return false unless @type == other.type
          true
        end
      end
    end
  end
end
