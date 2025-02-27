# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class AtsCandidateEducation < ::Crystalline::FieldAugmented
      extend T::Sig


      field :degree, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('degree') } }

      field :end_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('end_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :field_of_study, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('field_of_study') } }

      field :institution, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('institution') } }

      field :level, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('level') } }

      field :start_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('start_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(degree: T.nilable(::String), end_at: T.nilable(::DateTime), field_of_study: T.nilable(::String), institution: T.nilable(::String), level: T.nilable(::String), start_at: T.nilable(::DateTime)).void }
      def initialize(degree: nil, end_at: nil, field_of_study: nil, institution: nil, level: nil, start_at: nil)
        @degree = degree
        @end_at = end_at
        @field_of_study = field_of_study
        @institution = institution
        @level = level
        @start_at = start_at
      end
    end
  end
end
