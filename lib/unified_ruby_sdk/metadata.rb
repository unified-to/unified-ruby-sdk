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
  class Metadata
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(metadata_metadata: ::UnifiedRubySDK::Shared::MetadataMetadata, connection_id: ::String, fields_: T.nilable(T::Array[::String]), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::CreateMetadataMetadataResponse) }
    def create_metadata_metadata(metadata_metadata, connection_id, fields_ = nil, timeout_ms = nil)
      # create_metadata_metadata - Create a metadata
      request = ::UnifiedRubySDK::Operations::CreateMetadataMetadataRequest.new(
        
        metadata_metadata: metadata_metadata,
        connection_id: connection_id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateMetadataMetadataRequest,
        base_url,
        '/metadata/{connection_id}/metadata',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :metadata_metadata, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::CreateMetadataMetadataRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.post(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        req.params = query_params
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

      res = ::UnifiedRubySDK::Operations::CreateMetadataMetadataResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::MetadataMetadata)
          res.metadata_metadata = out
        end
      end

      res
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String]), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::GetMetadataMetadataResponse) }
    def get_metadata_metadata(connection_id, id, fields_ = nil, timeout_ms = nil)
      # get_metadata_metadata - Retrieve a metadata
      request = ::UnifiedRubySDK::Operations::GetMetadataMetadataRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetMetadataMetadataRequest,
        base_url,
        '/metadata/{connection_id}/metadata/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetMetadataMetadataRequest, request)
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

      res = ::UnifiedRubySDK::Operations::GetMetadataMetadataResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::MetadataMetadata)
          res.metadata_metadata = out
        end
      end

      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListMetadataMetadatasRequest), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::ListMetadataMetadatasResponse) }
    def list_metadata_metadatas(request, timeout_ms = nil)
      # list_metadata_metadatas - List all metadatas
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListMetadataMetadatasRequest,
        base_url,
        '/metadata/{connection_id}/metadata',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListMetadataMetadatasRequest, request)
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

      res = ::UnifiedRubySDK::Operations::ListMetadataMetadatasResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), T::Array[::UnifiedRubySDK::Shared::MetadataMetadata])
          res.metadata_metadatas = out
        end
      end

      res
    end


    sig { params(metadata_metadata: ::UnifiedRubySDK::Shared::MetadataMetadata, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String]), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::PatchMetadataMetadataResponse) }
    def patch_metadata_metadata(metadata_metadata, connection_id, id, fields_ = nil, timeout_ms = nil)
      # patch_metadata_metadata - Update a metadata
      request = ::UnifiedRubySDK::Operations::PatchMetadataMetadataRequest.new(
        
        metadata_metadata: metadata_metadata,
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchMetadataMetadataRequest,
        base_url,
        '/metadata/{connection_id}/metadata/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :metadata_metadata, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::PatchMetadataMetadataRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.patch(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        req.params = query_params
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

      res = ::UnifiedRubySDK::Operations::PatchMetadataMetadataResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::MetadataMetadata)
          res.metadata_metadata = out
        end
      end

      res
    end


    sig { params(connection_id: ::String, id: ::String, timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::RemoveMetadataMetadataResponse) }
    def remove_metadata_metadata(connection_id, id, timeout_ms = nil)
      # remove_metadata_metadata - Remove a metadata
      request = ::UnifiedRubySDK::Operations::RemoveMetadataMetadataRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveMetadataMetadataRequest,
        base_url,
        '/metadata/{connection_id}/metadata/{id}',
        request
      )
      headers = {}
      headers['Accept'] = '*/*'
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

      res = ::UnifiedRubySDK::Operations::RemoveMetadataMetadataResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      else
        res.headers = r.headers
      end

      res
    end


    sig { params(metadata_metadata: ::UnifiedRubySDK::Shared::MetadataMetadata, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String]), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::UpdateMetadataMetadataResponse) }
    def update_metadata_metadata(metadata_metadata, connection_id, id, fields_ = nil, timeout_ms = nil)
      # update_metadata_metadata - Update a metadata
      request = ::UnifiedRubySDK::Operations::UpdateMetadataMetadataRequest.new(
        
        metadata_metadata: metadata_metadata,
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateMetadataMetadataRequest,
        base_url,
        '/metadata/{connection_id}/metadata/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :metadata_metadata, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::UpdateMetadataMetadataRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.put(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        req.params = query_params
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

      res = ::UnifiedRubySDK::Operations::UpdateMetadataMetadataResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::MetadataMetadata)
          res.metadata_metadata = out
        end
      end

      res
    end
  end
end
