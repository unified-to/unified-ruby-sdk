# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Activity
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(security: ::UnifiedRubySDK::Operations::CreateAtsActivitySecurity, connection_id: ::String, ats_activity: T.nilable(::UnifiedRubySDK::Shared::AtsActivity)).returns(::UnifiedRubySDK::Operations::CreateAtsActivityResponse) }
    def create_ats_activity(security, connection_id, ats_activity = nil)
      # create_ats_activity - Create an activity
      request = ::UnifiedRubySDK::Operations::CreateAtsActivityRequest.new(
        
        connection_id: connection_id,
        ats_activity: ats_activity
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateAtsActivityRequest,
        base_url,
        '/ats/{connection_id}/activity',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ats_activity, :json)
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

      res = ::UnifiedRubySDK::Operations::CreateAtsActivityResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AtsActivity)
          res.ats_activity = out
        end
      end
      res
    end


    sig { params(security: ::UnifiedRubySDK::Operations::GetAtsActivitySecurity, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::GetAtsActivityResponse) }
    def get_ats_activity(security, connection_id, id, fields_ = nil)
      # get_ats_activity - Retrieve an activity
      request = ::UnifiedRubySDK::Operations::GetAtsActivityRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetAtsActivityRequest,
        base_url,
        '/ats/{connection_id}/activity/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetAtsActivityRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetAtsActivityResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AtsActivity)
          res.ats_activity = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListAtsActivitiesRequest), security: ::UnifiedRubySDK::Operations::ListAtsActivitiesSecurity).returns(::UnifiedRubySDK::Operations::ListAtsActivitiesResponse) }
    def list_ats_activities(request, security)
      # list_ats_activities - List all activities
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListAtsActivitiesRequest,
        base_url,
        '/ats/{connection_id}/activity',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListAtsActivitiesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListAtsActivitiesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::UnifiedRubySDK::Shared::AtsActivity])
          res.ats_activities = out
        end
      end
      res
    end


    sig { params(security: ::UnifiedRubySDK::Operations::PatchAtsActivitySecurity, connection_id: ::String, id: ::String, ats_activity: T.nilable(::UnifiedRubySDK::Shared::AtsActivity)).returns(::UnifiedRubySDK::Operations::PatchAtsActivityResponse) }
    def patch_ats_activity(security, connection_id, id, ats_activity = nil)
      # patch_ats_activity - Update an activity
      request = ::UnifiedRubySDK::Operations::PatchAtsActivityRequest.new(
        
        connection_id: connection_id,
        id: id,
        ats_activity: ats_activity
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchAtsActivityRequest,
        base_url,
        '/ats/{connection_id}/activity/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ats_activity, :json)
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

      res = ::UnifiedRubySDK::Operations::PatchAtsActivityResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AtsActivity)
          res.ats_activity = out
        end
      end
      res
    end


    sig { params(security: ::UnifiedRubySDK::Operations::RemoveAtsActivitySecurity, connection_id: ::String, id: ::String).returns(::UnifiedRubySDK::Operations::RemoveAtsActivityResponse) }
    def remove_ats_activity(security, connection_id, id)
      # remove_ats_activity - Remove an activity
      request = ::UnifiedRubySDK::Operations::RemoveAtsActivityRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveAtsActivityRequest,
        base_url,
        '/ats/{connection_id}/activity/{id}',
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

      res = ::UnifiedRubySDK::Operations::RemoveAtsActivityResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if True
                
        res.res = r.env.response_body if Utils.match_content_type(content_type, 'application/json')
      
      end
      res
    end


    sig { params(security: ::UnifiedRubySDK::Operations::UpdateAtsActivitySecurity, connection_id: ::String, id: ::String, ats_activity: T.nilable(::UnifiedRubySDK::Shared::AtsActivity)).returns(::UnifiedRubySDK::Operations::UpdateAtsActivityResponse) }
    def update_ats_activity(security, connection_id, id, ats_activity = nil)
      # update_ats_activity - Update an activity
      request = ::UnifiedRubySDK::Operations::UpdateAtsActivityRequest.new(
        
        connection_id: connection_id,
        id: id,
        ats_activity: ats_activity
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateAtsActivityRequest,
        base_url,
        '/ats/{connection_id}/activity/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ats_activity, :json)
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

      res = ::UnifiedRubySDK::Operations::UpdateAtsActivityResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AtsActivity)
          res.ats_activity = out
        end
      end
      res
    end
  end
end
