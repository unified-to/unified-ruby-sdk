# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module UnifiedRubySDK
  module Shared

    class MarketingEmailType < T::Enum
      enums do
        WORK = new('WORK')
        HOME = new('HOME')
        OTHER = new('OTHER')
      end
    end



    class MarketingEmail < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :email, String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('email') } }

      field :type, T.nilable(Shared::MarketingEmailType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Shared::MarketingEmailType, true) } }


      sig { params(email: String, type: T.nilable(Shared::MarketingEmailType)).void }
      def initialize(email: nil, type: nil)
        @email = email
        @type = type
      end
    end
  end
end
