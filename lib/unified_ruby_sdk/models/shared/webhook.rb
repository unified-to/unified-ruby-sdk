# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  
    # A webhook is used to POST new/updated information to your server.
    class Webhook < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :connection_id, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('connection_id') } }

      field :event, ::UnifiedRubySDK::Shared::Event, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('event'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::Event, false) } }

      field :hook_url, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('hook_url') } }

      field :interval, ::Float, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('interval') } }

      field :object_type, ::UnifiedRubySDK::Shared::ObjectType, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('object_type'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ObjectType, false) } }

      field :checked_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('checked_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :environment, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('environment') } }

      field :fields_, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('fields') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :integration_type, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('integration_type') } }

      field :is_healthy, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_healthy') } }

      field :meta, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('meta') } }

      field :page_max_limit, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('page_max_limit') } }
      # An array of the most revent virtual webhook runs
      field :runs, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('runs') } }

      field :updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :webhook_type, T.nilable(::UnifiedRubySDK::Shared::WebhookWebhookType), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('webhook_type'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::WebhookWebhookType, true) } }

      field :workspace_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('workspace_id') } }


      sig { params(connection_id: ::String, event: ::UnifiedRubySDK::Shared::Event, hook_url: ::String, interval: ::Float, object_type: ::UnifiedRubySDK::Shared::ObjectType, checked_at: T.nilable(::DateTime), created_at: T.nilable(::DateTime), environment: T.nilable(::String), fields_: T.nilable(::String), id: T.nilable(::String), integration_type: T.nilable(::String), is_healthy: T.nilable(T::Boolean), meta: T.nilable(T::Hash[Symbol, ::Object]), page_max_limit: T.nilable(::Float), runs: T.nilable(T::Array[::String]), updated_at: T.nilable(::DateTime), webhook_type: T.nilable(::UnifiedRubySDK::Shared::WebhookWebhookType), workspace_id: T.nilable(::String)).void }
      def initialize(connection_id: nil, event: nil, hook_url: nil, interval: nil, object_type: nil, checked_at: nil, created_at: nil, environment: nil, fields_: nil, id: nil, integration_type: nil, is_healthy: nil, meta: nil, page_max_limit: nil, runs: nil, updated_at: nil, webhook_type: nil, workspace_id: nil)
        @connection_id = connection_id
        @event = event
        @hook_url = hook_url
        @interval = interval
        @object_type = object_type
        @checked_at = checked_at
        @created_at = created_at
        @environment = environment
        @fields_ = fields_
        @id = id
        @integration_type = integration_type
        @is_healthy = is_healthy
        @meta = meta
        @page_max_limit = page_max_limit
        @runs = runs
        @updated_at = updated_at
        @webhook_type = webhook_type
        @workspace_id = workspace_id
      end
    end
  end
end