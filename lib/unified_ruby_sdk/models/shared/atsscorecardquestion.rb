# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class AtsScorecardQuestion
        extend T::Sig
        include Crystalline::MetadataFields


        field :text, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('text') } }

        field :answer, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('answer') } }

        field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('description') } }


        sig { params(text: ::String, answer: T.nilable(::String), description: T.nilable(::String)).void }
        def initialize(text: nil, answer: nil, description: nil)
          @text = text
          @answer = answer
          @description = description
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @text == other.text
          return false unless @answer == other.answer
          return false unless @description == other.description
          true
        end
      end
    end
  end
end
