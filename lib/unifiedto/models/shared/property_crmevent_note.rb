# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module UnifiedRubySDK
  module Shared
    # The note object, when type = note
    class PropertyCrmEventNote < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :description, T.nilable(String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('description') } }


      sig { params(description: T.nilable(String)).void }
      def initialize(description: nil)
        @description = description
      end
    end
  end
end
