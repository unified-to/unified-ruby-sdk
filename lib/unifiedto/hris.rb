# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Hris

    extend T::Sig
    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end

    sig { params(connection_id: String, hris_employee: T.nilable(Shared::HrisEmployee)).returns(Utils::FieldAugmented) }
    def create_hris_employee(connection_id, hris_employee = nil)
      # create_hris_employee - Create an employee
      request = Operations::CreateHrisEmployeeRequest.new(
        
        connection_id: connection_id,
        hris_employee: hris_employee
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::CreateHrisEmployeeRequest,
        base_url,
        '/hris/{connection_id}/employee',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :hris_employee, :json)
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

      res = Operations::CreateHrisEmployeeResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::HrisEmployee)
          res.hris_employee = out
        end
      end
      res
    end

    sig { params(connection_id: String, hris_group: T.nilable(Shared::HrisGroup)).returns(Utils::FieldAugmented) }
    def create_hris_group(connection_id, hris_group = nil)
      # create_hris_group - Create a group
      request = Operations::CreateHrisGroupRequest.new(
        
        connection_id: connection_id,
        hris_group: hris_group
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::CreateHrisGroupRequest,
        base_url,
        '/hris/{connection_id}/group',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :hris_group, :json)
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

      res = Operations::CreateHrisGroupResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::HrisGroup)
          res.hris_group = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String, fields: T.nilable(T::Array[String])).returns(Utils::FieldAugmented) }
    def get_hris_employee(connection_id, id, fields = nil)
      # get_hris_employee - Retrieve an employee
      request = Operations::GetHrisEmployeeRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields: fields
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::GetHrisEmployeeRequest,
        base_url,
        '/hris/{connection_id}/employee/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::GetHrisEmployeeRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetHrisEmployeeResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::HrisEmployee)
          res.hris_employee = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String, fields: T.nilable(T::Array[String])).returns(Utils::FieldAugmented) }
    def get_hris_group(connection_id, id, fields = nil)
      # get_hris_group - Retrieve a group
      request = Operations::GetHrisGroupRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields: fields
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::GetHrisGroupRequest,
        base_url,
        '/hris/{connection_id}/group/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::GetHrisGroupRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetHrisGroupResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::HrisGroup)
          res.hris_group = out
        end
      end
      res
    end

    sig { params(request: T.nilable(Operations::ListHrisEmployeesRequest)).returns(Utils::FieldAugmented) }
    def list_hris_employees(request)
      # list_hris_employees - List all employees
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::ListHrisEmployeesRequest,
        base_url,
        '/hris/{connection_id}/employee',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::ListHrisEmployeesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ListHrisEmployeesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[Shared::HrisEmployee])
          res.hris_employees = out
        end
      end
      res
    end

    sig { params(request: T.nilable(Operations::ListHrisGroupsRequest)).returns(Utils::FieldAugmented) }
    def list_hris_groups(request)
      # list_hris_groups - List all groups
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::ListHrisGroupsRequest,
        base_url,
        '/hris/{connection_id}/group',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::ListHrisGroupsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ListHrisGroupsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[Shared::HrisGroup])
          res.hris_groups = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String, hris_employee: T.nilable(Shared::HrisEmployee)).returns(Utils::FieldAugmented) }
    def patch_hris_employee(connection_id, id, hris_employee = nil)
      # patch_hris_employee - Update an employee
      request = Operations::PatchHrisEmployeeRequest.new(
        
        connection_id: connection_id,
        id: id,
        hris_employee: hris_employee
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::PatchHrisEmployeeRequest,
        base_url,
        '/hris/{connection_id}/employee/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :hris_employee, :json)
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

      res = Operations::PatchHrisEmployeeResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::HrisEmployee)
          res.hris_employee = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String, hris_group: T.nilable(Shared::HrisGroup)).returns(Utils::FieldAugmented) }
    def patch_hris_group(connection_id, id, hris_group = nil)
      # patch_hris_group - Update a group
      request = Operations::PatchHrisGroupRequest.new(
        
        connection_id: connection_id,
        id: id,
        hris_group: hris_group
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::PatchHrisGroupRequest,
        base_url,
        '/hris/{connection_id}/group/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :hris_group, :json)
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

      res = Operations::PatchHrisGroupResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::HrisGroup)
          res.hris_group = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String).returns(Utils::FieldAugmented) }
    def remove_hris_employee(connection_id, id)
      # remove_hris_employee - Remove an employee
      request = Operations::RemoveHrisEmployeeRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::RemoveHrisEmployeeRequest,
        base_url,
        '/hris/{connection_id}/employee/{id}',
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

      res = Operations::RemoveHrisEmployeeResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if True
                
        res.res = r.env.response_body if Utils.match_content_type(content_type, 'application/json')
      
      end
      res
    end

    sig { params(connection_id: String, id: String).returns(Utils::FieldAugmented) }
    def remove_hris_group(connection_id, id)
      # remove_hris_group - Remove a group
      request = Operations::RemoveHrisGroupRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::RemoveHrisGroupRequest,
        base_url,
        '/hris/{connection_id}/group/{id}',
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

      res = Operations::RemoveHrisGroupResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if True
                
        res.res = r.env.response_body if Utils.match_content_type(content_type, 'application/json')
      
      end
      res
    end

    sig { params(connection_id: String, id: String, hris_employee: T.nilable(Shared::HrisEmployee)).returns(Utils::FieldAugmented) }
    def update_hris_employee(connection_id, id, hris_employee = nil)
      # update_hris_employee - Update an employee
      request = Operations::UpdateHrisEmployeeRequest.new(
        
        connection_id: connection_id,
        id: id,
        hris_employee: hris_employee
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::UpdateHrisEmployeeRequest,
        base_url,
        '/hris/{connection_id}/employee/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :hris_employee, :json)
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

      res = Operations::UpdateHrisEmployeeResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::HrisEmployee)
          res.hris_employee = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String, hris_group: T.nilable(Shared::HrisGroup)).returns(Utils::FieldAugmented) }
    def update_hris_group(connection_id, id, hris_group = nil)
      # update_hris_group - Update a group
      request = Operations::UpdateHrisGroupRequest.new(
        
        connection_id: connection_id,
        id: id,
        hris_group: hris_group
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::UpdateHrisGroupRequest,
        base_url,
        '/hris/{connection_id}/group/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :hris_group, :json)
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

      res = Operations::UpdateHrisGroupResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::HrisGroup)
          res.hris_group = out
        end
      end
      res
    end
  end
end
