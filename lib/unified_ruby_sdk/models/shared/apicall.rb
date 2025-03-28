# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Shared
  

    class ApiCall < ::Crystalline::FieldAugmented
      extend T::Sig


      field :integration_type, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('integration_type') } }

      field :method, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('method') } }

      field :name, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('name') } }

      field :path, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('path') } }

      field :status, ::String, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('status') } }

      field :type, ::UnifiedRubySDK::Shared::ApiCallType, { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::UnifiedRubySDK::Shared::ApiCallType, false) } }

      field :connection_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('connection_id') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :environment, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('environment') } }

      field :error, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('error') } }

      field :external_xref, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('external_xref') } }

      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('id') } }

      field :ip_address, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('ip_address') } }

      field :is_billable, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('is_billable') } }

      field :size, T.nilable(::Float), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('size') } }

      field :webhook_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('webhook_id') } }

      field :workspace_id, T.nilable(::String), { 'format_json': { 'letter_case': ::UnifiedRubySDK::Utils.field_name('workspace_id') } }


      sig { params(integration_type: ::String, method: ::String, name: ::String, path: ::String, status: ::String, type: ::UnifiedRubySDK::Shared::ApiCallType, connection_id: T.nilable(::String), created_at: T.nilable(::DateTime), environment: T.nilable(::String), error: T.nilable(::String), external_xref: T.nilable(::String), id: T.nilable(::String), ip_address: T.nilable(::String), is_billable: T.nilable(T::Boolean), size: T.nilable(::Float), webhook_id: T.nilable(::String), workspace_id: T.nilable(::String)).void }
      def initialize(integration_type: nil, method: nil, name: nil, path: nil, status: nil, type: nil, connection_id: nil, created_at: nil, environment: nil, error: nil, external_xref: nil, id: nil, ip_address: nil, is_billable: nil, size: nil, webhook_id: nil, workspace_id: nil)
        @integration_type = integration_type
        @method = method
        @name = name
        @path = path
        @status = status
        @type = type
        @connection_id = connection_id
        @created_at = created_at
        @environment = environment
        @error = error
        @external_xref = external_xref
        @id = id
        @ip_address = ip_address
        @is_billable = is_billable
        @size = size
        @webhook_id = webhook_id
        @workspace_id = workspace_id
      end
    end
  end
end
