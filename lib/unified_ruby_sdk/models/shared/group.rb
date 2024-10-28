# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class Group < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :display_name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('displayName') } }

      field :external_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('externalId') } }

      field :group_type, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('groupType') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :members, T.nilable(T::Array[::UnifiedRubySDK::Shared::Undefined]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('members') } }

      field :meta, T.nilable(::UnifiedRubySDK::Shared::PropertyGroupMeta), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('meta') } }

      field :schemas, T.nilable(T::Array[::UnifiedRubySDK::Shared::PropertyGroupSchemas]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('schemas') } }


      sig { params(display_name: T.nilable(::String), external_id: T.nilable(::String), group_type: T.nilable(::String), id: T.nilable(::String), members: T.nilable(T::Array[::UnifiedRubySDK::Shared::Undefined]), meta: T.nilable(::UnifiedRubySDK::Shared::PropertyGroupMeta), schemas: T.nilable(T::Array[::UnifiedRubySDK::Shared::PropertyGroupSchemas])).void }
      def initialize(display_name: nil, external_id: nil, group_type: nil, id: nil, members: nil, meta: nil, schemas: nil)
        @display_name = display_name
        @external_id = external_id
        @group_type = group_type
        @id = id
        @members = members
        @meta = meta
        @schemas = schemas
      end
    end
  end
end