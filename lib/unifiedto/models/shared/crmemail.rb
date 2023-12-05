# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module UnifiedRubySDK
  module Shared

    class CrmEmailType < T::Enum
      enums do
        WORK = new('WORK')
        HOME = new('HOME')
        OTHER = new('OTHER')
      end
    end



    class CrmEmail < UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :email, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('email') } }

      field :type, T.nilable(Shared::CrmEmailType), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Shared::CrmEmailType, true) } }


      sig { params(email: T.nilable(String), type: T.nilable(Shared::CrmEmailType)).void }
      def initialize(email: nil, type: nil)
        @email = email
        @type = type
      end
    end
  end
end
