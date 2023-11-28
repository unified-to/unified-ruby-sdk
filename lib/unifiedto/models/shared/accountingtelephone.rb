# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared

    class AccountingTelephoneType < T::Enum
      enums do
        WORK = new('WORK')
        HOME = new('HOME')
        OTHER = new('OTHER')
        FAX = new('FAX')
        MOBILE = new('MOBILE')
      end
    end



    class AccountingTelephone < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :telephone, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('telephone') } }

      field :type, T.nilable(Shared::AccountingTelephoneType), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Shared::AccountingTelephoneType, true) } }


      sig { params(telephone: String, type: T.nilable(Shared::AccountingTelephoneType)).void }
      def initialize(telephone: nil, type: nil)
        @telephone = telephone
        @type = type
      end
    end
  end
end
