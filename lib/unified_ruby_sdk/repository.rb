# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Repository
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(connection_id: ::String, repo_repository: T.nilable(::UnifiedRubySDK::Shared::RepoRepository), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::CreateRepoRepositoryResponse) }
    def create_repo_repository(connection_id, repo_repository = nil, fields_ = nil)
      # create_repo_repository - Create a repository
      request = ::UnifiedRubySDK::Operations::CreateRepoRepositoryRequest.new(
        
        connection_id: connection_id,
        repo_repository: repo_repository,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateRepoRepositoryRequest,
        base_url,
        '/repo/{connection_id}/repository',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :repo_repository, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::CreateRepoRepositoryRequest, request)
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

      res = ::UnifiedRubySDK::Operations::CreateRepoRepositoryResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::RepoRepository)
          res.repo_repository = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::GetRepoRepositoryResponse) }
    def get_repo_repository(connection_id, id, fields_ = nil)
      # get_repo_repository - Retrieve a repository
      request = ::UnifiedRubySDK::Operations::GetRepoRepositoryRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetRepoRepositoryRequest,
        base_url,
        '/repo/{connection_id}/repository/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetRepoRepositoryRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetRepoRepositoryResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::RepoRepository)
          res.repo_repository = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListRepoRepositoriesRequest)).returns(::UnifiedRubySDK::Operations::ListRepoRepositoriesResponse) }
    def list_repo_repositories(request)
      # list_repo_repositories - List all repositories
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListRepoRepositoriesRequest,
        base_url,
        '/repo/{connection_id}/repository',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListRepoRepositoriesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListRepoRepositoriesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::UnifiedRubySDK::Shared::RepoRepository])
          res.repo_repositories = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, repo_repository: T.nilable(::UnifiedRubySDK::Shared::RepoRepository), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::PatchRepoRepositoryResponse) }
    def patch_repo_repository(connection_id, id, repo_repository = nil, fields_ = nil)
      # patch_repo_repository - Update a repository
      request = ::UnifiedRubySDK::Operations::PatchRepoRepositoryRequest.new(
        
        connection_id: connection_id,
        id: id,
        repo_repository: repo_repository,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchRepoRepositoryRequest,
        base_url,
        '/repo/{connection_id}/repository/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :repo_repository, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::PatchRepoRepositoryRequest, request)
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

      res = ::UnifiedRubySDK::Operations::PatchRepoRepositoryResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::RepoRepository)
          res.repo_repository = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String).returns(::UnifiedRubySDK::Operations::RemoveRepoRepositoryResponse) }
    def remove_repo_repository(connection_id, id)
      # remove_repo_repository - Remove a repository
      request = ::UnifiedRubySDK::Operations::RemoveRepoRepositoryRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveRepoRepositoryRequest,
        base_url,
        '/repo/{connection_id}/repository/{id}',
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

      res = ::UnifiedRubySDK::Operations::RemoveRepoRepositoryResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      
      res
    end


    sig { params(connection_id: ::String, id: ::String, repo_repository: T.nilable(::UnifiedRubySDK::Shared::RepoRepository), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::UpdateRepoRepositoryResponse) }
    def update_repo_repository(connection_id, id, repo_repository = nil, fields_ = nil)
      # update_repo_repository - Update a repository
      request = ::UnifiedRubySDK::Operations::UpdateRepoRepositoryRequest.new(
        
        connection_id: connection_id,
        id: id,
        repo_repository: repo_repository,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateRepoRepositoryRequest,
        base_url,
        '/repo/{connection_id}/repository/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :repo_repository, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::UpdateRepoRepositoryRequest, request)
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

      res = ::UnifiedRubySDK::Operations::UpdateRepoRepositoryResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::RepoRepository)
          res.repo_repository = out
        end
      end
      res
    end
  end
end