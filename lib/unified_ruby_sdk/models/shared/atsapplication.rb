# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class AtsApplication < ::Crystalline::FieldAugmented
      extend T::Sig


      field :answers, T.nilable(T::Array[::UnifiedRubySDK::Shared::AtsApplicationAnswer]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('answers') } }

      field :applied_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('applied_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :candidate_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('candidate_id') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :hired_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('hired_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :job_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('job_id') } }

      field :metadata, T.nilable(T::Array[::UnifiedRubySDK::Shared::AtsMetadata]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('metadata') } }

      field :offers, T.nilable(T::Array[::UnifiedRubySDK::Shared::AtsOffer]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('offers') } }

      field :original_status, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('original_status') } }

      field :raw, T.nilable(::UnifiedRubySDK::Shared::AtsApplicationRaw), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :rejected_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('rejected_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :rejected_reason, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('rejected_reason') } }

      field :source, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('source') } }

      field :status, T.nilable(::UnifiedRubySDK::Shared::AtsApplicationStatus), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('status'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::AtsApplicationStatus, true) } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(answers: T.nilable(T::Array[::UnifiedRubySDK::Shared::AtsApplicationAnswer]), applied_at: T.nilable(::DateTime), candidate_id: T.nilable(::String), created_at: T.nilable(::DateTime), hired_at: T.nilable(::DateTime), id: T.nilable(::String), job_id: T.nilable(::String), metadata: T.nilable(T::Array[::UnifiedRubySDK::Shared::AtsMetadata]), offers: T.nilable(T::Array[::UnifiedRubySDK::Shared::AtsOffer]), original_status: T.nilable(::String), raw: T.nilable(::UnifiedRubySDK::Shared::AtsApplicationRaw), rejected_at: T.nilable(::DateTime), rejected_reason: T.nilable(::String), source: T.nilable(::String), status: T.nilable(::UnifiedRubySDK::Shared::AtsApplicationStatus), updated_at: T.nilable(::DateTime)).void }
      def initialize(answers: nil, applied_at: nil, candidate_id: nil, created_at: nil, hired_at: nil, id: nil, job_id: nil, metadata: nil, offers: nil, original_status: nil, raw: nil, rejected_at: nil, rejected_reason: nil, source: nil, status: nil, updated_at: nil)
        @answers = answers
        @applied_at = applied_at
        @candidate_id = candidate_id
        @created_at = created_at
        @hired_at = hired_at
        @id = id
        @job_id = job_id
        @metadata = metadata
        @offers = offers
        @original_status = original_status
        @raw = raw
        @rejected_at = rejected_at
        @rejected_reason = rejected_reason
        @source = source
        @status = status
        @updated_at = updated_at
      end
    end
  end
end
