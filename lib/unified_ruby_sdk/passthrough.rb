# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Passthrough
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(connection_id: ::String, path: ::String, request_body: T.nilable(T::Hash[Symbol, ::Object])).returns(::UnifiedRubySDK::Operations::CreatePassthroughResponse) }
    def create_passthrough(connection_id, path, request_body = nil)
      # create_passthrough - Passthrough POST
      request = ::UnifiedRubySDK::Operations::CreatePassthroughRequest.new(
        
        connection_id: connection_id,
        path: path,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreatePassthroughRequest,
        base_url,
        '/passthrough/{connection_id}/{path}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
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

      res = ::UnifiedRubySDK::Operations::CreatePassthroughResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Hash[Symbol, ::Object])
          res.result = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, path: ::String).returns(::UnifiedRubySDK::Operations::ListPassthroughsResponse) }
    def list_passthroughs(connection_id, path)
      # list_passthroughs - Passthrough GET
      request = ::UnifiedRubySDK::Operations::ListPassthroughsRequest.new(
        
        connection_id: connection_id,
        path: path
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListPassthroughsRequest,
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

      res = ::UnifiedRubySDK::Operations::ListPassthroughsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Hash[Symbol, ::Object])
          res.result = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, path: ::String, request_body: T.nilable(T::Hash[Symbol, ::Object])).returns(::UnifiedRubySDK::Operations::PatchPassthroughResponse) }
    def patch_passthrough(connection_id, path, request_body = nil)
      # patch_passthrough - Passthrough PUT
      request = ::UnifiedRubySDK::Operations::PatchPassthroughRequest.new(
        
        connection_id: connection_id,
        path: path,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchPassthroughRequest,
        base_url,
        '/passthrough/{connection_id}/{path}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
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

      res = ::UnifiedRubySDK::Operations::PatchPassthroughResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Hash[Symbol, ::Object])
          res.result = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, path: ::String).returns(::UnifiedRubySDK::Operations::RemovePassthroughResponse) }
    def remove_passthrough(connection_id, path)
      # remove_passthrough - Passthrough DELETE
      request = ::UnifiedRubySDK::Operations::RemovePassthroughRequest.new(
        
        connection_id: connection_id,
        path: path
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemovePassthroughRequest,
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

      res = ::UnifiedRubySDK::Operations::RemovePassthroughResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Hash[Symbol, ::Object])
          res.result = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, path: ::String, request_body: T.nilable(T::Hash[Symbol, ::Object])).returns(::UnifiedRubySDK::Operations::UpdatePassthroughResponse) }
    def update_passthrough(connection_id, path, request_body = nil)
      # update_passthrough - Passthrough PUT
      request = ::UnifiedRubySDK::Operations::UpdatePassthroughRequest.new(
        
        connection_id: connection_id,
        path: path,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdatePassthroughRequest,
        base_url,
        '/passthrough/{connection_id}/{path}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
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

      res = ::UnifiedRubySDK::Operations::UpdatePassthroughResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Hash[Symbol, ::Object])
          res.result = out
        end
      end
      res
    end
  end
end
