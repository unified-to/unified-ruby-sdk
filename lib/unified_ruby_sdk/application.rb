# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Application
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(security: ::UnifiedRubySDK::Operations::CreateAtsApplicationSecurity, connection_id: ::String, ats_application: T.nilable(::UnifiedRubySDK::Shared::AtsApplication)).returns(::UnifiedRubySDK::Operations::CreateAtsApplicationResponse) }
    def create_ats_application(security, connection_id, ats_application = nil)
      # create_ats_application - Create an application
      request = ::UnifiedRubySDK::Operations::CreateAtsApplicationRequest.new(
        
        connection_id: connection_id,
        ats_application: ats_application
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateAtsApplicationRequest,
        base_url,
        '/ats/{connection_id}/application',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ats_application, :json)
      headers['content-type'] = req_content_type
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
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

      res = ::UnifiedRubySDK::Operations::CreateAtsApplicationResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AtsApplication)
          res.ats_application = out
        end
      end
      res
    end


    sig { params(security: ::UnifiedRubySDK::Operations::GetAtsApplicationSecurity, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::GetAtsApplicationResponse) }
    def get_ats_application(security, connection_id, id, fields_ = nil)
      # get_ats_application - Retrieve an application
      request = ::UnifiedRubySDK::Operations::GetAtsApplicationRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetAtsApplicationRequest,
        base_url,
        '/ats/{connection_id}/application/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetAtsApplicationRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetAtsApplicationResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AtsApplication)
          res.ats_application = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListAtsApplicationsRequest), security: ::UnifiedRubySDK::Operations::ListAtsApplicationsSecurity).returns(::UnifiedRubySDK::Operations::ListAtsApplicationsResponse) }
    def list_ats_applications(request, security)
      # list_ats_applications - List all applications
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListAtsApplicationsRequest,
        base_url,
        '/ats/{connection_id}/application',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListAtsApplicationsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListAtsApplicationsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::UnifiedRubySDK::Shared::AtsApplication])
          res.ats_applications = out
        end
      end
      res
    end


    sig { params(security: ::UnifiedRubySDK::Operations::PatchAtsApplicationSecurity, connection_id: ::String, id: ::String, ats_application: T.nilable(::UnifiedRubySDK::Shared::AtsApplication)).returns(::UnifiedRubySDK::Operations::PatchAtsApplicationResponse) }
    def patch_ats_application(security, connection_id, id, ats_application = nil)
      # patch_ats_application - Update an application
      request = ::UnifiedRubySDK::Operations::PatchAtsApplicationRequest.new(
        
        connection_id: connection_id,
        id: id,
        ats_application: ats_application
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchAtsApplicationRequest,
        base_url,
        '/ats/{connection_id}/application/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ats_application, :json)
      headers['content-type'] = req_content_type
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.patch(url) do |req|
        req.headers = headers
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

      res = ::UnifiedRubySDK::Operations::PatchAtsApplicationResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AtsApplication)
          res.ats_application = out
        end
      end
      res
    end


    sig { params(security: ::UnifiedRubySDK::Operations::RemoveAtsApplicationSecurity, connection_id: ::String, id: ::String).returns(::UnifiedRubySDK::Operations::RemoveAtsApplicationResponse) }
    def remove_ats_application(security, connection_id, id)
      # remove_ats_application - Remove an application
      request = ::UnifiedRubySDK::Operations::RemoveAtsApplicationRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveAtsApplicationRequest,
        base_url,
        '/ats/{connection_id}/application/{id}',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::RemoveAtsApplicationResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if True
                
        res.res = r.env.response_body if Utils.match_content_type(content_type, 'application/json')
      
      end
      res
    end


    sig { params(security: ::UnifiedRubySDK::Operations::UpdateAtsApplicationSecurity, connection_id: ::String, id: ::String, ats_application: T.nilable(::UnifiedRubySDK::Shared::AtsApplication)).returns(::UnifiedRubySDK::Operations::UpdateAtsApplicationResponse) }
    def update_ats_application(security, connection_id, id, ats_application = nil)
      # update_ats_application - Update an application
      request = ::UnifiedRubySDK::Operations::UpdateAtsApplicationRequest.new(
        
        connection_id: connection_id,
        id: id,
        ats_application: ats_application
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateAtsApplicationRequest,
        base_url,
        '/ats/{connection_id}/application/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ats_application, :json)
      headers['content-type'] = req_content_type
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.put(url) do |req|
        req.headers = headers
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

      res = ::UnifiedRubySDK::Operations::UpdateAtsApplicationResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AtsApplication)
          res.ats_application = out
        end
      end
      res
    end
  end
end
