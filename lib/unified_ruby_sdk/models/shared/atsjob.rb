# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class AtsJob < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :addresses, T.nilable(T::Array[::UnifiedRubySDK::Shared::AtsAddress]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('addresses') } }

      field :closed_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('closed_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :company_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('company_id') } }

      field :compensation, T.nilable(T::Array[::UnifiedRubySDK::Shared::AtsCompensation]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('compensation') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :departments, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('departments') } }

      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('description') } }

      field :employment_type, T.nilable(::UnifiedRubySDK::Shared::EmploymentType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('employment_type'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::EmploymentType, true) } }

      field :hiring_manager_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('hiring_manager_ids') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :language_locale, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('language_locale') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :number_of_openings, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('number_of_openings') } }
      # URLs for pages containing public listings for the job
      field :public_job_urls, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('public_job_urls') } }

      field :questions, T.nilable(T::Array[::UnifiedRubySDK::Shared::AtsJobQuestion]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('questions') } }

      field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :recruiter_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('recruiter_ids') } }

      field :remote, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('remote') } }

      field :status, T.nilable(::UnifiedRubySDK::Shared::AtsJobStatus), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('status'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::AtsJobStatus, true) } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(addresses: T.nilable(T::Array[::UnifiedRubySDK::Shared::AtsAddress]), closed_at: T.nilable(::DateTime), company_id: T.nilable(::String), compensation: T.nilable(T::Array[::UnifiedRubySDK::Shared::AtsCompensation]), created_at: T.nilable(::DateTime), departments: T.nilable(T::Array[::String]), description: T.nilable(::String), employment_type: T.nilable(::UnifiedRubySDK::Shared::EmploymentType), hiring_manager_ids: T.nilable(T::Array[::String]), id: T.nilable(::String), language_locale: T.nilable(::String), name: T.nilable(::String), number_of_openings: T.nilable(::Float), public_job_urls: T.nilable(T::Array[::String]), questions: T.nilable(T::Array[::UnifiedRubySDK::Shared::AtsJobQuestion]), raw: T.nilable(T::Hash[Symbol, ::Object]), recruiter_ids: T.nilable(T::Array[::String]), remote: T.nilable(T::Boolean), status: T.nilable(::UnifiedRubySDK::Shared::AtsJobStatus), updated_at: T.nilable(::DateTime)).void }
      def initialize(addresses: nil, closed_at: nil, company_id: nil, compensation: nil, created_at: nil, departments: nil, description: nil, employment_type: nil, hiring_manager_ids: nil, id: nil, language_locale: nil, name: nil, number_of_openings: nil, public_job_urls: nil, questions: nil, raw: nil, recruiter_ids: nil, remote: nil, status: nil, updated_at: nil)
        @addresses = addresses
        @closed_at = closed_at
        @company_id = company_id
        @compensation = compensation
        @created_at = created_at
        @departments = departments
        @description = description
        @employment_type = employment_type
        @hiring_manager_ids = hiring_manager_ids
        @id = id
        @language_locale = language_locale
        @name = name
        @number_of_openings = number_of_openings
        @public_job_urls = public_job_urls
        @questions = questions
        @raw = raw
        @recruiter_ids = recruiter_ids
        @remote = remote
        @status = status
        @updated_at = updated_at
      end
    end
  end
end
