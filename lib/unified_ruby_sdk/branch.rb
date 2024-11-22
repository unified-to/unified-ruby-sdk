# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Branch
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(connection_id: ::String, repo_branch: T.nilable(::UnifiedRubySDK::Shared::RepoBranch), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::CreateRepoBranchResponse) }
    def create_repo_branch(connection_id, repo_branch = nil, fields_ = nil)
      # create_repo_branch - Create a branch
      request = ::UnifiedRubySDK::Operations::CreateRepoBranchRequest.new(
        
        connection_id: connection_id,
        repo_branch: repo_branch,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateRepoBranchRequest,
        base_url,
        '/repo/{connection_id}/branch',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :repo_branch, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::CreateRepoBranchRequest, request)
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

      res = ::UnifiedRubySDK::Operations::CreateRepoBranchResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::RepoBranch)
          res.repo_branch = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::GetRepoBranchResponse) }
    def get_repo_branch(connection_id, id, fields_ = nil)
      # get_repo_branch - Retrieve a branch
      request = ::UnifiedRubySDK::Operations::GetRepoBranchRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetRepoBranchRequest,
        base_url,
        '/repo/{connection_id}/branch/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetRepoBranchRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetRepoBranchResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::RepoBranch)
          res.repo_branch = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListRepoBranchesRequest)).returns(::UnifiedRubySDK::Operations::ListRepoBranchesResponse) }
    def list_repo_branches(request)
      # list_repo_branches - List all branches
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListRepoBranchesRequest,
        base_url,
        '/repo/{connection_id}/branch',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListRepoBranchesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListRepoBranchesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::UnifiedRubySDK::Shared::RepoBranch])
          res.repo_branches = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, repo_branch: T.nilable(::UnifiedRubySDK::Shared::RepoBranch), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::PatchRepoBranchResponse) }
    def patch_repo_branch(connection_id, id, repo_branch = nil, fields_ = nil)
      # patch_repo_branch - Update a branch
      request = ::UnifiedRubySDK::Operations::PatchRepoBranchRequest.new(
        
        connection_id: connection_id,
        id: id,
        repo_branch: repo_branch,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchRepoBranchRequest,
        base_url,
        '/repo/{connection_id}/branch/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :repo_branch, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::PatchRepoBranchRequest, request)
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

      res = ::UnifiedRubySDK::Operations::PatchRepoBranchResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::RepoBranch)
          res.repo_branch = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String).returns(::UnifiedRubySDK::Operations::RemoveRepoBranchResponse) }
    def remove_repo_branch(connection_id, id)
      # remove_repo_branch - Remove a branch
      request = ::UnifiedRubySDK::Operations::RemoveRepoBranchRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveRepoBranchRequest,
        base_url,
        '/repo/{connection_id}/branch/{id}',
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

      res = ::UnifiedRubySDK::Operations::RemoveRepoBranchResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      else
                
        res.headers = r.headers
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, repo_branch: T.nilable(::UnifiedRubySDK::Shared::RepoBranch), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::UpdateRepoBranchResponse) }
    def update_repo_branch(connection_id, id, repo_branch = nil, fields_ = nil)
      # update_repo_branch - Update a branch
      request = ::UnifiedRubySDK::Operations::UpdateRepoBranchRequest.new(
        
        connection_id: connection_id,
        id: id,
        repo_branch: repo_branch,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateRepoBranchRequest,
        base_url,
        '/repo/{connection_id}/branch/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :repo_branch, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::UpdateRepoBranchRequest, request)
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

      res = ::UnifiedRubySDK::Operations::UpdateRepoBranchResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::RepoBranch)
          res.repo_branch = out
        end
      end
      res
    end
  end
end
