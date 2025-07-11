# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class TaskMetadataFormat < T::Enum
        enums do
          TEXT = new('TEXT')
          NUMBER = new('NUMBER')
          DATE = new('DATE')
          BOOLEAN = new('BOOLEAN')
          FILE = new('FILE')
          TEXTAREA = new('TEXTAREA')
          SINGLE_SELECT = new('SINGLE_SELECT')
          MULTIPLE_SELECT = new('MULTIPLE_SELECT')
          MEASUREMENT = new('MEASUREMENT')
          PRICE = new('PRICE')
          YES_NO = new('YES_NO')
          CURRENCY = new('CURRENCY')
          URL = new('URL')
        end
      end
    end
  end
end
