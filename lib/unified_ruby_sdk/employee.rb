# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Employee
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(connection_id: ::String, hris_employee: T.nilable(::UnifiedRubySDK::Shared::HrisEmployee), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::CreateHrisEmployeeResponse) }
    def create_hris_employee(connection_id, hris_employee = nil, fields_ = nil)
      # create_hris_employee - Create an employee
      request = ::UnifiedRubySDK::Operations::CreateHrisEmployeeRequest.new(
        
        connection_id: connection_id,
        hris_employee: hris_employee,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateHrisEmployeeRequest,
        base_url,
        '/hris/{connection_id}/employee',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :hris_employee, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::CreateHrisEmployeeRequest, request)
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

      res = ::UnifiedRubySDK::Operations::CreateHrisEmployeeResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::HrisEmployee)
          res.hris_employee = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::GetHrisEmployeeResponse) }
    def get_hris_employee(connection_id, id, fields_ = nil)
      # get_hris_employee - Retrieve an employee
      request = ::UnifiedRubySDK::Operations::GetHrisEmployeeRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetHrisEmployeeRequest,
        base_url,
        '/hris/{connection_id}/employee/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetHrisEmployeeRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetHrisEmployeeResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::HrisEmployee)
          res.hris_employee = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListHrisEmployeesRequest)).returns(::UnifiedRubySDK::Operations::ListHrisEmployeesResponse) }
    def list_hris_employees(request)
      # list_hris_employees - List all employees
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListHrisEmployeesRequest,
        base_url,
        '/hris/{connection_id}/employee',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListHrisEmployeesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListHrisEmployeesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::UnifiedRubySDK::Shared::HrisEmployee])
          res.hris_employees = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, hris_employee: T.nilable(::UnifiedRubySDK::Shared::HrisEmployee), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::PatchHrisEmployeeResponse) }
    def patch_hris_employee(connection_id, id, hris_employee = nil, fields_ = nil)
      # patch_hris_employee - Update an employee
      request = ::UnifiedRubySDK::Operations::PatchHrisEmployeeRequest.new(
        
        connection_id: connection_id,
        id: id,
        hris_employee: hris_employee,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchHrisEmployeeRequest,
        base_url,
        '/hris/{connection_id}/employee/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :hris_employee, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::PatchHrisEmployeeRequest, request)
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

      res = ::UnifiedRubySDK::Operations::PatchHrisEmployeeResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::HrisEmployee)
          res.hris_employee = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String).returns(::UnifiedRubySDK::Operations::RemoveHrisEmployeeResponse) }
    def remove_hris_employee(connection_id, id)
      # remove_hris_employee - Remove an employee
      request = ::UnifiedRubySDK::Operations::RemoveHrisEmployeeRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveHrisEmployeeRequest,
        base_url,
        '/hris/{connection_id}/employee/{id}',
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

      res = ::UnifiedRubySDK::Operations::RemoveHrisEmployeeResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      
      res
    end


    sig { params(connection_id: ::String, id: ::String, hris_employee: T.nilable(::UnifiedRubySDK::Shared::HrisEmployee), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::UpdateHrisEmployeeResponse) }
    def update_hris_employee(connection_id, id, hris_employee = nil, fields_ = nil)
      # update_hris_employee - Update an employee
      request = ::UnifiedRubySDK::Operations::UpdateHrisEmployeeRequest.new(
        
        connection_id: connection_id,
        id: id,
        hris_employee: hris_employee,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateHrisEmployeeRequest,
        base_url,
        '/hris/{connection_id}/employee/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :hris_employee, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::UpdateHrisEmployeeRequest, request)
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

      res = ::UnifiedRubySDK::Operations::UpdateHrisEmployeeResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::HrisEmployee)
          res.hris_employee = out
        end
      end
      res
    end
  end
end
