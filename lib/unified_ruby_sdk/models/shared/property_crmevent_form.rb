# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class PropertyCrmEventForm < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :archived_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('archived_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :fields_, T.nilable(T::Array[::UnifiedRubySDK::Shared::CrmEventFormField]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('fields') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :redirect_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('redirect_url') } }


      sig { params(archived_at: T.nilable(::DateTime), fields_: T.nilable(T::Array[::UnifiedRubySDK::Shared::CrmEventFormField]), name: T.nilable(::String), redirect_url: T.nilable(::String)).void }
      def initialize(archived_at: nil, fields_: nil, name: nil, redirect_url: nil)
        @archived_at = archived_at
        @fields_ = fields_
        @name = name
        @redirect_url = redirect_url
      end
    end
  end
end