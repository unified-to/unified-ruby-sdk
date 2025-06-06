# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class AtsActivity
        extend T::Sig
        include Crystalline::MetadataFields


        field :application_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('application_id') } }

        field :bcc, T.nilable(T::Array[Models::Shared::AtsEmail]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('bcc') } }

        field :candidate_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('candidate_id') } }

        field :cc, T.nilable(T::Array[Models::Shared::AtsEmail]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('cc') } }

        field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

        field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('description') } }

        field :document_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('document_id') } }
        # IDs for AtsDocument.get
        field :document_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('document_ids') } }

        field :from, T.nilable(Models::Shared::PropertyAtsActivityFrom), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('from') } }

        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

        field :interview_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('interview_id') } }

        field :is_private, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_private') } }

        field :job_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('job_id') } }

        field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

        field :sub_type, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('sub_type') } }

        field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('title') } }

        field :to, T.nilable(T::Array[Models::Shared::AtsEmail]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('to') } }

        field :type, T.nilable(Models::Shared::AtsActivityType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Models::Shared::AtsActivityType, true) } }

        field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
        # id values of the recruiters associated with the activity.
        field :user_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('user_ids') } }


        sig { params(application_id: T.nilable(::String), bcc: T.nilable(T::Array[Models::Shared::AtsEmail]), candidate_id: T.nilable(::String), cc: T.nilable(T::Array[Models::Shared::AtsEmail]), created_at: T.nilable(::DateTime), description: T.nilable(::String), document_id: T.nilable(::String), document_ids: T.nilable(T::Array[::String]), from: T.nilable(Models::Shared::PropertyAtsActivityFrom), id: T.nilable(::String), interview_id: T.nilable(::String), is_private: T.nilable(T::Boolean), job_id: T.nilable(::String), raw: T.nilable(T::Hash[Symbol, ::Object]), sub_type: T.nilable(::String), title: T.nilable(::String), to: T.nilable(T::Array[Models::Shared::AtsEmail]), type: T.nilable(Models::Shared::AtsActivityType), updated_at: T.nilable(::DateTime), user_ids: T.nilable(T::Array[::String])).void }
        def initialize(application_id: nil, bcc: nil, candidate_id: nil, cc: nil, created_at: nil, description: nil, document_id: nil, document_ids: nil, from: nil, id: nil, interview_id: nil, is_private: nil, job_id: nil, raw: nil, sub_type: nil, title: nil, to: nil, type: nil, updated_at: nil, user_ids: nil)
          @application_id = application_id
          @bcc = bcc
          @candidate_id = candidate_id
          @cc = cc
          @created_at = created_at
          @description = description
          @document_id = document_id
          @document_ids = document_ids
          @from = from
          @id = id
          @interview_id = interview_id
          @is_private = is_private
          @job_id = job_id
          @raw = raw
          @sub_type = sub_type
          @title = title
          @to = to
          @type = type
          @updated_at = updated_at
          @user_ids = user_ids
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @application_id == other.application_id
          return false unless @bcc == other.bcc
          return false unless @candidate_id == other.candidate_id
          return false unless @cc == other.cc
          return false unless @created_at == other.created_at
          return false unless @description == other.description
          return false unless @document_id == other.document_id
          return false unless @document_ids == other.document_ids
          return false unless @from == other.from
          return false unless @id == other.id
          return false unless @interview_id == other.interview_id
          return false unless @is_private == other.is_private
          return false unless @job_id == other.job_id
          return false unless @raw == other.raw
          return false unless @sub_type == other.sub_type
          return false unless @title == other.title
          return false unless @to == other.to
          return false unless @type == other.type
          return false unless @updated_at == other.updated_at
          return false unless @user_ids == other.user_ids
          true
        end
      end
    end
  end
end
