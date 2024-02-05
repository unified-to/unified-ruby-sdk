# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class AtsDocument < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :application_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('application_id') } }

      field :candidate_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('candidate_id') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :document_data, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('document_data') } }

      field :document_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('document_url') } }

      field :filename, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('filename') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :job_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('job_id') } }

      field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :type, T.nilable(::UnifiedRubySDK::Shared::AtsDocumentType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::AtsDocumentType, true) } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :user_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('user_id') } }


      sig { params(application_id: T.nilable(::String), candidate_id: T.nilable(::String), created_at: T.nilable(::DateTime), document_data: T.nilable(::String), document_url: T.nilable(::String), filename: T.nilable(::String), id: T.nilable(::String), job_id: T.nilable(::String), raw: T.nilable(T::Hash[Symbol, ::Object]), type: T.nilable(::UnifiedRubySDK::Shared::AtsDocumentType), updated_at: T.nilable(::DateTime), user_id: T.nilable(::String)).void }
      def initialize(application_id: nil, candidate_id: nil, created_at: nil, document_data: nil, document_url: nil, filename: nil, id: nil, job_id: nil, raw: nil, type: nil, updated_at: nil, user_id: nil)
        @application_id = application_id
        @candidate_id = candidate_id
        @created_at = created_at
        @document_data = document_data
        @document_url = document_url
        @filename = filename
        @id = id
        @job_id = job_id
        @raw = raw
        @type = type
        @updated_at = updated_at
        @user_id = user_id
      end
    end
  end
end
