# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module UnifiedRubySDK
  module Shared

    class TicketingTelephoneType < T::Enum
      enums do
        WORK = new('WORK')
        HOME = new('HOME')
        OTHER = new('OTHER')
        FAX = new('FAX')
        MOBILE = new('MOBILE')
      end
    end



    class TicketingTelephone < UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :telephone, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('telephone') } }

      field :type, T.nilable(Shared::TicketingTelephoneType), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Shared::TicketingTelephoneType, true) } }


      sig { params(telephone: String, type: T.nilable(Shared::TicketingTelephoneType)).void }
      def initialize(telephone: nil, type: nil)
        @telephone = telephone
        @type = type
      end
    end
  end
end
