# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class StoragePermission < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :roles, T::Array[::UnifiedRubySDK::Shared::PropertyStoragePermissionRoles], { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('roles') } }

      field :group_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('group_id') } }

      field :user_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('user_id') } }


      sig { params(roles: T::Array[::UnifiedRubySDK::Shared::PropertyStoragePermissionRoles], group_id: T.nilable(::String), user_id: T.nilable(::String)).void }
      def initialize(roles: nil, group_id: nil, user_id: nil)
        @roles = roles
        @group_id = group_id
        @user_id = user_id
      end
    end
  end
end
