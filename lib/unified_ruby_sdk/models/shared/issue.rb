# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class Issue < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :status, ::UnifiedRubySDK::Shared::IssueStatus, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('status'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::IssueStatus, false) } }

      field :ticket_ref, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('ticket_ref') } }

      field :title, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('title') } }

      field :workspace_id, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('workspace_id') } }

      field :created_at, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :resolution_time, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('resolution_time') } }

      field :type, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type') } }

      field :updated_at, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at') } }

      field :url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('url') } }


      sig { params(status: ::UnifiedRubySDK::Shared::IssueStatus, ticket_ref: ::String, title: ::String, workspace_id: ::String, created_at: T.nilable(::String), id: T.nilable(::String), resolution_time: T.nilable(::Float), type: T.nilable(T::Array[::String]), updated_at: T.nilable(::String), url: T.nilable(::String)).void }
      def initialize(status: nil, ticket_ref: nil, title: nil, workspace_id: nil, created_at: nil, id: nil, resolution_time: nil, type: nil, updated_at: nil, url: nil)
        @status = status
        @ticket_ref = ticket_ref
        @title = title
        @workspace_id = workspace_id
        @created_at = created_at
        @id = id
        @resolution_time = resolution_time
        @type = type
        @updated_at = updated_at
        @url = url
      end
    end
  end
end
