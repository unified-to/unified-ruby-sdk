# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module UnifiedRubySDK
  module Operations
  

    class GetUnifiedIntegrationAuthRequest < ::UnifiedRubySDK::Utils::FieldAugmented
      extend T::Sig

      # Type of the supported integration
      field :integration_type, ::String, { 'path_param': { 'field_name': 'integration_type', 'style': 'simple', 'explode': false } }
      # The ID of the workspace
      field :workspace_id, ::String, { 'path_param': { 'field_name': 'workspace_id', 'style': 'simple', 'explode': false } }

      field :env, T.nilable(::String), { 'query_param': { 'field_name': 'env', 'style': 'form', 'explode': true } }
      # Your user identifier to associate with the new Integration
      field :external_xref, T.nilable(::String), { 'query_param': { 'field_name': 'external_xref', 'style': 'form', 'explode': true } }
      # The URL where you want the user to be redirect to after an unsuccessful authentication. An "error" variable will be appended.
      field :failure_redirect, T.nilable(::String), { 'query_param': { 'field_name': 'failure_redirect', 'style': 'form', 'explode': true } }
      # Language: en, fr, es, it, pt, zh, hi
      field :lang, T.nilable(::String), { 'query_param': { 'field_name': 'lang', 'style': 'form', 'explode': true } }

      field :redirect, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'redirect', 'style': 'form', 'explode': true } }

      field :scopes, T.nilable(T::Array[::UnifiedRubySDK::Operations::Scopes]), { 'query_param': { 'field_name': 'scopes', 'style': 'form', 'explode': true } }
      # Extra state to send back to your success URL
      field :state, T.nilable(::String), { 'query_param': { 'field_name': 'state', 'style': 'form', 'explode': true } }

      field :subdomain, T.nilable(::String), { 'query_param': { 'field_name': 'subdomain', 'style': 'form', 'explode': true } }
      # The URL where you want the user to be redirect to after a successful authorization.  The connection ID will be appended with (id=<connectionId>) to this URL, as will the state that was provided.
      field :success_redirect, T.nilable(::String), { 'query_param': { 'field_name': 'success_redirect', 'style': 'form', 'explode': true } }


      sig { params(integration_type: ::String, workspace_id: ::String, env: T.nilable(::String), external_xref: T.nilable(::String), failure_redirect: T.nilable(::String), lang: T.nilable(::String), redirect: T.nilable(T::Boolean), scopes: T.nilable(T::Array[::UnifiedRubySDK::Operations::Scopes]), state: T.nilable(::String), subdomain: T.nilable(::String), success_redirect: T.nilable(::String)).void }
      def initialize(integration_type: nil, workspace_id: nil, env: nil, external_xref: nil, failure_redirect: nil, lang: nil, redirect: nil, scopes: nil, state: nil, subdomain: nil, success_redirect: nil)
        @integration_type = integration_type
        @workspace_id = workspace_id
        @env = env
        @external_xref = external_xref
        @failure_redirect = failure_redirect
        @lang = lang
        @redirect = redirect
        @scopes = scopes
        @state = state
        @subdomain = subdomain
        @success_redirect = success_redirect
      end
    end
  end
end
