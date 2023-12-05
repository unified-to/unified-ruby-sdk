# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Passthrough

    extend T::Sig
    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end

    sig { params(connection_id: String, path: String, undefined: T.nilable(Shared::Undefined)).returns(Utils::FieldAugmented) }
    def create_passthrough(connection_id, path, undefined = nil)
      # create_passthrough - Passthrough POST
      request = Operations::CreatePassthroughRequest.new(
        
        connection_id: connection_id,
        path: path,
        undefined: undefined
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::CreatePassthroughRequest,
        base_url,
        '/passthrough/{connection_id}/{path}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :undefined, :json)
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

      res = Operations::CreatePassthroughResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Undefined)
          res.undefined = out
        end
      end
      res
    end

    sig { params(connection_id: String, path: String).returns(Utils::FieldAugmented) }
    def list_passthroughs(connection_id, path)
      # list_passthroughs - Passthrough GET
      request = Operations::ListPassthroughsRequest.new(
        
        connection_id: connection_id,
        path: path
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::ListPassthroughsRequest,
        base_url,
        '/passthrough/{connection_id}/{path}',
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

      res = Operations::ListPassthroughsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Undefined)
          res.undefined = out
        end
      end
      res
    end

    sig { params(connection_id: String, path: String, undefined: T.nilable(Shared::Undefined)).returns(Utils::FieldAugmented) }
    def patch_passthrough(connection_id, path, undefined = nil)
      # patch_passthrough - Passthrough PUT
      request = Operations::PatchPassthroughRequest.new(
        
        connection_id: connection_id,
        path: path,
        undefined: undefined
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::PatchPassthroughRequest,
        base_url,
        '/passthrough/{connection_id}/{path}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :undefined, :json)
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

      res = Operations::PatchPassthroughResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Undefined)
          res.undefined = out
        end
      end
      res
    end

    sig { params(connection_id: String, path: String).returns(Utils::FieldAugmented) }
    def remove_passthrough(connection_id, path)
      # remove_passthrough - Passthrough DELETE
      request = Operations::RemovePassthroughRequest.new(
        
        connection_id: connection_id,
        path: path
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::RemovePassthroughRequest,
        base_url,
        '/passthrough/{connection_id}/{path}',
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

      res = Operations::RemovePassthroughResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Undefined)
          res.undefined = out
        end
      end
      res
    end

    sig { params(connection_id: String, path: String, undefined: T.nilable(Shared::Undefined)).returns(Utils::FieldAugmented) }
    def update_passthrough(connection_id, path, undefined = nil)
      # update_passthrough - Passthrough PUT
      request = Operations::UpdatePassthroughRequest.new(
        
        connection_id: connection_id,
        path: path,
        undefined: undefined
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::UpdatePassthroughRequest,
        base_url,
        '/passthrough/{connection_id}/{path}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :undefined, :json)
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

      res = Operations::UpdatePassthroughResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Undefined)
          res.undefined = out
        end
      end
      res
    end
  end
end