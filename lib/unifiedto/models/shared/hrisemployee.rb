# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/property_hrisemployee_address'
require_relative '../shared/property_hrisemployee_raw'

module UnifiedRubySDK
  module Shared

    class EmploymentStatus < T::Enum
      enums do
        ACTIVE = new('ACTIVE')
        INACTIVE = new('INACTIVE')
      end
    end



    class HrisEmployeeEmploymentType < T::Enum
      enums do
        FULL_TIME = new('FULL_TIME')
        PART_TIME = new('PART_TIME')
        CONTRACTOR = new('CONTRACTOR')
        INTERN = new('INTERN')
        CONSULTANT = new('CONSULTANT')
        VOLUNTEER = new('VOLUNTEER')
        CASUAL = new('CASUAL')
        SEASONAL = new('SEASONAL')
        FREELANCE = new('FREELANCE')
        OTHER = new('OTHER')
      end
    end



    class HrisEmployeeGender < T::Enum
      enums do
        MALE = new('MALE')
        FEMALE = new('FEMALE')
        INTERSEX = new('INTERSEX')
        TRANS = new('TRANS')
        NON_BINARY = new('NON_BINARY')
      end
    end



    class MaritalStatus < T::Enum
      enums do
        MARRIED = new('MARRIED')
        SINGLE = new('SINGLE')
      end
    end



    class HrisEmployee < UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :address, T.nilable(Shared::PropertyHrisEmployeeAddress), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('address') } }

      field :created_at, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :currency, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('currency') } }

      field :date_of_birth, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('date_of_birth'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :department, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('department') } }

      field :division, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('division') } }

      field :emails, T.nilable(T::Array[Shared::HrisEmail]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('emails') } }

      field :employee_number, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('employee_number') } }

      field :employment_status, T.nilable(Shared::EmploymentStatus), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('employment_status'), 'decoder': Utils.enum_from_string(Shared::EmploymentStatus, true) } }

      field :employment_type, T.nilable(Shared::HrisEmployeeEmploymentType), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('employment_type'), 'decoder': Utils.enum_from_string(Shared::HrisEmployeeEmploymentType, true) } }

      field :gender, T.nilable(Shared::HrisEmployeeGender), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('gender'), 'decoder': Utils.enum_from_string(Shared::HrisEmployeeGender, true) } }

      field :hired_at, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('hired_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }

      field :image_url, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('image_url') } }

      field :language_locale, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('language_locale') } }

      field :location, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('location') } }

      field :manager_id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('manager_id') } }

      field :marital_status, T.nilable(Shared::MaritalStatus), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('marital_status'), 'decoder': Utils.enum_from_string(Shared::MaritalStatus, true) } }

      field :name, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('name') } }

      field :raw, T.nilable(Shared::PropertyHrisEmployeeRaw), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('raw') } }

      field :telephones, T.nilable(T::Array[Shared::HrisTelephone]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('telephones') } }

      field :terminated_at, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('terminated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :timezone, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('timezone') } }

      field :title, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('title') } }

      field :updated_at, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(address: T.nilable(Shared::PropertyHrisEmployeeAddress), created_at: T.nilable(DateTime), currency: T.nilable(String), date_of_birth: T.nilable(DateTime), department: T.nilable(String), division: T.nilable(String), emails: T.nilable(T::Array[Shared::HrisEmail]), employee_number: T.nilable(String), employment_status: T.nilable(Shared::EmploymentStatus), employment_type: T.nilable(Shared::HrisEmployeeEmploymentType), gender: T.nilable(Shared::HrisEmployeeGender), hired_at: T.nilable(DateTime), id: T.nilable(String), image_url: T.nilable(String), language_locale: T.nilable(String), location: T.nilable(String), manager_id: T.nilable(String), marital_status: T.nilable(Shared::MaritalStatus), name: T.nilable(String), raw: T.nilable(Shared::PropertyHrisEmployeeRaw), telephones: T.nilable(T::Array[Shared::HrisTelephone]), terminated_at: T.nilable(DateTime), timezone: T.nilable(String), title: T.nilable(String), updated_at: T.nilable(DateTime)).void }
      def initialize(address: nil, created_at: nil, currency: nil, date_of_birth: nil, department: nil, division: nil, emails: nil, employee_number: nil, employment_status: nil, employment_type: nil, gender: nil, hired_at: nil, id: nil, image_url: nil, language_locale: nil, location: nil, manager_id: nil, marital_status: nil, name: nil, raw: nil, telephones: nil, terminated_at: nil, timezone: nil, title: nil, updated_at: nil)
        @address = address
        @created_at = created_at
        @currency = currency
        @date_of_birth = date_of_birth
        @department = department
        @division = division
        @emails = emails
        @employee_number = employee_number
        @employment_status = employment_status
        @employment_type = employment_type
        @gender = gender
        @hired_at = hired_at
        @id = id
        @image_url = image_url
        @language_locale = language_locale
        @location = location
        @manager_id = manager_id
        @marital_status = marital_status
        @name = name
        @raw = raw
        @telephones = telephones
        @terminated_at = terminated_at
        @timezone = timezone
        @title = title
        @updated_at = updated_at
      end
    end
  end
end
