# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Metadata
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(metadata_metadata: ::UnifiedRubySDK::Shared::MetadataMetadata, connection_id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::CreateMetadataMetadataResponse) }
    def create_metadata_metadata(metadata_metadata, connection_id, fields_ = nil)
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

      res = ::UnifiedRubySDK::Operations::CreateMetadataMetadataResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::MetadataMetadata)
          res.metadata_metadata = out
        end
      end

      res
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::GetMetadataMetadataResponse) }
    def get_metadata_metadata(connection_id, id, fields_ = nil)
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

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetMetadataMetadataResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::MetadataMetadata)
          res.metadata_metadata = out
        end
      end

      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListMetadataMetadatasRequest)).returns(::UnifiedRubySDK::Operations::ListMetadataMetadatasResponse) }
    def list_metadata_metadatas(request)
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

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListMetadataMetadatasResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::UnifiedRubySDK::Shared::MetadataMetadata])
          res.metadata_metadatas = out
        end
      end

      res
    end


    sig { params(metadata_metadata: ::UnifiedRubySDK::Shared::MetadataMetadata, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::PatchMetadataMetadataResponse) }
    def patch_metadata_metadata(metadata_metadata, connection_id, id, fields_ = nil)
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

      r = @sdk_configuration.client.patch(url) do |req|
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

      res = ::UnifiedRubySDK::Operations::PatchMetadataMetadataResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::MetadataMetadata)
          res.metadata_metadata = out
        end
      end

      res
    end


    sig { params(connection_id: ::String, id: ::String).returns(::UnifiedRubySDK::Operations::RemoveMetadataMetadataResponse) }
    def remove_metadata_metadata(connection_id, id)
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

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
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


    sig { params(metadata_metadata: ::UnifiedRubySDK::Shared::MetadataMetadata, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::UpdateMetadataMetadataResponse) }
    def update_metadata_metadata(metadata_metadata, connection_id, id, fields_ = nil)
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

      r = @sdk_configuration.client.put(url) do |req|
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

      res = ::UnifiedRubySDK::Operations::UpdateMetadataMetadataResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::MetadataMetadata)
          res.metadata_metadata = out
        end
      end

      res
    end
  end
end
