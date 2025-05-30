# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class CommerceItemMedia
        extend T::Sig
        include Crystalline::MetadataFields


        field :url, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('url') } }

        field :alt, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('alt') } }

        field :height, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('height') } }

        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

        field :metadata, T.nilable(T::Array[Models::Shared::CommerceMetadata]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('metadata') } }

        field :position, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('position') } }

        field :type, T.nilable(Models::Shared::CommerceItemMediaType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Models::Shared::CommerceItemMediaType, true) } }

        field :width, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('width') } }


        sig { params(url: ::String, alt: T.nilable(::String), height: T.nilable(::Float), id: T.nilable(::String), metadata: T.nilable(T::Array[Models::Shared::CommerceMetadata]), position: T.nilable(::Float), type: T.nilable(Models::Shared::CommerceItemMediaType), width: T.nilable(::Float)).void }
        def initialize(url: nil, alt: nil, height: nil, id: nil, metadata: nil, position: nil, type: nil, width: nil)
          @url = url
          @alt = alt
          @height = height
          @id = id
          @metadata = metadata
          @position = position
          @type = type
          @width = width
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @url == other.url
          return false unless @alt == other.alt
          return false unless @height == other.height
          return false unless @id == other.id
          return false unless @metadata == other.metadata
          return false unless @position == other.position
          return false unless @type == other.type
          return false unless @width == other.width
          true
        end
      end
    end
  end
end
