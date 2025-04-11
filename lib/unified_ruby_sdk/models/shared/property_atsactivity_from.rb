# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class PropertyAtsActivityFrom
        extend T::Sig
        include Crystalline::MetadataFields


        field :email, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('email') } }

        field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

        field :type, T.nilable(Models::Shared::PropertyAtsActivityFromType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Models::Shared::PropertyAtsActivityFromType, true) } }


        sig { params(email: ::String, name: T.nilable(::String), type: T.nilable(Models::Shared::PropertyAtsActivityFromType)).void }
        def initialize(email: nil, name: nil, type: nil)
          @email = email
          @name = name
          @type = type
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @email == other.email
          return false unless @name == other.name
          return false unless @type == other.type
          true
        end
      end
    end
  end
end
