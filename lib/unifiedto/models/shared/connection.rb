# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/property_connection_auth'

module OpenApiSDK
  module Shared
    # A connection represents a specific authentication of an integration.
    class Connection < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The Integration categories that this connection supports
      field :categories, T::Array[Shared::PropertyConnectionCategories], { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('categories') } }

      field :integration_type, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('integration_type') } }

      field :permissions, T::Array[Shared::PropertyConnectionPermissions], { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('permissions') } }
      # An authentication object that represents a specific authorized user's connection to an integration.
      field :auth, T.nilable(Shared::PropertyConnectionAuth), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('auth') } }

      field :auth_aws_arn, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('auth_aws_arn') } }

      field :created_at, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :environment, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('environment') } }

      field :external_xref, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('external_xref') } }

      field :id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }

      field :is_paused, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('is_paused') } }

      field :updated_at, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :workspace_id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('workspace_id') } }


      sig { params(categories: T::Array[Shared::PropertyConnectionCategories], integration_type: String, permissions: T::Array[Shared::PropertyConnectionPermissions], auth: T.nilable(Shared::PropertyConnectionAuth), auth_aws_arn: T.nilable(String), created_at: T.nilable(DateTime), environment: T.nilable(String), external_xref: T.nilable(String), id: T.nilable(String), is_paused: T.nilable(T::Boolean), updated_at: T.nilable(DateTime), workspace_id: T.nilable(String)).void }
      def initialize(categories: nil, integration_type: nil, permissions: nil, auth: nil, auth_aws_arn: nil, created_at: nil, environment: nil, external_xref: nil, id: nil, is_paused: nil, updated_at: nil, workspace_id: nil)
        @categories = categories
        @integration_type = integration_type
        @permissions = permissions
        @auth = auth
        @auth_aws_arn = auth_aws_arn
        @created_at = created_at
        @environment = environment
        @external_xref = external_xref
        @id = id
        @is_paused = is_paused
        @updated_at = updated_at
        @workspace_id = workspace_id
      end
    end
  end
end