# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    
      # an organization.
      class PropertyScimUserUrnIetfParamsScimSchemasExtensionEnterprise20User
        extend T::Sig
        include Crystalline::MetadataFields


        field :additional_managers, T.nilable(T::Array[Models::Shared::ScimManager]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('additionalManagers') } }

        field :birthday, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('birthday'), 'decoder': Utils.datetime_from_iso_format(true) } }

        field :cost_center, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('costCenter') } }

        field :department, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('department') } }

        field :division, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('division') } }

        field :employee_number, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('employeeNumber') } }

        field :end_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('endDate'), 'decoder': Utils.datetime_from_iso_format(true) } }

        field :gender, T.nilable(Models::Shared::PropertyScimUserUrnIetfParamsScimSchemasExtensionEnterprise20UserGender), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('gender'), 'decoder': Utils.enum_from_string(Models::Shared::PropertyScimUserUrnIetfParamsScimSchemasExtensionEnterprise20UserGender, true) } }

        field :level, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('level') } }

        field :location, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('location') } }
        # "id" attribute of another User.
        field :manager, T.nilable(Models::Shared::PropertyScimUserUrnIetfParamsScimSchemasExtensionEnterprise20UserManager), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('manager') } }

        field :organization, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('organization') } }

        field :start_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('startDate'), 'decoder': Utils.datetime_from_iso_format(true) } }


        sig { params(additional_managers: T.nilable(T::Array[Models::Shared::ScimManager]), birthday: T.nilable(::DateTime), cost_center: T.nilable(::String), department: T.nilable(::String), division: T.nilable(::String), employee_number: T.nilable(::String), end_date: T.nilable(::DateTime), gender: T.nilable(Models::Shared::PropertyScimUserUrnIetfParamsScimSchemasExtensionEnterprise20UserGender), level: T.nilable(::String), location: T.nilable(::String), manager: T.nilable(Models::Shared::PropertyScimUserUrnIetfParamsScimSchemasExtensionEnterprise20UserManager), organization: T.nilable(::String), start_date: T.nilable(::DateTime)).void }
        def initialize(additional_managers: nil, birthday: nil, cost_center: nil, department: nil, division: nil, employee_number: nil, end_date: nil, gender: nil, level: nil, location: nil, manager: nil, organization: nil, start_date: nil)
          @additional_managers = additional_managers
          @birthday = birthday
          @cost_center = cost_center
          @department = department
          @division = division
          @employee_number = employee_number
          @end_date = end_date
          @gender = gender
          @level = level
          @location = location
          @manager = manager
          @organization = organization
          @start_date = start_date
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @additional_managers == other.additional_managers
          return false unless @birthday == other.birthday
          return false unless @cost_center == other.cost_center
          return false unless @department == other.department
          return false unless @division == other.division
          return false unless @employee_number == other.employee_number
          return false unless @end_date == other.end_date
          return false unless @gender == other.gender
          return false unless @level == other.level
          return false unless @location == other.location
          return false unless @manager == other.manager
          return false unless @organization == other.organization
          return false unless @start_date == other.start_date
          true
        end
      end
    end
  end
end
