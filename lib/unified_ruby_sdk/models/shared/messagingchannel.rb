# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class MessagingChannel
        extend T::Sig
        include Crystalline::MetadataFields


        field :name, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

        field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

        field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('description') } }

        field :has_subchannels, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('has_subchannels') } }

        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

        field :is_active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_active') } }

        field :is_private, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_private') } }

        field :members, T.nilable(T::Array[Models::Shared::MessagingMember]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('members') } }

        field :parent_channel_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('parent_channel_id') } }

        field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

        field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

        field :web_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('web_url') } }


        sig { params(name: ::String, created_at: T.nilable(::DateTime), description: T.nilable(::String), has_subchannels: T.nilable(T::Boolean), id: T.nilable(::String), is_active: T.nilable(T::Boolean), is_private: T.nilable(T::Boolean), members: T.nilable(T::Array[Models::Shared::MessagingMember]), parent_channel_id: T.nilable(::String), raw: T.nilable(T::Hash[Symbol, ::Object]), updated_at: T.nilable(::DateTime), web_url: T.nilable(::String)).void }
        def initialize(name: nil, created_at: nil, description: nil, has_subchannels: nil, id: nil, is_active: nil, is_private: nil, members: nil, parent_channel_id: nil, raw: nil, updated_at: nil, web_url: nil)
          @name = name
          @created_at = created_at
          @description = description
          @has_subchannels = has_subchannels
          @id = id
          @is_active = is_active
          @is_private = is_private
          @members = members
          @parent_channel_id = parent_channel_id
          @raw = raw
          @updated_at = updated_at
          @web_url = web_url
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @name == other.name
          return false unless @created_at == other.created_at
          return false unless @description == other.description
          return false unless @has_subchannels == other.has_subchannels
          return false unless @id == other.id
          return false unless @is_active == other.is_active
          return false unless @is_private == other.is_private
          return false unless @members == other.members
          return false unless @parent_channel_id == other.parent_channel_id
          return false unless @raw == other.raw
          return false unless @updated_at == other.updated_at
          return false unless @web_url == other.web_url
          true
        end
      end
    end
  end
end
