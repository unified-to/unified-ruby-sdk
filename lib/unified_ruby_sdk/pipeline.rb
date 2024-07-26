# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Pipeline
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(connection_id: ::String, crm_pipeline: T.nilable(::UnifiedRubySDK::Shared::CrmPipeline)).returns(::UnifiedRubySDK::Operations::CreateCrmPipelineResponse) }
    def create_crm_pipeline(connection_id, crm_pipeline = nil)
      # create_crm_pipeline - Create a pipeline
      request = ::UnifiedRubySDK::Operations::CreateCrmPipelineRequest.new(
        
        connection_id: connection_id,
        crm_pipeline: crm_pipeline
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateCrmPipelineRequest,
        base_url,
        '/crm/{connection_id}/pipeline',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :crm_pipeline, :json)
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

      res = ::UnifiedRubySDK::Operations::CreateCrmPipelineResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::CrmPipeline)
          res.crm_pipeline = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::GetCrmPipelineResponse) }
    def get_crm_pipeline(connection_id, id, fields_ = nil)
      # get_crm_pipeline - Retrieve a pipeline
      request = ::UnifiedRubySDK::Operations::GetCrmPipelineRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetCrmPipelineRequest,
        base_url,
        '/crm/{connection_id}/pipeline/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetCrmPipelineRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetCrmPipelineResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::CrmPipeline)
          res.crm_pipeline = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListCrmPipelinesRequest)).returns(::UnifiedRubySDK::Operations::ListCrmPipelinesResponse) }
    def list_crm_pipelines(request)
      # list_crm_pipelines - List all pipelines
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListCrmPipelinesRequest,
        base_url,
        '/crm/{connection_id}/pipeline',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListCrmPipelinesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListCrmPipelinesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::UnifiedRubySDK::Shared::CrmPipeline])
          res.crm_pipelines = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, crm_pipeline: T.nilable(::UnifiedRubySDK::Shared::CrmPipeline)).returns(::UnifiedRubySDK::Operations::PatchCrmPipelineResponse) }
    def patch_crm_pipeline(connection_id, id, crm_pipeline = nil)
      # patch_crm_pipeline - Update a pipeline
      request = ::UnifiedRubySDK::Operations::PatchCrmPipelineRequest.new(
        
        connection_id: connection_id,
        id: id,
        crm_pipeline: crm_pipeline
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchCrmPipelineRequest,
        base_url,
        '/crm/{connection_id}/pipeline/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :crm_pipeline, :json)
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

      res = ::UnifiedRubySDK::Operations::PatchCrmPipelineResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::CrmPipeline)
          res.crm_pipeline = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String).returns(::UnifiedRubySDK::Operations::RemoveCrmPipelineResponse) }
    def remove_crm_pipeline(connection_id, id)
      # remove_crm_pipeline - Remove a pipeline
      request = ::UnifiedRubySDK::Operations::RemoveCrmPipelineRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveCrmPipelineRequest,
        base_url,
        '/crm/{connection_id}/pipeline/{id}',
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

      res = ::UnifiedRubySDK::Operations::RemoveCrmPipelineResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if True
                
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::String)
          res.string = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, crm_pipeline: T.nilable(::UnifiedRubySDK::Shared::CrmPipeline)).returns(::UnifiedRubySDK::Operations::UpdateCrmPipelineResponse) }
    def update_crm_pipeline(connection_id, id, crm_pipeline = nil)
      # update_crm_pipeline - Update a pipeline
      request = ::UnifiedRubySDK::Operations::UpdateCrmPipelineRequest.new(
        
        connection_id: connection_id,
        id: id,
        crm_pipeline: crm_pipeline
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateCrmPipelineRequest,
        base_url,
        '/crm/{connection_id}/pipeline/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :crm_pipeline, :json)
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

      res = ::UnifiedRubySDK::Operations::UpdateCrmPipelineResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::CrmPipeline)
          res.crm_pipeline = out
        end
      end
      res
    end
  end
end
