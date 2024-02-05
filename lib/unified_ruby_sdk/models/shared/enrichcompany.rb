# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  
    # A company object from an enrichment integration
    class EnrichCompany < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # The address of the company
      field :address, T.nilable(::UnifiedRubySDK::Shared::PropertyEnrichCompanyAddress), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('address') } }

      field :alexa_rank, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('alexa_rank') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :crunchbase_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('crunchbase_url') } }

      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('description') } }

      field :domain, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('domain') } }

      field :employees, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('employees') } }

      field :exchange, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('exchange') } }

      field :facebook_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('facebook_url') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :industry, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('industry') } }

      field :instagram_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('instagram_url') } }

      field :linkedin_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('linkedin_url') } }

      field :logo_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('logo_url') } }

      field :naics_code, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('naics_code') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }
      # The raw data returned by the integration for this company
      field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :revenue, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('revenue') } }

      field :sic_code, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('sic_code') } }

      field :stock, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('stock') } }
      # An array of telephones for this company
      field :telephones, T.nilable(T::Array[::UnifiedRubySDK::Shared::EnrichTelephone]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('telephones') } }

      field :twitter_handle, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('twitter_handle') } }

      field :twitter_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('twitter_url') } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :year_founded, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('year_founded') } }

      field :yelp_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('yelp_url') } }

      field :youtube_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('youtube_url') } }


      sig { params(address: T.nilable(::UnifiedRubySDK::Shared::PropertyEnrichCompanyAddress), alexa_rank: T.nilable(::Float), created_at: T.nilable(::DateTime), crunchbase_url: T.nilable(::String), description: T.nilable(::String), domain: T.nilable(::String), employees: T.nilable(::String), exchange: T.nilable(::String), facebook_url: T.nilable(::String), id: T.nilable(::String), industry: T.nilable(::String), instagram_url: T.nilable(::String), linkedin_url: T.nilable(::String), logo_url: T.nilable(::String), naics_code: T.nilable(::Float), name: T.nilable(::String), raw: T.nilable(T::Hash[Symbol, ::Object]), revenue: T.nilable(::String), sic_code: T.nilable(::Float), stock: T.nilable(::String), telephones: T.nilable(T::Array[::UnifiedRubySDK::Shared::EnrichTelephone]), twitter_handle: T.nilable(::String), twitter_url: T.nilable(::String), updated_at: T.nilable(::DateTime), year_founded: T.nilable(::Float), yelp_url: T.nilable(::String), youtube_url: T.nilable(::String)).void }
      def initialize(address: nil, alexa_rank: nil, created_at: nil, crunchbase_url: nil, description: nil, domain: nil, employees: nil, exchange: nil, facebook_url: nil, id: nil, industry: nil, instagram_url: nil, linkedin_url: nil, logo_url: nil, naics_code: nil, name: nil, raw: nil, revenue: nil, sic_code: nil, stock: nil, telephones: nil, twitter_handle: nil, twitter_url: nil, updated_at: nil, year_founded: nil, yelp_url: nil, youtube_url: nil)
        @address = address
        @alexa_rank = alexa_rank
        @created_at = created_at
        @crunchbase_url = crunchbase_url
        @description = description
        @domain = domain
        @employees = employees
        @exchange = exchange
        @facebook_url = facebook_url
        @id = id
        @industry = industry
        @instagram_url = instagram_url
        @linkedin_url = linkedin_url
        @logo_url = logo_url
        @naics_code = naics_code
        @name = name
        @raw = raw
        @revenue = revenue
        @sic_code = sic_code
        @stock = stock
        @telephones = telephones
        @twitter_handle = twitter_handle
        @twitter_url = twitter_url
        @updated_at = updated_at
        @year_founded = year_founded
        @yelp_url = yelp_url
        @youtube_url = youtube_url
      end
    end
  end
end
