# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class LmsMedia
        extend T::Sig
        include Crystalline::MetadataFields


        field :url, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('url') } }

        field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('description') } }

        field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

        field :thumbnail_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('thumbnail_url') } }

        field :type, T.nilable(Models::Shared::LmsMediaType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Models::Shared::LmsMediaType, true) } }


        sig { params(url: ::String, description: T.nilable(::String), name: T.nilable(::String), thumbnail_url: T.nilable(::String), type: T.nilable(Models::Shared::LmsMediaType)).void }
        def initialize(url: nil, description: nil, name: nil, thumbnail_url: nil, type: nil)
          @url = url
          @description = description
          @name = name
          @thumbnail_url = thumbnail_url
          @type = type
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @url == other.url
          return false unless @description == other.description
          return false unless @name == other.name
          return false unless @thumbnail_url == other.thumbnail_url
          return false unless @type == other.type
          true
        end
      end
    end
  end
end
