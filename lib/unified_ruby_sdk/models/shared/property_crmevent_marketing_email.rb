# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class PropertyCrmEventMarketingEmail < ::Crystalline::FieldAugmented
      extend T::Sig


      field :attachment_file_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('attachment_file_ids') } }

      field :body, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('body') } }
      # The event email's cc name & email (name <test@test.com>)
      field :cc, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('cc') } }

      field :from, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('from') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :subject, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('subject') } }
      # The event email's "to" name & email (name <test@test.com>)
      field :to, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('to') } }


      sig { params(attachment_file_ids: T.nilable(T::Array[::String]), body: T.nilable(::String), cc: T.nilable(T::Array[::String]), from: T.nilable(::String), name: T.nilable(::String), subject: T.nilable(::String), to: T.nilable(T::Array[::String])).void }
      def initialize(attachment_file_ids: nil, body: nil, cc: nil, from: nil, name: nil, subject: nil, to: nil)
        @attachment_file_ids = attachment_file_ids
        @body = body
        @cc = cc
        @from = from
        @name = name
        @subject = subject
        @to = to
      end
    end
  end
end
