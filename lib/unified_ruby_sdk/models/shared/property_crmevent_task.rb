# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  
    # The task object, when type = task
    class PropertyCrmEventTask < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('description') } }

      field :due_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('due_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :priority, T.nilable(::UnifiedRubySDK::Shared::Priority), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('priority'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::Priority, true) } }

      field :status, T.nilable(::UnifiedRubySDK::Shared::PropertyCrmEventTaskStatus), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('status'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::PropertyCrmEventTaskStatus, true) } }


      sig { params(description: T.nilable(::String), due_at: T.nilable(::DateTime), name: T.nilable(::String), priority: T.nilable(::UnifiedRubySDK::Shared::Priority), status: T.nilable(::UnifiedRubySDK::Shared::PropertyCrmEventTaskStatus)).void }
      def initialize(description: nil, due_at: nil, name: nil, priority: nil, status: nil)
        @description = description
        @due_at = due_at
        @name = name
        @priority = priority
        @status = status
      end
    end
  end
end
