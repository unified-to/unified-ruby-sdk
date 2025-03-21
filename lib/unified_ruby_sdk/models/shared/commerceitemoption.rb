# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class CommerceItemOption < ::Crystalline::FieldAugmented
      extend T::Sig


      field :name, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :values, T::Array[::String], { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('values') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :position, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('position') } }


      sig { params(name: ::String, values: T::Array[::String], id: T.nilable(::String), position: T.nilable(::Float)).void }
      def initialize(name: nil, values: nil, id: nil, position: nil)
        @name = name
        @values = values
        @id = id
        @position = position
      end
    end
  end
end
