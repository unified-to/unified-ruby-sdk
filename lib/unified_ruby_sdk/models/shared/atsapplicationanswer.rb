# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class AtsApplicationAnswer < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :answers, T::Array[::String], { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('answers') } }

      field :question_id, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('question_id') } }


      sig { params(answers: T::Array[::String], question_id: ::String).void }
      def initialize(answers: nil, question_id: nil)
        @answers = answers
        @question_id = question_id
      end
    end
  end
end
