# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared

    class AtsEmailType < T::Enum
      enums do
        WORK = new('WORK')
        HOME = new('HOME')
        OTHER = new('OTHER')
      end
    end



    class AtsEmail < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :email, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('email') } }

      field :type, T.nilable(Shared::AtsEmailType), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Shared::AtsEmailType, true) } }


      sig { params(email: String, type: T.nilable(Shared::AtsEmailType)).void }
      def initialize(email: nil, type: nil)
        @email = email
        @type = type
      end
    end
  end
end
