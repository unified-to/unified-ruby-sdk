# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    
      # The telephone number called
      class PropertyUcCallTelephone
        extend T::Sig
        include Crystalline::MetadataFields


        field :telephone, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('telephone') } }

        field :type, T.nilable(Models::Shared::PropertyUcCallTelephoneType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Models::Shared::PropertyUcCallTelephoneType, true) } }


        sig { params(telephone: ::String, type: T.nilable(Models::Shared::PropertyUcCallTelephoneType)).void }
        def initialize(telephone: nil, type: nil)
          @telephone = telephone
          @type = type
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @telephone == other.telephone
          return false unless @type == other.type
          true
        end
      end
    end
  end
end
