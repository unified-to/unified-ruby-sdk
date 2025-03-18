# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'faraday/retry'
require 'sorbet-runtime'
require_relative 'utils/retries'

module UnifiedRubySDK
  extend T::Sig
  class Integration
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::GetUnifiedIntegrationAuthRequest), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::GetUnifiedIntegrationAuthResponse) }
    def get_unified_integration_auth(request, timeout_ms = nil)
      # get_unified_integration_auth - Create connection indirectly
      # Returns an authorization URL for the specified integration.  Once a successful authorization occurs, a new connection is created.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetUnifiedIntegrationAuthRequest,
        base_url,
        '/unified/integration/auth/{workspace_id}/{integration_type}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetUnifiedIntegrationAuthRequest, request)
      headers['Accept'] = 'text/plain'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.get(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetUnifiedIntegrationAuthResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        res.res = r.env.response_body if Utils.match_content_type(content_type, 'text/plain')
      end

      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListUnifiedIntegrationWorkspacesRequest), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::ListUnifiedIntegrationWorkspacesResponse) }
    def list_unified_integration_workspaces(request, timeout_ms = nil)
      # list_unified_integration_workspaces - Returns all activated integrations in a workspace
      # No authentication required as this is to be used by front-end interface
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListUnifiedIntegrationWorkspacesRequest,
        base_url,
        '/unified/integration/workspace/{workspace_id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListUnifiedIntegrationWorkspacesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.get(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListUnifiedIntegrationWorkspacesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), T::Array[::UnifiedRubySDK::Shared::Integration])
          res.integrations = out
        end
      end

      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListUnifiedIntegrationsRequest), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::ListUnifiedIntegrationsResponse) }
    def list_unified_integrations(request, timeout_ms = nil)
      # list_unified_integrations - Returns all integrations
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/integration"
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListUnifiedIntegrationsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.get(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListUnifiedIntegrationsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), T::Array[::UnifiedRubySDK::Shared::Integration])
          res.integrations = out
        end
      end

      res
    end
  end
end
