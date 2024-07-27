# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class CommerceItemOption < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :id, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :name, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :values, T::Array[::String], { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('values') } }

      field :position, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('position') } }


      sig { params(id: ::String, name: ::String, values: T::Array[::String], position: T.nilable(::Float)).void }
      def initialize(id: nil, name: nil, values: nil, position: nil)
        @id = id
        @name = name
        @values = values
        @position = position
      end
    end
  end
end
