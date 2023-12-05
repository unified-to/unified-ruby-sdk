# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Event

    extend T::Sig
    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end

    sig { params(connection_id: String, crm_event: T.nilable(Shared::CrmEvent)).returns(Utils::FieldAugmented) }
    def create_crm_event(connection_id, crm_event = nil)
      # create_crm_event - Create a event
      request = Operations::CreateCrmEventRequest.new(
        
        connection_id: connection_id,
        crm_event: crm_event
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::CreateCrmEventRequest,
        base_url,
        '/crm/{connection_id}/event',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :crm_event, :json)
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

      res = Operations::CreateCrmEventResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::CrmEvent)
          res.crm_event = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String, fields: T.nilable(T::Array[String])).returns(Utils::FieldAugmented) }
    def get_crm_event(connection_id, id, fields = nil)
      # get_crm_event - Retrieve a event
      request = Operations::GetCrmEventRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields: fields
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::GetCrmEventRequest,
        base_url,
        '/crm/{connection_id}/event/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::GetCrmEventRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetCrmEventResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::CrmEvent)
          res.crm_event = out
        end
      end
      res
    end

    sig { params(request: T.nilable(Operations::ListCrmEventsRequest)).returns(Utils::FieldAugmented) }
    def list_crm_events(request)
      # list_crm_events - List all events
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::ListCrmEventsRequest,
        base_url,
        '/crm/{connection_id}/event',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::ListCrmEventsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ListCrmEventsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[Shared::CrmEvent])
          res.crm_events = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String, crm_event: T.nilable(Shared::CrmEvent)).returns(Utils::FieldAugmented) }
    def patch_crm_event(connection_id, id, crm_event = nil)
      # patch_crm_event - Update a event
      request = Operations::PatchCrmEventRequest.new(
        
        connection_id: connection_id,
        id: id,
        crm_event: crm_event
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::PatchCrmEventRequest,
        base_url,
        '/crm/{connection_id}/event/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :crm_event, :json)
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

      res = Operations::PatchCrmEventResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::CrmEvent)
          res.crm_event = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String).returns(Utils::FieldAugmented) }
    def remove_crm_event(connection_id, id)
      # remove_crm_event - Remove a event
      request = Operations::RemoveCrmEventRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::RemoveCrmEventRequest,
        base_url,
        '/crm/{connection_id}/event/{id}',
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

      res = Operations::RemoveCrmEventResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if True
                
        res.res = r.env.response_body if Utils.match_content_type(content_type, 'application/json')
      
      end
      res
    end

    sig { params(connection_id: String, id: String, crm_event: T.nilable(Shared::CrmEvent)).returns(Utils::FieldAugmented) }
    def update_crm_event(connection_id, id, crm_event = nil)
      # update_crm_event - Update a event
      request = Operations::UpdateCrmEventRequest.new(
        
        connection_id: connection_id,
        id: id,
        crm_event: crm_event
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::UpdateCrmEventRequest,
        base_url,
        '/crm/{connection_id}/event/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :crm_event, :json)
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

      res = Operations::UpdateCrmEventResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::CrmEvent)
          res.crm_event = out
        end
      end
      res
    end
  end
end
