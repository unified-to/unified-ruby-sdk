# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class GetUnifiedIntegrationLoginRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # Type of the supported integration
      field :integration_type, ::String, { 'path_param': { 'field_name': 'integration_type', 'style': 'simple', 'explode': false } }
      # The ID of the workspace
      field :workspace_id, ::String, { 'path_param': { 'field_name': 'workspace_id', 'style': 'simple', 'explode': false } }

      field :env, T.nilable(::String), { 'query_param': { 'field_name': 'env', 'style': 'form', 'explode': true } }
      # The URL where you want the user to be redirect to after an unsuccessful authentication. An "error" variable will be appended.
      field :failure_redirect, T.nilable(::String), { 'query_param': { 'field_name': 'failure_redirect', 'style': 'form', 'explode': true } }

      field :redirect, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'redirect', 'style': 'form', 'explode': true } }
      # Extra state to send back to your success URL
      field :state, T.nilable(::String), { 'query_param': { 'field_name': 'state', 'style': 'form', 'explode': true } }
      # The URL where you want the user to be redirect to after a successful authentication/sign-in.  A "jwt" parameter will be appended to the URL which will contain a name and email of the user who just signed-in.
      field :success_redirect, T.nilable(::String), { 'query_param': { 'field_name': 'success_redirect', 'style': 'form', 'explode': true } }


      sig { params(integration_type: ::String, workspace_id: ::String, env: T.nilable(::String), failure_redirect: T.nilable(::String), redirect: T.nilable(T::Boolean), state: T.nilable(::String), success_redirect: T.nilable(::String)).void }
      def initialize(integration_type: nil, workspace_id: nil, env: nil, failure_redirect: nil, redirect: nil, state: nil, success_redirect: nil)
        @integration_type = integration_type
        @workspace_id = workspace_id
        @env = env
        @failure_redirect = failure_redirect
        @redirect = redirect
        @state = state
        @success_redirect = success_redirect
      end
    end
  end
end
