# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class AtsCandidate < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :address, T.nilable(::UnifiedRubySDK::Shared::PropertyAtsCandidateAddress), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('address') } }

      field :company_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('company_id') } }

      field :company_name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('company_name') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :date_of_birth, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('date_of_birth'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :emails, T.nilable(T::Array[::UnifiedRubySDK::Shared::AtsEmail]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('emails') } }

      field :external_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('external_id') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :image_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('image_url') } }
      # a list of social media links associated with the candidate. eg. LinkedIn URL
      field :link_urls, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('link_urls') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :origin, T.nilable(::UnifiedRubySDK::Shared::Origin), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('origin'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::Origin, true) } }

      field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :sources, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('sources') } }

      field :tags, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('tags') } }

      field :telephones, T.nilable(T::Array[::UnifiedRubySDK::Shared::AtsTelephone]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('telephones') } }

      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('title') } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(address: T.nilable(::UnifiedRubySDK::Shared::PropertyAtsCandidateAddress), company_id: T.nilable(::String), company_name: T.nilable(::String), created_at: T.nilable(::DateTime), date_of_birth: T.nilable(::DateTime), emails: T.nilable(T::Array[::UnifiedRubySDK::Shared::AtsEmail]), external_id: T.nilable(::String), id: T.nilable(::String), image_url: T.nilable(::String), link_urls: T.nilable(T::Array[::String]), name: T.nilable(::String), origin: T.nilable(::UnifiedRubySDK::Shared::Origin), raw: T.nilable(T::Hash[Symbol, ::Object]), sources: T.nilable(T::Array[::String]), tags: T.nilable(T::Array[::String]), telephones: T.nilable(T::Array[::UnifiedRubySDK::Shared::AtsTelephone]), title: T.nilable(::String), updated_at: T.nilable(::DateTime)).void }
      def initialize(address: nil, company_id: nil, company_name: nil, created_at: nil, date_of_birth: nil, emails: nil, external_id: nil, id: nil, image_url: nil, link_urls: nil, name: nil, origin: nil, raw: nil, sources: nil, tags: nil, telephones: nil, title: nil, updated_at: nil)
        @address = address
        @company_id = company_id
        @company_name = company_name
        @created_at = created_at
        @date_of_birth = date_of_birth
        @emails = emails
        @external_id = external_id
        @id = id
        @image_url = image_url
        @link_urls = link_urls
        @name = name
        @origin = origin
        @raw = raw
        @sources = sources
        @tags = tags
        @telephones = telephones
        @title = title
        @updated_at = updated_at
      end
    end
  end
end
