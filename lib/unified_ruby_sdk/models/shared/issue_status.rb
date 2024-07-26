# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class IssueStatus < T::Enum
      enums do
        COMPLETED = new('COMPLETED')
        NEW = new('NEW')
        ROADMAP = new('ROADMAP')
        IN_PROGRESS = new('IN_PROGRESS')
        ON_HOLD = new('ON_HOLD')
        VALIDATING = new('VALIDATING')
        REJECTED = new('REJECTED')
      end
    end

  end
end
