# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class File

    extend T::Sig
    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end

    sig { params(connection_id: String, crm_file: T.nilable(Shared::CrmFile)).returns(Utils::FieldAugmented) }
    def create_crm_file(connection_id, crm_file = nil)
      # create_crm_file - Create a file
      request = Operations::CreateCrmFileRequest.new(
        
        connection_id: connection_id,
        crm_file: crm_file
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::CreateCrmFileRequest,
        base_url,
        '/crm/{connection_id}/file',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :crm_file, :json)
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

      res = Operations::CreateCrmFileResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::CrmFile)
          res.crm_file = out
        end
      end
      res
    end

    sig { params(connection_id: String, storage_file: T.nilable(Shared::StorageFile)).returns(Utils::FieldAugmented) }
    def create_storage_file(connection_id, storage_file = nil)
      # create_storage_file - Create a file
      request = Operations::CreateStorageFileRequest.new(
        
        connection_id: connection_id,
        storage_file: storage_file
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::CreateStorageFileRequest,
        base_url,
        '/storage/{connection_id}/file',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :storage_file, :json)
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

      res = Operations::CreateStorageFileResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::StorageFile)
          res.storage_file = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String, fields: T.nilable(T::Array[String])).returns(Utils::FieldAugmented) }
    def get_crm_file(connection_id, id, fields = nil)
      # get_crm_file - Retrieve a file
      request = Operations::GetCrmFileRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields: fields
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::GetCrmFileRequest,
        base_url,
        '/crm/{connection_id}/file/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::GetCrmFileRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetCrmFileResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::CrmFile)
          res.crm_file = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String, fields: T.nilable(T::Array[String])).returns(Utils::FieldAugmented) }
    def get_storage_file(connection_id, id, fields = nil)
      # get_storage_file - Retrieve a file
      request = Operations::GetStorageFileRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields: fields
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::GetStorageFileRequest,
        base_url,
        '/storage/{connection_id}/file/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::GetStorageFileRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetStorageFileResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::StorageFile)
          res.storage_file = out
        end
      end
      res
    end

    sig { params(request: T.nilable(Operations::ListCrmFilesRequest)).returns(Utils::FieldAugmented) }
    def list_crm_files(request)
      # list_crm_files - List all files
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::ListCrmFilesRequest,
        base_url,
        '/crm/{connection_id}/file',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::ListCrmFilesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ListCrmFilesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[Shared::CrmFile])
          res.crm_files = out
        end
      end
      res
    end

    sig { params(request: T.nilable(Operations::ListStorageFilesRequest)).returns(Utils::FieldAugmented) }
    def list_storage_files(request)
      # list_storage_files - List all files
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::ListStorageFilesRequest,
        base_url,
        '/storage/{connection_id}/file',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::ListStorageFilesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ListStorageFilesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[Shared::StorageFile])
          res.storage_files = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String, crm_file: T.nilable(Shared::CrmFile)).returns(Utils::FieldAugmented) }
    def patch_crm_file(connection_id, id, crm_file = nil)
      # patch_crm_file - Update a file
      request = Operations::PatchCrmFileRequest.new(
        
        connection_id: connection_id,
        id: id,
        crm_file: crm_file
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::PatchCrmFileRequest,
        base_url,
        '/crm/{connection_id}/file/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :crm_file, :json)
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

      res = Operations::PatchCrmFileResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::CrmFile)
          res.crm_file = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String, storage_file: T.nilable(Shared::StorageFile)).returns(Utils::FieldAugmented) }
    def patch_storage_file(connection_id, id, storage_file = nil)
      # patch_storage_file - Update a file
      request = Operations::PatchStorageFileRequest.new(
        
        connection_id: connection_id,
        id: id,
        storage_file: storage_file
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::PatchStorageFileRequest,
        base_url,
        '/storage/{connection_id}/file/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :storage_file, :json)
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

      res = Operations::PatchStorageFileResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::StorageFile)
          res.storage_file = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String).returns(Utils::FieldAugmented) }
    def remove_crm_file(connection_id, id)
      # remove_crm_file - Remove a file
      request = Operations::RemoveCrmFileRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::RemoveCrmFileRequest,
        base_url,
        '/crm/{connection_id}/file/{id}',
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

      res = Operations::RemoveCrmFileResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if True
                
        res.res = r.env.response_body if Utils.match_content_type(content_type, 'application/json')
      
      end
      res
    end

    sig { params(connection_id: String, id: String).returns(Utils::FieldAugmented) }
    def remove_storage_file(connection_id, id)
      # remove_storage_file - Remove a file
      request = Operations::RemoveStorageFileRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::RemoveStorageFileRequest,
        base_url,
        '/storage/{connection_id}/file/{id}',
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

      res = Operations::RemoveStorageFileResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if True
                
        res.res = r.env.response_body if Utils.match_content_type(content_type, 'application/json')
      
      end
      res
    end

    sig { params(connection_id: String, id: String, crm_file: T.nilable(Shared::CrmFile)).returns(Utils::FieldAugmented) }
    def update_crm_file(connection_id, id, crm_file = nil)
      # update_crm_file - Update a file
      request = Operations::UpdateCrmFileRequest.new(
        
        connection_id: connection_id,
        id: id,
        crm_file: crm_file
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::UpdateCrmFileRequest,
        base_url,
        '/crm/{connection_id}/file/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :crm_file, :json)
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

      res = Operations::UpdateCrmFileResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::CrmFile)
          res.crm_file = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String, storage_file: T.nilable(Shared::StorageFile)).returns(Utils::FieldAugmented) }
    def update_storage_file(connection_id, id, storage_file = nil)
      # update_storage_file - Update a file
      request = Operations::UpdateStorageFileRequest.new(
        
        connection_id: connection_id,
        id: id,
        storage_file: storage_file
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::UpdateStorageFileRequest,
        base_url,
        '/storage/{connection_id}/file/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :storage_file, :json)
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

      res = Operations::UpdateStorageFileResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::StorageFile)
          res.storage_file = out
        end
      end
      res
    end
  end
end
