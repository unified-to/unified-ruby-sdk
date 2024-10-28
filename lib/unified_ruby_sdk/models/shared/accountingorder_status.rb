# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class AccountingOrderStatus < T::Enum
      enums do
        DRAFT = new('DRAFT')
        VOIDED = new('VOIDED')
        AUTHORIZED = new('AUTHORIZED')
        PAID = new('PAID')
        PARTIALLY_PAID = new('PARTIALLY_PAID')
        PARTIALLY_REFUNDED = new('PARTIALLY_REFUNDED')
        REFUNDED = new('REFUNDED')
      end
    end
  end
end