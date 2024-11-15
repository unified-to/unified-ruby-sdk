# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Project
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(connection_id: ::String, task_project: T.nilable(::UnifiedRubySDK::Shared::TaskProject), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::CreateTaskProjectResponse) }
    def create_task_project(connection_id, task_project = nil, fields_ = nil)
      # create_task_project - Create a project
      request = ::UnifiedRubySDK::Operations::CreateTaskProjectRequest.new(
        
        connection_id: connection_id,
        task_project: task_project,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateTaskProjectRequest,
        base_url,
        '/task/{connection_id}/project',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :task_project, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::CreateTaskProjectRequest, request)
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

      res = ::UnifiedRubySDK::Operations::CreateTaskProjectResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::TaskProject)
          res.task_project = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::GetTaskProjectResponse) }
    def get_task_project(connection_id, id, fields_ = nil)
      # get_task_project - Retrieve a project
      request = ::UnifiedRubySDK::Operations::GetTaskProjectRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetTaskProjectRequest,
        base_url,
        '/task/{connection_id}/project/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetTaskProjectRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetTaskProjectResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::TaskProject)
          res.task_project = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListTaskProjectsRequest)).returns(::UnifiedRubySDK::Operations::ListTaskProjectsResponse) }
    def list_task_projects(request)
      # list_task_projects - List all projects
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListTaskProjectsRequest,
        base_url,
        '/task/{connection_id}/project',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListTaskProjectsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListTaskProjectsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::UnifiedRubySDK::Shared::TaskProject])
          res.task_projects = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, task_project: T.nilable(::UnifiedRubySDK::Shared::TaskProject), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::PatchTaskProjectResponse) }
    def patch_task_project(connection_id, id, task_project = nil, fields_ = nil)
      # patch_task_project - Update a project
      request = ::UnifiedRubySDK::Operations::PatchTaskProjectRequest.new(
        
        connection_id: connection_id,
        id: id,
        task_project: task_project,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchTaskProjectRequest,
        base_url,
        '/task/{connection_id}/project/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :task_project, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::PatchTaskProjectRequest, request)
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

      res = ::UnifiedRubySDK::Operations::PatchTaskProjectResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::TaskProject)
          res.task_project = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String).returns(::UnifiedRubySDK::Operations::RemoveTaskProjectResponse) }
    def remove_task_project(connection_id, id)
      # remove_task_project - Remove a project
      request = ::UnifiedRubySDK::Operations::RemoveTaskProjectRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveTaskProjectRequest,
        base_url,
        '/task/{connection_id}/project/{id}',
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

      res = ::UnifiedRubySDK::Operations::RemoveTaskProjectResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      else
                
        res.headers = r.headers
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, task_project: T.nilable(::UnifiedRubySDK::Shared::TaskProject), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::UpdateTaskProjectResponse) }
    def update_task_project(connection_id, id, task_project = nil, fields_ = nil)
      # update_task_project - Update a project
      request = ::UnifiedRubySDK::Operations::UpdateTaskProjectRequest.new(
        
        connection_id: connection_id,
        id: id,
        task_project: task_project,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateTaskProjectRequest,
        base_url,
        '/task/{connection_id}/project/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :task_project, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::UpdateTaskProjectRequest, request)
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

      res = ::UnifiedRubySDK::Operations::UpdateTaskProjectResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::TaskProject)
          res.task_project = out
        end
      end
      res
    end
  end
end
