# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Models
    module Shared
    

      class TaskComment
        extend T::Sig
        include Crystalline::MetadataFields


        field :task_id, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('task_id') } }

        field :text, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('text') } }

        field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

        field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

        field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

        field :user_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('user_id') } }

        field :user_name, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('user_name') } }


        sig { params(task_id: ::String, text: ::String, created_at: T.nilable(::DateTime), id: T.nilable(::String), raw: T.nilable(T::Hash[Symbol, ::Object]), updated_at: T.nilable(::DateTime), user_id: T.nilable(::String), user_name: T.nilable(::String)).void }
        def initialize(task_id: nil, text: nil, created_at: nil, id: nil, raw: nil, updated_at: nil, user_id: nil, user_name: nil)
          @task_id = task_id
          @text = text
          @created_at = created_at
          @id = id
          @raw = raw
          @updated_at = updated_at
          @user_id = user_id
          @user_name = user_name
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @task_id == other.task_id
          return false unless @text == other.text
          return false unless @created_at == other.created_at
          return false unless @id == other.id
          return false unless @raw == other.raw
          return false unless @updated_at == other.updated_at
          return false unless @user_id == other.user_id
          return false unless @user_name == other.user_name
          true
        end
      end
    end
  end
end
