# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Connection

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
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::RemoveUnifiedConnectionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if true
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
