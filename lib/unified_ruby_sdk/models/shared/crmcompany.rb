# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  
    # A company represents an organization that optionally is associated with a deal and/or contacts
    class CrmCompany < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :address, T.nilable(::UnifiedRubySDK::Shared::PropertyCrmCompanyAddress), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('address') } }
      # An array of contact IDs associated with this company
      field :contact_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('contact_ids') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # An array of deal IDs associated with this contact
      field :deal_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('deal_ids') } }

      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('description') } }

      field :emails, T.nilable(T::Array[::UnifiedRubySDK::Shared::CrmEmail]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('emails') } }

      field :employees, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('employees') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :industry, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('industry') } }

      field :is_active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_active') } }
      # Additional URLs associated with the contact e.g., LinkedIn, website, etc
      field :link_urls, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('link_urls') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :raw, T.nilable(::UnifiedRubySDK::Shared::CrmCompanyRaw), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :tags, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('tags') } }

      field :telephones, T.nilable(T::Array[::UnifiedRubySDK::Shared::CrmTelephone]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('telephones') } }

      field :timezone, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('timezone') } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :user_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('user_id') } }

      field :websites, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('websites') } }


      sig { params(address: T.nilable(::UnifiedRubySDK::Shared::PropertyCrmCompanyAddress), contact_ids: T.nilable(T::Array[::String]), created_at: T.nilable(::DateTime), deal_ids: T.nilable(T::Array[::String]), description: T.nilable(::String), emails: T.nilable(T::Array[::UnifiedRubySDK::Shared::CrmEmail]), employees: T.nilable(::Float), id: T.nilable(::String), industry: T.nilable(::String), is_active: T.nilable(T::Boolean), link_urls: T.nilable(T::Array[::String]), name: T.nilable(::String), raw: T.nilable(::UnifiedRubySDK::Shared::CrmCompanyRaw), tags: T.nilable(T::Array[::String]), telephones: T.nilable(T::Array[::UnifiedRubySDK::Shared::CrmTelephone]), timezone: T.nilable(::String), updated_at: T.nilable(::DateTime), user_id: T.nilable(::String), websites: T.nilable(T::Array[::String])).void }
      def initialize(address: nil, contact_ids: nil, created_at: nil, deal_ids: nil, description: nil, emails: nil, employees: nil, id: nil, industry: nil, is_active: nil, link_urls: nil, name: nil, raw: nil, tags: nil, telephones: nil, timezone: nil, updated_at: nil, user_id: nil, websites: nil)
        @address = address
        @contact_ids = contact_ids
        @created_at = created_at
        @deal_ids = deal_ids
        @description = description
        @emails = emails
        @employees = employees
        @id = id
        @industry = industry
        @is_active = is_active
        @link_urls = link_urls
        @name = name
        @raw = raw
        @tags = tags
        @telephones = telephones
        @timezone = timezone
        @updated_at = updated_at
        @user_id = user_id
        @websites = websites
      end
    end
  end
end
