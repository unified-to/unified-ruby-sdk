# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class MessagingMessage < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :attachments, T.nilable(T::Array[::UnifiedRubySDK::Shared::MessagingAttachment]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('attachments') } }

      field :author_member, T.nilable(::UnifiedRubySDK::Shared::PropertyMessagingMessageAuthorMember), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('author_member') } }

      field :channel_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('channel_id') } }

      field :created_at, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at') } }

      field :destination_members, T.nilable(T::Array[::UnifiedRubySDK::Shared::MessagingMember]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('destination_members') } }

      field :hidden_members, T.nilable(T::Array[::UnifiedRubySDK::Shared::MessagingMember]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('hidden_members') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :mentioned_members, T.nilable(T::Array[::UnifiedRubySDK::Shared::MessagingMember]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('mentioned_members') } }

      field :message, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('message') } }

      field :message_html, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('message_html') } }

      field :parent_message_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('parent_message_id') } }

      field :raw, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('raw') } }

      field :subject, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('subject') } }

      field :updated_at, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at') } }

      field :web_url, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('web_url') } }


      sig { params(attachments: T.nilable(T::Array[::UnifiedRubySDK::Shared::MessagingAttachment]), author_member: T.nilable(::UnifiedRubySDK::Shared::PropertyMessagingMessageAuthorMember), channel_id: T.nilable(::String), created_at: T.nilable(::String), destination_members: T.nilable(T::Array[::UnifiedRubySDK::Shared::MessagingMember]), hidden_members: T.nilable(T::Array[::UnifiedRubySDK::Shared::MessagingMember]), id: T.nilable(::String), mentioned_members: T.nilable(T::Array[::UnifiedRubySDK::Shared::MessagingMember]), message: T.nilable(::String), message_html: T.nilable(::String), parent_message_id: T.nilable(::String), raw: T.nilable(T::Hash[Symbol, ::Object]), subject: T.nilable(::String), updated_at: T.nilable(::String), web_url: T.nilable(::String)).void }
      def initialize(attachments: nil, author_member: nil, channel_id: nil, created_at: nil, destination_members: nil, hidden_members: nil, id: nil, mentioned_members: nil, message: nil, message_html: nil, parent_message_id: nil, raw: nil, subject: nil, updated_at: nil, web_url: nil)
        @attachments = attachments
        @author_member = author_member
        @channel_id = channel_id
        @created_at = created_at
        @destination_members = destination_members
        @hidden_members = hidden_members
        @id = id
        @mentioned_members = mentioned_members
        @message = message
        @message_html = message_html
        @parent_message_id = parent_message_id
        @raw = raw
        @subject = subject
        @updated_at = updated_at
        @web_url = web_url
      end
    end
  end
end
