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
  class Passthrough
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(connection_id: ::String, path: ::String, request_body: T.nilable(::Object), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::CreatePassthroughJsonResponse) }
    def create_passthrough_json(connection_id, path, request_body = nil, timeout_ms = nil)
      # create_passthrough_json - Passthrough POST
      request = ::UnifiedRubySDK::Operations::CreatePassthroughJsonRequest.new(
        
        connection_id: connection_id,
        path: path,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreatePassthroughJsonRequest,
        base_url,
        '/passthrough/{connection_id}/{path}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      headers['Accept'] = 'application/json;q=1, text/csv;q=0.8, text/plain;q=0.6, application/xml;q=0.4, */*;q=0'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.post(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::CreatePassthroughJsonResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )

      res.headers = r.headers
      if [204, 205].include?(r.status)
      elsif r.status == 304
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::Object)
          res.default_application_json_any = out
        end
        res.default_application_xml_res = r.env.response_body if Utils.match_content_type(content_type, 'application/xml')
        res.default_text_csv_res = r.env.response_body if Utils.match_content_type(content_type, 'text/csv')
        res.default_text_plain_res = r.env.response_body if Utils.match_content_type(content_type, 'text/plain')
        res.default_wildcard_wildcard_bytes = r.env.response_body if Utils.match_content_type(content_type, '*/*')
      end

      res
    end


    sig { params(connection_id: ::String, path: ::String, request_body: T.nilable(::String), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::CreatePassthroughRawResponse) }
    def create_passthrough_raw(connection_id, path, request_body = nil, timeout_ms = nil)
      # create_passthrough_raw - Passthrough POST
      request = ::UnifiedRubySDK::Operations::CreatePassthroughRawRequest.new(
        
        connection_id: connection_id,
        path: path,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreatePassthroughRawRequest,
        base_url,
        '/passthrough/{connection_id}/{path}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :raw)
      headers['content-type'] = req_content_type
      headers['Accept'] = 'application/json;q=1, text/csv;q=0.8, text/plain;q=0.6, application/xml;q=0.4, */*;q=0'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.post(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::CreatePassthroughRawResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )

      res.headers = r.headers
      if [204, 205].include?(r.status)
      elsif r.status == 304
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::Object)
          res.default_application_json_any = out
        end
        res.default_application_xml_res = r.env.response_body if Utils.match_content_type(content_type, 'application/xml')
        res.default_text_csv_res = r.env.response_body if Utils.match_content_type(content_type, 'text/csv')
        res.default_text_plain_res = r.env.response_body if Utils.match_content_type(content_type, 'text/plain')
        res.default_wildcard_wildcard_bytes = r.env.response_body if Utils.match_content_type(content_type, '*/*')
      end

      res
    end


    sig { params(connection_id: ::String, path: ::String, timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::ListPassthroughsResponse) }
    def list_passthroughs(connection_id, path, timeout_ms = nil)
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
      headers['Accept'] = 'application/json;q=1, text/csv;q=0.8, text/plain;q=0.6, application/xml;q=0.4, */*;q=0'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.get(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListPassthroughsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )

      res.headers = r.headers
      if [204, 205].include?(r.status)
      elsif r.status == 304
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::Object)
          res.default_application_json_any = out
        end
        res.default_application_xml_res = r.env.response_body if Utils.match_content_type(content_type, 'application/xml')
        res.default_text_csv_res = r.env.response_body if Utils.match_content_type(content_type, 'text/csv')
        res.default_text_plain_res = r.env.response_body if Utils.match_content_type(content_type, 'text/plain')
        res.default_wildcard_wildcard_bytes = r.env.response_body if Utils.match_content_type(content_type, '*/*')
      end

      res
    end


    sig { params(connection_id: ::String, path: ::String, request_body: T.nilable(::Object), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::PatchPassthroughJsonResponse) }
    def patch_passthrough_json(connection_id, path, request_body = nil, timeout_ms = nil)
      # patch_passthrough_json - Passthrough PUT
      request = ::UnifiedRubySDK::Operations::PatchPassthroughJsonRequest.new(
        
        connection_id: connection_id,
        path: path,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchPassthroughJsonRequest,
        base_url,
        '/passthrough/{connection_id}/{path}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      headers['Accept'] = 'application/json;q=1, text/csv;q=0.8, text/plain;q=0.6, application/xml;q=0.4, */*;q=0'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.patch(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::PatchPassthroughJsonResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )

      res.headers = r.headers
      if [204, 205].include?(r.status)
      elsif r.status == 304
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::Object)
          res.default_application_json_any = out
        end
        res.default_application_xml_res = r.env.response_body if Utils.match_content_type(content_type, 'application/xml')
        res.default_text_csv_res = r.env.response_body if Utils.match_content_type(content_type, 'text/csv')
        res.default_text_plain_res = r.env.response_body if Utils.match_content_type(content_type, 'text/plain')
        res.default_wildcard_wildcard_bytes = r.env.response_body if Utils.match_content_type(content_type, '*/*')
      end

      res
    end


    sig { params(connection_id: ::String, path: ::String, request_body: T.nilable(::String), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::PatchPassthroughRawResponse) }
    def patch_passthrough_raw(connection_id, path, request_body = nil, timeout_ms = nil)
      # patch_passthrough_raw - Passthrough PUT
      request = ::UnifiedRubySDK::Operations::PatchPassthroughRawRequest.new(
        
        connection_id: connection_id,
        path: path,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchPassthroughRawRequest,
        base_url,
        '/passthrough/{connection_id}/{path}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :raw)
      headers['content-type'] = req_content_type
      headers['Accept'] = 'application/json;q=1, text/csv;q=0.8, text/plain;q=0.6, application/xml;q=0.4, */*;q=0'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.patch(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::PatchPassthroughRawResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )

      res.headers = r.headers
      if [204, 205].include?(r.status)
      elsif r.status == 304
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::Object)
          res.default_application_json_any = out
        end
        res.default_application_xml_res = r.env.response_body if Utils.match_content_type(content_type, 'application/xml')
        res.default_text_csv_res = r.env.response_body if Utils.match_content_type(content_type, 'text/csv')
        res.default_text_plain_res = r.env.response_body if Utils.match_content_type(content_type, 'text/plain')
        res.default_wildcard_wildcard_bytes = r.env.response_body if Utils.match_content_type(content_type, '*/*')
      end

      res
    end


    sig { params(connection_id: ::String, path: ::String, timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::RemovePassthroughResponse) }
    def remove_passthrough(connection_id, path, timeout_ms = nil)
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
      headers['Accept'] = 'application/json;q=1, text/csv;q=0.8, text/plain;q=0.6, application/xml;q=0.4, */*;q=0'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.delete(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::RemovePassthroughResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )

      res.headers = r.headers
      if [204, 205].include?(r.status)
      elsif r.status == 304
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::Object)
          res.default_application_json_any = out
        end
        res.default_application_xml_res = r.env.response_body if Utils.match_content_type(content_type, 'application/xml')
        res.default_text_csv_res = r.env.response_body if Utils.match_content_type(content_type, 'text/csv')
        res.default_text_plain_res = r.env.response_body if Utils.match_content_type(content_type, 'text/plain')
        res.default_wildcard_wildcard_bytes = r.env.response_body if Utils.match_content_type(content_type, '*/*')
      end

      res
    end


    sig { params(connection_id: ::String, path: ::String, request_body: T.nilable(::Object), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::UpdatePassthroughJsonResponse) }
    def update_passthrough_json(connection_id, path, request_body = nil, timeout_ms = nil)
      # update_passthrough_json - Passthrough PUT
      request = ::UnifiedRubySDK::Operations::UpdatePassthroughJsonRequest.new(
        
        connection_id: connection_id,
        path: path,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdatePassthroughJsonRequest,
        base_url,
        '/passthrough/{connection_id}/{path}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      headers['Accept'] = 'application/json;q=1, text/csv;q=0.8, text/plain;q=0.6, application/xml;q=0.4, */*;q=0'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.put(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::UpdatePassthroughJsonResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )

      res.headers = r.headers
      if [204, 205].include?(r.status)
      elsif r.status == 304
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::Object)
          res.default_application_json_any = out
        end
        res.default_application_xml_res = r.env.response_body if Utils.match_content_type(content_type, 'application/xml')
        res.default_text_csv_res = r.env.response_body if Utils.match_content_type(content_type, 'text/csv')
        res.default_text_plain_res = r.env.response_body if Utils.match_content_type(content_type, 'text/plain')
        res.default_wildcard_wildcard_bytes = r.env.response_body if Utils.match_content_type(content_type, '*/*')
      end

      res
    end


    sig { params(connection_id: ::String, path: ::String, request_body: T.nilable(::String), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::UpdatePassthroughRawResponse) }
    def update_passthrough_raw(connection_id, path, request_body = nil, timeout_ms = nil)
      # update_passthrough_raw - Passthrough PUT
      request = ::UnifiedRubySDK::Operations::UpdatePassthroughRawRequest.new(
        
        connection_id: connection_id,
        path: path,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdatePassthroughRawRequest,
        base_url,
        '/passthrough/{connection_id}/{path}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :raw)
      headers['content-type'] = req_content_type
      headers['Accept'] = 'application/json;q=1, text/csv;q=0.8, text/plain;q=0.6, application/xml;q=0.4, */*;q=0'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.put(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::UpdatePassthroughRawResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )

      res.headers = r.headers
      if [204, 205].include?(r.status)
      elsif r.status == 304
      else
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::Object)
          res.default_application_json_any = out
        end
        res.default_application_xml_res = r.env.response_body if Utils.match_content_type(content_type, 'application/xml')
        res.default_text_csv_res = r.env.response_body if Utils.match_content_type(content_type, 'text/csv')
        res.default_text_plain_res = r.env.response_body if Utils.match_content_type(content_type, 'text/plain')
        res.default_wildcard_wildcard_bytes = r.env.response_body if Utils.match_content_type(content_type, '*/*')
      end

      res
    end
  end
end
