# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Unified

    extend T::Sig
    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end

    sig { params(request: T.nilable(Shared::Connection)).returns(Utils::FieldAugmented) }
    def create_unified_connection(request)
      # create_unified_connection - Create connection
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/connection"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
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

      res = Operations::CreateUnifiedConnectionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Connection)
          res.connection = out
        end
      end
      res
    end

    sig { params(connection_id: String, object: String, webhook: T.nilable(Shared::Webhook), events: T.nilable(T::Array[Operations::Events])).returns(Utils::FieldAugmented) }
    def create_unified_webhook(connection_id, object, webhook = nil, events = nil)
      # create_unified_webhook - Create webhook subscription
      # To maintain compatibility with the webhooks specification and Zapier webhooks, only the hook_url field is required in the payload when creating a Webhook.  When updated/new objects are found, the array of objects will be POSTed to the hook_url with the paramater hookId=<hookId>.
      request = Operations::CreateUnifiedWebhookRequest.new(
        
        connection_id: connection_id,
        object: object,
        webhook: webhook,
        events: events
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::CreateUnifiedWebhookRequest,
        base_url,
        '/unified/webhook/{connection_id}/{object}',
        request
      )
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
    def get_unified_apicall(id)
      # get_unified_apicall - Retrieve specific API Call by its ID
      request = Operations::GetUnifiedApicallRequest.new(
        
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::GetUnifiedApicallRequest,
        base_url,
        '/unified/apicall/{id}',
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

      res = Operations::GetUnifiedApicallResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::ApiCall)
          res.api_call = out
        end
      end
      res
    end

    sig { params(id: String).returns(Utils::FieldAugmented) }
    def get_unified_connection(id)
      # get_unified_connection - Retrieve connection
      request = Operations::GetUnifiedConnectionRequest.new(
        
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::GetUnifiedConnectionRequest,
        base_url,
        '/unified/connection/{id}',
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

      res = Operations::GetUnifiedConnectionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Connection)
          res.connection = out
        end
      end
      res
    end

    sig { params(integration_type: String).returns(Utils::FieldAugmented) }
    def get_unified_integration(integration_type)
      # get_unified_integration - Retrieve an integration
      request = Operations::GetUnifiedIntegrationRequest.new(
        
        integration_type: integration_type
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::GetUnifiedIntegrationRequest,
        base_url,
        '/unified/integration/{integration_type}',
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

      res = Operations::GetUnifiedIntegrationResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Integration)
          res.integration = out
        end
      end
      res
    end

    sig { params(request: T.nilable(Operations::GetUnifiedIntegrationAuthRequest)).returns(Utils::FieldAugmented) }
    def get_unified_integration_auth(request)
      # get_unified_integration_auth - Create connection indirectly
      # Returns an authorization URL for the specified integration.  Once a successful authorization occurs, a new connection is created.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::GetUnifiedIntegrationAuthRequest,
        base_url,
        '/unified/integration/auth/{workspace_id}/{integration_type}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::GetUnifiedIntegrationAuthRequest, request)
      headers['Accept'] = 'text/plain'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetUnifiedIntegrationAuthResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        res.res = r.env.response_body if Utils.match_content_type(content_type, 'text/plain')
      
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

    sig { params(request: T.nilable(Operations::ListUnifiedApicallsRequest)).returns(Utils::FieldAugmented) }
    def list_unified_apicalls(request)
      # list_unified_apicalls - Returns API Calls
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/apicall"
      headers = {}
      query_params = Utils.get_query_params(Operations::ListUnifiedApicallsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ListUnifiedApicallsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[Shared::ApiCall])
          res.api_calls = out
        end
      end
      res
    end

    sig { params(request: T.nilable(Operations::ListUnifiedConnectionsRequest)).returns(Utils::FieldAugmented) }
    def list_unified_connections(request)
      # list_unified_connections - List all connections
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/connection"
      headers = {}
      query_params = Utils.get_query_params(Operations::ListUnifiedConnectionsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ListUnifiedConnectionsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[Shared::Connection])
          res.connections = out
        end
      end
      res
    end

    sig { params(request: T.nilable(Operations::ListUnifiedIntegrationWorkspacesRequest)).returns(Utils::FieldAugmented) }
    def list_unified_integration_workspaces(request)
      # list_unified_integration_workspaces - Returns all activated integrations in a workspace
      # No authentication required as this is to be used by front-end interface
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::ListUnifiedIntegrationWorkspacesRequest,
        base_url,
        '/unified/integration/workspace/{workspace_id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::ListUnifiedIntegrationWorkspacesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ListUnifiedIntegrationWorkspacesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[Shared::Integration])
          res.integrations = out
        end
      end
      res
    end

    sig { params(request: T.nilable(Operations::ListUnifiedIntegrationsRequest)).returns(Utils::FieldAugmented) }
    def list_unified_integrations(request)
      # list_unified_integrations - Returns all integrations
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/unified/integration"
      headers = {}
      query_params = Utils.get_query_params(Operations::ListUnifiedIntegrationsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ListUnifiedIntegrationsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[Shared::Integration])
          res.integrations = out
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

    sig { params(id: String, connection: T.nilable(Shared::Connection)).returns(Utils::FieldAugmented) }
    def patch_unified_connection(id, connection = nil)
      # patch_unified_connection - Update connection
      request = Operations::PatchUnifiedConnectionRequest.new(
        
        id: id,
        connection: connection
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::PatchUnifiedConnectionRequest,
        base_url,
        '/unified/connection/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :connection, :json)
      headers['content-type'] = req_content_type
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.patch(url) do |req|
        req.headers = headers
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

      res = Operations::PatchUnifiedConnectionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Connection)
          res.connection = out
        end
      end
      res
    end

    sig { params(id: String).returns(Utils::FieldAugmented) }
    def remove_unified_connection(id)
      # remove_unified_connection - Remove connection
      request = Operations::RemoveUnifiedConnectionRequest.new(
        
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::RemoveUnifiedConnectionRequest,
        base_url,
        '/unified/connection/{id}',
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

      res = Operations::RemoveUnifiedConnectionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if True
                
        res.res = r.env.response_body if Utils.match_content_type(content_type, 'application/json')
      
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

    sig { params(id: String, connection: T.nilable(Shared::Connection)).returns(Utils::FieldAugmented) }
    def update_unified_connection(id, connection = nil)
      # update_unified_connection - Update connection
      request = Operations::UpdateUnifiedConnectionRequest.new(
        
        id: id,
        connection: connection
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::UpdateUnifiedConnectionRequest,
        base_url,
        '/unified/connection/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :connection, :json)
      headers['content-type'] = req_content_type
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.put(url) do |req|
        req.headers = headers
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

      res = Operations::UpdateUnifiedConnectionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Connection)
          res.connection = out
        end
      end
      res
    end
  end
end
