# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class UcEmail
        extend T::Sig
        include Crystalline::MetadataFields


        field :email, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('email') } }

        field :type, T.nilable(Models::Shared::UcEmailType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Models::Shared::UcEmailType, true) } }


        sig { params(email: ::String, type: T.nilable(Models::Shared::UcEmailType)).void }
        def initialize(email: nil, type: nil)
          @email = email
          @type = type
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @email == other.email
          return false unless @type == other.type
          true
        end
      end
    end
  end
end
