# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module UnifiedRubySDK
  module Shared

    class TicketingEmailType < T::Enum
      enums do
        WORK = new('WORK')
        HOME = new('HOME')
        OTHER = new('OTHER')
      end
    end



    class TicketingEmail < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :email, String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('email') } }

      field :type, T.nilable(Shared::TicketingEmailType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Shared::TicketingEmailType, true) } }


      sig { params(email: String, type: T.nilable(Shared::TicketingEmailType)).void }
      def initialize(email: nil, type: nil)
        @email = email
        @type = type
      end
    end
  end
end
