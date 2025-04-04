# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class HrisEmployee < ::Crystalline::FieldAugmented
      extend T::Sig


      field :address, T.nilable(::UnifiedRubySDK::Shared::PropertyHrisEmployeeAddress), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('address') } }

      field :bio, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('bio') } }

      field :company_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('company_id') } }

      field :compensation, T.nilable(T::Array[::UnifiedRubySDK::Shared::HrisCompensation]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('compensation') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :currency, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('currency') } }

      field :date_of_birth, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('date_of_birth'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :department, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('department') } }

      field :division, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('division') } }

      field :emails, T.nilable(T::Array[::UnifiedRubySDK::Shared::HrisEmail]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('emails') } }

      field :employee_number, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('employee_number') } }

      field :employee_roles, T.nilable(T::Array[::UnifiedRubySDK::Shared::PropertyHrisEmployeeEmployeeRoles]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('employee_roles') } }

      field :employment_status, T.nilable(::UnifiedRubySDK::Shared::EmploymentStatus), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('employment_status'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::EmploymentStatus, true) } }

      field :employment_type, T.nilable(::UnifiedRubySDK::Shared::HrisEmployeeEmploymentType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('employment_type'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::HrisEmployeeEmploymentType, true) } }

      field :gender, T.nilable(::UnifiedRubySDK::Shared::HrisEmployeeGender), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('gender'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::HrisEmployeeGender, true) } }
      # Which groups/teams/units that this employee/user belongs to.  May not have all of the Group fields present, but should have id, name, or email.
      field :groups, T.nilable(T::Array[::UnifiedRubySDK::Shared::HrisGroup]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('groups') } }

      field :hired_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('hired_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :image_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('image_url') } }

      field :language_locale, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('language_locale') } }

      field :location, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('location') } }

      field :locations, T.nilable(T::Array[::UnifiedRubySDK::Shared::HrisLocation]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('locations') } }

      field :manager_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('manager_id') } }

      field :marital_status, T.nilable(::UnifiedRubySDK::Shared::MaritalStatus), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('marital_status'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::MaritalStatus, true) } }

      field :metadata, T.nilable(T::Array[::UnifiedRubySDK::Shared::HrisMetadata]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('metadata') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :pronouns, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('pronouns') } }

      field :raw, T.nilable(::UnifiedRubySDK::Shared::HrisEmployeeRaw), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :salutation, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('salutation') } }

      field :ssn_sin, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('ssn_sin') } }

      field :storage_quota_allocated, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('storage_quota_allocated') } }

      field :storage_quota_available, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('storage_quota_available') } }

      field :storage_quota_used, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('storage_quota_used') } }

      field :telephones, T.nilable(T::Array[::UnifiedRubySDK::Shared::HrisTelephone]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('telephones') } }

      field :terminated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('terminated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :timezone, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('timezone') } }

      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('title') } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(address: T.nilable(::UnifiedRubySDK::Shared::PropertyHrisEmployeeAddress), bio: T.nilable(::String), company_id: T.nilable(::String), compensation: T.nilable(T::Array[::UnifiedRubySDK::Shared::HrisCompensation]), created_at: T.nilable(::DateTime), currency: T.nilable(::String), date_of_birth: T.nilable(::DateTime), department: T.nilable(::String), division: T.nilable(::String), emails: T.nilable(T::Array[::UnifiedRubySDK::Shared::HrisEmail]), employee_number: T.nilable(::String), employee_roles: T.nilable(T::Array[::UnifiedRubySDK::Shared::PropertyHrisEmployeeEmployeeRoles]), employment_status: T.nilable(::UnifiedRubySDK::Shared::EmploymentStatus), employment_type: T.nilable(::UnifiedRubySDK::Shared::HrisEmployeeEmploymentType), gender: T.nilable(::UnifiedRubySDK::Shared::HrisEmployeeGender), groups: T.nilable(T::Array[::UnifiedRubySDK::Shared::HrisGroup]), hired_at: T.nilable(::DateTime), id: T.nilable(::String), image_url: T.nilable(::String), language_locale: T.nilable(::String), location: T.nilable(::String), locations: T.nilable(T::Array[::UnifiedRubySDK::Shared::HrisLocation]), manager_id: T.nilable(::String), marital_status: T.nilable(::UnifiedRubySDK::Shared::MaritalStatus), metadata: T.nilable(T::Array[::UnifiedRubySDK::Shared::HrisMetadata]), name: T.nilable(::String), pronouns: T.nilable(::String), raw: T.nilable(::UnifiedRubySDK::Shared::HrisEmployeeRaw), salutation: T.nilable(::String), ssn_sin: T.nilable(::String), storage_quota_allocated: T.nilable(::Float), storage_quota_available: T.nilable(::Float), storage_quota_used: T.nilable(::Float), telephones: T.nilable(T::Array[::UnifiedRubySDK::Shared::HrisTelephone]), terminated_at: T.nilable(::DateTime), timezone: T.nilable(::String), title: T.nilable(::String), updated_at: T.nilable(::DateTime)).void }
      def initialize(address: nil, bio: nil, company_id: nil, compensation: nil, created_at: nil, currency: nil, date_of_birth: nil, department: nil, division: nil, emails: nil, employee_number: nil, employee_roles: nil, employment_status: nil, employment_type: nil, gender: nil, groups: nil, hired_at: nil, id: nil, image_url: nil, language_locale: nil, location: nil, locations: nil, manager_id: nil, marital_status: nil, metadata: nil, name: nil, pronouns: nil, raw: nil, salutation: nil, ssn_sin: nil, storage_quota_allocated: nil, storage_quota_available: nil, storage_quota_used: nil, telephones: nil, terminated_at: nil, timezone: nil, title: nil, updated_at: nil)
        @address = address
        @bio = bio
        @company_id = company_id
        @compensation = compensation
        @created_at = created_at
        @currency = currency
        @date_of_birth = date_of_birth
        @department = department
        @division = division
        @emails = emails
        @employee_number = employee_number
        @employee_roles = employee_roles
        @employment_status = employment_status
        @employment_type = employment_type
        @gender = gender
        @groups = groups
        @hired_at = hired_at
        @id = id
        @image_url = image_url
        @language_locale = language_locale
        @location = location
        @locations = locations
        @manager_id = manager_id
        @marital_status = marital_status
        @metadata = metadata
        @name = name
        @pronouns = pronouns
        @raw = raw
        @salutation = salutation
        @ssn_sin = ssn_sin
        @storage_quota_allocated = storage_quota_allocated
        @storage_quota_available = storage_quota_available
        @storage_quota_used = storage_quota_used
        @telephones = telephones
        @terminated_at = terminated_at
        @timezone = timezone
        @title = title
        @updated_at = updated_at
      end
    end
  end
end
