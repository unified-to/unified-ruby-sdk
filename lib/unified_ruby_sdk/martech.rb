# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'faraday/retry'
require 'sorbet-runtime'
require_relative 'utils/retries'

module UnifiedRubySDK
  extend T::Sig
  class Martech
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(marketing_list: ::UnifiedRubySDK::Shared::MarketingList, connection_id: ::String, fields_: T.nilable(T::Array[::String]), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::CreateMartechListResponse) }
    def create_martech_list(marketing_list, connection_id, fields_ = nil, timeout_ms = nil)
      # create_martech_list - Create a list
      request = ::UnifiedRubySDK::Operations::CreateMartechListRequest.new(
        
        marketing_list: marketing_list,
        connection_id: connection_id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateMartechListRequest,
        base_url,
        '/martech/{connection_id}/list',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :marketing_list, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::CreateMartechListRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.post(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
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

      res = ::UnifiedRubySDK::Operations::CreateMartechListResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::MarketingList)
          res.marketing_list = out
        end
      end

      res
    end


    sig { params(marketing_member: ::UnifiedRubySDK::Shared::MarketingMember, connection_id: ::String, fields_: T.nilable(T::Array[::String]), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::CreateMartechMemberResponse) }
    def create_martech_member(marketing_member, connection_id, fields_ = nil, timeout_ms = nil)
      # create_martech_member - Create a member
      request = ::UnifiedRubySDK::Operations::CreateMartechMemberRequest.new(
        
        marketing_member: marketing_member,
        connection_id: connection_id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateMartechMemberRequest,
        base_url,
        '/martech/{connection_id}/member',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :marketing_member, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::CreateMartechMemberRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.post(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
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

      res = ::UnifiedRubySDK::Operations::CreateMartechMemberResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::MarketingMember)
          res.marketing_member = out
        end
      end

      res
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String]), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::GetMartechListResponse) }
    def get_martech_list(connection_id, id, fields_ = nil, timeout_ms = nil)
      # get_martech_list - Retrieve a list
      request = ::UnifiedRubySDK::Operations::GetMartechListRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetMartechListRequest,
        base_url,
        '/martech/{connection_id}/list/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetMartechListRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.get(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetMartechListResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::MarketingList)
          res.marketing_list = out
        end
      end

      res
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String]), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::GetMartechMemberResponse) }
    def get_martech_member(connection_id, id, fields_ = nil, timeout_ms = nil)
      # get_martech_member - Retrieve a member
      request = ::UnifiedRubySDK::Operations::GetMartechMemberRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetMartechMemberRequest,
        base_url,
        '/martech/{connection_id}/member/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetMartechMemberRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.get(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetMartechMemberResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::MarketingMember)
          res.marketing_member = out
        end
      end

      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListMartechListsRequest), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::ListMartechListsResponse) }
    def list_martech_lists(request, timeout_ms = nil)
      # list_martech_lists - List all lists
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListMartechListsRequest,
        base_url,
        '/martech/{connection_id}/list',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListMartechListsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.get(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListMartechListsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), T::Array[::UnifiedRubySDK::Shared::MarketingList])
          res.marketing_lists = out
        end
      end

      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListMartechMembersRequest), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::ListMartechMembersResponse) }
    def list_martech_members(request, timeout_ms = nil)
      # list_martech_members - List all members
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListMartechMembersRequest,
        base_url,
        '/martech/{connection_id}/member',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListMartechMembersRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.get(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListMartechMembersResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), T::Array[::UnifiedRubySDK::Shared::MarketingMember])
          res.marketing_members = out
        end
      end

      res
    end


    sig { params(marketing_list: ::UnifiedRubySDK::Shared::MarketingList, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String]), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::PatchMartechListResponse) }
    def patch_martech_list(marketing_list, connection_id, id, fields_ = nil, timeout_ms = nil)
      # patch_martech_list - Update a list
      request = ::UnifiedRubySDK::Operations::PatchMartechListRequest.new(
        
        marketing_list: marketing_list,
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchMartechListRequest,
        base_url,
        '/martech/{connection_id}/list/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :marketing_list, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::PatchMartechListRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.patch(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
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

      res = ::UnifiedRubySDK::Operations::PatchMartechListResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::MarketingList)
          res.marketing_list = out
        end
      end

      res
    end


    sig { params(marketing_member: ::UnifiedRubySDK::Shared::MarketingMember, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String]), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::PatchMartechMemberResponse) }
    def patch_martech_member(marketing_member, connection_id, id, fields_ = nil, timeout_ms = nil)
      # patch_martech_member - Update a member
      request = ::UnifiedRubySDK::Operations::PatchMartechMemberRequest.new(
        
        marketing_member: marketing_member,
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchMartechMemberRequest,
        base_url,
        '/martech/{connection_id}/member/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :marketing_member, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::PatchMartechMemberRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.patch(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
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

      res = ::UnifiedRubySDK::Operations::PatchMartechMemberResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::MarketingMember)
          res.marketing_member = out
        end
      end

      res
    end


    sig { params(connection_id: ::String, id: ::String, timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::RemoveMartechListResponse) }
    def remove_martech_list(connection_id, id, timeout_ms = nil)
      # remove_martech_list - Remove a list
      request = ::UnifiedRubySDK::Operations::RemoveMartechListRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveMartechListRequest,
        base_url,
        '/martech/{connection_id}/list/{id}',
        request
      )
      headers = {}
      headers['Accept'] = '*/*'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.delete(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::RemoveMartechListResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      else
        res.headers = r.headers
      end

      res
    end


    sig { params(connection_id: ::String, id: ::String, timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::RemoveMartechMemberResponse) }
    def remove_martech_member(connection_id, id, timeout_ms = nil)
      # remove_martech_member - Remove a member
      request = ::UnifiedRubySDK::Operations::RemoveMartechMemberRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveMartechMemberRequest,
        base_url,
        '/martech/{connection_id}/member/{id}',
        request
      )
      headers = {}
      headers['Accept'] = '*/*'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.delete(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::RemoveMartechMemberResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      else
        res.headers = r.headers
      end

      res
    end


    sig { params(marketing_list: ::UnifiedRubySDK::Shared::MarketingList, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String]), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::UpdateMartechListResponse) }
    def update_martech_list(marketing_list, connection_id, id, fields_ = nil, timeout_ms = nil)
      # update_martech_list - Update a list
      request = ::UnifiedRubySDK::Operations::UpdateMartechListRequest.new(
        
        marketing_list: marketing_list,
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateMartechListRequest,
        base_url,
        '/martech/{connection_id}/list/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :marketing_list, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::UpdateMartechListRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.put(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
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

      res = ::UnifiedRubySDK::Operations::UpdateMartechListResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::MarketingList)
          res.marketing_list = out
        end
      end

      res
    end


    sig { params(marketing_member: ::UnifiedRubySDK::Shared::MarketingMember, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String]), timeout_ms: T.nilable(Integer)).returns(::UnifiedRubySDK::Operations::UpdateMartechMemberResponse) }
    def update_martech_member(marketing_member, connection_id, id, fields_ = nil, timeout_ms = nil)
      # update_martech_member - Update a member
      request = ::UnifiedRubySDK::Operations::UpdateMartechMemberRequest.new(
        
        marketing_member: marketing_member,
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateMartechMemberRequest,
        base_url,
        '/martech/{connection_id}/member/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :marketing_member, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::UpdateMartechMemberRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      r = connection.put(url) do |req|
        req.headers = headers
        req.options.timeout = timeout
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
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

      res = ::UnifiedRubySDK::Operations::UpdateMartechMemberResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::UnifiedRubySDK::Shared::MarketingMember)
          res.marketing_member = out
        end
      end

      res
    end
  end
end
