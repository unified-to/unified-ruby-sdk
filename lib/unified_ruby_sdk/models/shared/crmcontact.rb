# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  
    # A contact represents a person that optionally is associated with a deal and/or a company
    class CrmContact < ::Crystalline::FieldAugmented
      extend T::Sig


      field :address, T.nilable(::UnifiedRubySDK::Shared::PropertyCrmContactAddress), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('address') } }

      field :company, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('company') } }
      # An array of company IDs associated with this contact
      field :company_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('company_ids') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # An array of deal IDs associated with this contact
      field :deal_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('deal_ids') } }
      # An array of email addresses for this contact
      field :emails, T.nilable(T::Array[::UnifiedRubySDK::Shared::CrmEmail]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('emails') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }
      # Additional URLs associated with the contact e.g., LinkedIn, website, etc
      field :link_urls, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('link_urls') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :raw, T.nilable(::UnifiedRubySDK::Shared::CrmContactRaw), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }
      # An array of telephones for this contact
      field :telephones, T.nilable(T::Array[::UnifiedRubySDK::Shared::CrmTelephone]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('telephones') } }

      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('title') } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :user_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('user_id') } }


      sig { params(address: T.nilable(::UnifiedRubySDK::Shared::PropertyCrmContactAddress), company: T.nilable(::String), company_ids: T.nilable(T::Array[::String]), created_at: T.nilable(::DateTime), deal_ids: T.nilable(T::Array[::String]), emails: T.nilable(T::Array[::UnifiedRubySDK::Shared::CrmEmail]), id: T.nilable(::String), link_urls: T.nilable(T::Array[::String]), name: T.nilable(::String), raw: T.nilable(::UnifiedRubySDK::Shared::CrmContactRaw), telephones: T.nilable(T::Array[::UnifiedRubySDK::Shared::CrmTelephone]), title: T.nilable(::String), updated_at: T.nilable(::DateTime), user_id: T.nilable(::String)).void }
      def initialize(address: nil, company: nil, company_ids: nil, created_at: nil, deal_ids: nil, emails: nil, id: nil, link_urls: nil, name: nil, raw: nil, telephones: nil, title: nil, updated_at: nil, user_id: nil)
        @address = address
        @company = company
        @company_ids = company_ids
        @created_at = created_at
        @deal_ids = deal_ids
        @emails = emails
        @id = id
        @link_urls = link_urls
        @name = name
        @raw = raw
        @telephones = telephones
        @title = title
        @updated_at = updated_at
        @user_id = user_id
      end
    end
  end
end
