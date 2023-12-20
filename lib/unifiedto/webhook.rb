# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Webhook

    extend T::Sig
    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end

    sig { params(webhook: T.nilable(Shared::Webhook), include_all: T.nilable(T::Boolean)).returns(Utils::FieldAugmented) }
    def create_unified_webhook(webhook = nil, include_all = nil)
      # create_unified_webhook - Create webhook subscription
      # The data payload received by your server is described at https://docs.unified.to/unified/overview.  The `interval` field can be set as low as 15 minutes for paid accounts, and 60 minutes for free accounts.
      request = Operations::CreateUnifiedWebhookRequest.new(
        
        webhook: webhook,
        include_all: include_all
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/webhook"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :webhook, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(Operations::CreateUnifiedWebhookRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::CreateUnifiedWebhookResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Webhook)
          res.webhook = out
        end
      end
      res
    end

    sig { params(id: String).returns(Utils::FieldAugmented) }
    def get_unified_webhook(id)
      # get_unified_webhook - Retrieve webhook by its ID
      request = Operations::GetUnifiedWebhookRequest.new(
        
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::GetUnifiedWebhookRequest,
        base_url,
        '/unified/webhook/{id}',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetUnifiedWebhookResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Webhook)
          res.webhook = out
        end
      end
      res
    end

    sig { params(request: T.nilable(Operations::ListUnifiedWebhooksRequest)).returns(Utils::FieldAugmented) }
    def list_unified_webhooks(request)
      # list_unified_webhooks - Returns all registered webhooks
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/webhook"
      headers = {}
      query_params = Utils.get_query_params(Operations::ListUnifiedWebhooksRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ListUnifiedWebhooksResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[Shared::Webhook])
          res.webhooks = out
        end
      end
      res
    end

    sig { params(id: String).returns(Utils::FieldAugmented) }
    def remove_unified_webhook(id)
      # remove_unified_webhook - Remove webhook subscription
      request = Operations::RemoveUnifiedWebhookRequest.new(
        
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::RemoveUnifiedWebhookRequest,
        base_url,
        '/unified/webhook/{id}',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::RemoveUnifiedWebhookResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if True
                
        res.res = r.env.response_body if Utils.match_content_type(content_type, 'application/json')
      
      end
      res
    end
  end
end
