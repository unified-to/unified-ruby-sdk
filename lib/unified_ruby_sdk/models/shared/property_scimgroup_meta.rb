# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class PropertyScimGroupMeta < ::Crystalline::FieldAugmented
      extend T::Sig


      field :created, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created') } }

      field :last_modified, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('lastModified') } }

      field :location, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('location') } }

      field :resource_type, T.nilable(::UnifiedRubySDK::Shared::ResourceType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('resourceType'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ResourceType, true) } }

      field :version, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('version') } }


      sig { params(created: T.nilable(::String), last_modified: T.nilable(::String), location: T.nilable(::String), resource_type: T.nilable(::UnifiedRubySDK::Shared::ResourceType), version: T.nilable(::String)).void }
      def initialize(created: nil, last_modified: nil, location: nil, resource_type: nil, version: nil)
        @created = created
        @last_modified = last_modified
        @location = location
        @resource_type = resource_type
        @version = version
      end
    end
  end
end
