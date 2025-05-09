# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class AtsInterviewStatus < T::Enum
        enums do
          SCHEDULED = new('SCHEDULED')
          AWAITING_FEEDBACK = new('AWAITING_FEEDBACK')
          COMPLETE = new('COMPLETE')
          CANCELED = new('CANCELED')
          NEEDS_SCHEDULING = new('NEEDS_SCHEDULING')
        end
      end
    end
  end
end
