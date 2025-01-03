# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class TaskTask < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :assigned_user_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('assigned_user_ids') } }
      # Array of attachment IDs retrieved from StorageFile.Get endpoint
      field :attachment_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('attachment_ids') } }

      field :completed_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('completed_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :creator_user_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('creator_user_id') } }

      field :due_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('due_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :follower_user_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('follower_user_ids') } }

      field :group_ids, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('group_ids') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :notes, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('notes') } }

      field :parent_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('parent_id') } }

      field :priority, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('priority') } }

      field :project_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('project_id') } }

      field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :status, T.nilable(::UnifiedRubySDK::Shared::TaskTaskStatus), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('status'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::TaskTaskStatus, true) } }

      field :tags, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('tags') } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('url') } }


      sig { params(assigned_user_ids: T.nilable(T::Array[::String]), attachment_ids: T.nilable(T::Array[::String]), completed_at: T.nilable(::DateTime), created_at: T.nilable(::DateTime), creator_user_id: T.nilable(::String), due_at: T.nilable(::DateTime), follower_user_ids: T.nilable(T::Array[::String]), group_ids: T.nilable(T::Array[::String]), id: T.nilable(::String), name: T.nilable(::String), notes: T.nilable(::String), parent_id: T.nilable(::String), priority: T.nilable(::String), project_id: T.nilable(::String), raw: T.nilable(T::Hash[Symbol, ::Object]), status: T.nilable(::UnifiedRubySDK::Shared::TaskTaskStatus), tags: T.nilable(T::Array[::String]), updated_at: T.nilable(::DateTime), url: T.nilable(::String)).void }
      def initialize(assigned_user_ids: nil, attachment_ids: nil, completed_at: nil, created_at: nil, creator_user_id: nil, due_at: nil, follower_user_ids: nil, group_ids: nil, id: nil, name: nil, notes: nil, parent_id: nil, priority: nil, project_id: nil, raw: nil, status: nil, tags: nil, updated_at: nil, url: nil)
        @assigned_user_ids = assigned_user_ids
        @attachment_ids = attachment_ids
        @completed_at = completed_at
        @created_at = created_at
        @creator_user_id = creator_user_id
        @due_at = due_at
        @follower_user_ids = follower_user_ids
        @group_ids = group_ids
        @id = id
        @name = name
        @notes = notes
        @parent_id = parent_id
        @priority = priority
        @project_id = project_id
        @raw = raw
        @status = status
        @tags = tags
        @updated_at = updated_at
        @url = url
      end
    end
  end
end
