# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class RepoRepository
        extend T::Sig
        include Crystalline::MetadataFields


        field :name, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

        field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

        field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('description') } }

        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

        field :is_private, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_private') } }

        field :org_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('org_id') } }

        field :owner, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('owner') } }

        field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

        field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

        field :web_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('web_url') } }


        sig { params(name: ::String, created_at: T.nilable(::DateTime), description: T.nilable(::String), id: T.nilable(::String), is_private: T.nilable(T::Boolean), org_id: T.nilable(::String), owner: T.nilable(::String), raw: T.nilable(T::Hash[Symbol, ::Object]), updated_at: T.nilable(::DateTime), web_url: T.nilable(::String)).void }
        def initialize(name: nil, created_at: nil, description: nil, id: nil, is_private: nil, org_id: nil, owner: nil, raw: nil, updated_at: nil, web_url: nil)
          @name = name
          @created_at = created_at
          @description = description
          @id = id
          @is_private = is_private
          @org_id = org_id
          @owner = owner
          @raw = raw
          @updated_at = updated_at
          @web_url = web_url
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @name == other.name
          return false unless @created_at == other.created_at
          return false unless @description == other.description
          return false unless @id == other.id
          return false unless @is_private == other.is_private
          return false unless @org_id == other.org_id
          return false unless @owner == other.owner
          return false unless @raw == other.raw
          return false unless @updated_at == other.updated_at
          return false unless @web_url == other.web_url
          true
        end
      end
    end
  end
end
