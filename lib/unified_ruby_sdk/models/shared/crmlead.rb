# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class CrmLead < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :address, T.nilable(::UnifiedRubySDK::Shared::PropertyCrmLeadAddress), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('address') } }

      field :company_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('company_id') } }

      field :company_name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('company_name') } }

      field :contact_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('contact_id') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :creator_user_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('creator_user_id') } }

      field :emails, T.nilable(T::Array[::UnifiedRubySDK::Shared::CrmEmail]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('emails') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :is_active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_active') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :source, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('source') } }

      field :status, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('status') } }

      field :telephones, T.nilable(T::Array[::UnifiedRubySDK::Shared::CrmTelephone]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('telephones') } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :user_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('user_id') } }


      sig { params(address: T.nilable(::UnifiedRubySDK::Shared::PropertyCrmLeadAddress), company_id: T.nilable(::String), company_name: T.nilable(::String), contact_id: T.nilable(::String), created_at: T.nilable(::DateTime), creator_user_id: T.nilable(::String), emails: T.nilable(T::Array[::UnifiedRubySDK::Shared::CrmEmail]), id: T.nilable(::String), is_active: T.nilable(T::Boolean), name: T.nilable(::String), raw: T.nilable(T::Hash[Symbol, ::Object]), source: T.nilable(::String), status: T.nilable(::String), telephones: T.nilable(T::Array[::UnifiedRubySDK::Shared::CrmTelephone]), updated_at: T.nilable(::DateTime), user_id: T.nilable(::String)).void }
      def initialize(address: nil, company_id: nil, company_name: nil, contact_id: nil, created_at: nil, creator_user_id: nil, emails: nil, id: nil, is_active: nil, name: nil, raw: nil, source: nil, status: nil, telephones: nil, updated_at: nil, user_id: nil)
        @address = address
        @company_id = company_id
        @company_name = company_name
        @contact_id = contact_id
        @created_at = created_at
        @creator_user_id = creator_user_id
        @emails = emails
        @id = id
        @is_active = is_active
        @name = name
        @raw = raw
        @source = source
        @status = status
        @telephones = telephones
        @updated_at = updated_at
        @user_id = user_id
      end
    end
  end
end
