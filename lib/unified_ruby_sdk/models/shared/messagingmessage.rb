# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class MessagingMessage < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :author_member, ::UnifiedRubySDK::Shared::PropertyMessagingMessageAuthorMember, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('author_member') } }

      field :message, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('message') } }

      field :channel_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('channel_id') } }

      field :created_at, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at') } }

      field :destination_members, T.nilable(T::Array[::UnifiedRubySDK::Shared::MessagingMember]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('destination_members') } }

      field :hidden_members, T.nilable(T::Array[::UnifiedRubySDK::Shared::MessagingMember]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('hidden_members') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :mentioned_members, T.nilable(T::Array[::UnifiedRubySDK::Shared::MessagingMember]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('mentioned_members') } }

      field :parent_message_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('parent_message_id') } }

      field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :subject, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('subject') } }

      field :updated_at, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at') } }

      field :web_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('web_url') } }


      sig { params(author_member: ::UnifiedRubySDK::Shared::PropertyMessagingMessageAuthorMember, message: ::String, channel_id: T.nilable(::String), created_at: T.nilable(::String), destination_members: T.nilable(T::Array[::UnifiedRubySDK::Shared::MessagingMember]), hidden_members: T.nilable(T::Array[::UnifiedRubySDK::Shared::MessagingMember]), id: T.nilable(::String), mentioned_members: T.nilable(T::Array[::UnifiedRubySDK::Shared::MessagingMember]), parent_message_id: T.nilable(::String), raw: T.nilable(T::Hash[Symbol, ::Object]), subject: T.nilable(::String), updated_at: T.nilable(::String), web_url: T.nilable(::String)).void }
      def initialize(author_member: nil, message: nil, channel_id: nil, created_at: nil, destination_members: nil, hidden_members: nil, id: nil, mentioned_members: nil, parent_message_id: nil, raw: nil, subject: nil, updated_at: nil, web_url: nil)
        @author_member = author_member
        @message = message
        @channel_id = channel_id
        @created_at = created_at
        @destination_members = destination_members
        @hidden_members = hidden_members
        @id = id
        @mentioned_members = mentioned_members
        @parent_message_id = parent_message_id
        @raw = raw
        @subject = subject
        @updated_at = updated_at
        @web_url = web_url
      end
    end
  end
end