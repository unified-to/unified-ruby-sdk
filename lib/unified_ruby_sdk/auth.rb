# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Auth
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::GetUnifiedIntegrationAuthRequest)).returns(::UnifiedRubySDK::Operations::GetUnifiedIntegrationAuthResponse) }
    def get_unified_integration_auth(request)
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

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
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


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::GetUnifiedIntegrationLoginRequest)).returns(::UnifiedRubySDK::Operations::GetUnifiedIntegrationLoginResponse) }
    def get_unified_integration_login(request)
      # get_unified_integration_login - Sign in a user
      # Returns an authentication URL for the specified integration.  Once a successful authentication occurs, the name and email are returned inside a jwt parameter, which is a JSON web token that is base-64 encoded.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetUnifiedIntegrationLoginRequest,
        base_url,
        '/unified/integration/login/{workspace_id}/{integration_type}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetUnifiedIntegrationLoginRequest, request)
      headers['Accept'] = 'text/plain'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetUnifiedIntegrationLoginResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        res.res = r.env.response_body if Utils.match_content_type(content_type, 'text/plain')
      end

      res
    end
  end
end
