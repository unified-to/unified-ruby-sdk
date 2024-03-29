# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Martech
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(connection_id: ::String, marketing_list: T.nilable(::UnifiedRubySDK::Shared::MarketingList)).returns(::UnifiedRubySDK::Operations::CreateMartechListResponse) }
    def create_martech_list(connection_id, marketing_list = nil)
      # create_martech_list - Create a list
      request = ::UnifiedRubySDK::Operations::CreateMartechListRequest.new(
        
        connection_id: connection_id,
        marketing_list: marketing_list
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

      res = ::UnifiedRubySDK::Operations::CreateMartechListResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::MarketingList)
          res.marketing_list = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, marketing_member: T.nilable(::UnifiedRubySDK::Shared::MarketingMember)).returns(::UnifiedRubySDK::Operations::CreateMartechMemberResponse) }
    def create_martech_member(connection_id, marketing_member = nil)
      # create_martech_member - Create a member
      request = ::UnifiedRubySDK::Operations::CreateMartechMemberRequest.new(
        
        connection_id: connection_id,
        marketing_member: marketing_member
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

      res = ::UnifiedRubySDK::Operations::CreateMartechMemberResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::MarketingMember)
          res.marketing_member = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::GetMartechListResponse) }
    def get_martech_list(connection_id, id, fields_ = nil)
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

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetMartechListResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::MarketingList)
          res.marketing_list = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::GetMartechMemberResponse) }
    def get_martech_member(connection_id, id, fields_ = nil)
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

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetMartechMemberResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::MarketingMember)
          res.marketing_member = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListMartechListsRequest)).returns(::UnifiedRubySDK::Operations::ListMartechListsResponse) }
    def list_martech_lists(request)
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

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListMartechListsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::UnifiedRubySDK::Shared::MarketingList])
          res.marketing_lists = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListMartechMembersRequest)).returns(::UnifiedRubySDK::Operations::ListMartechMembersResponse) }
    def list_martech_members(request)
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

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListMartechMembersResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::UnifiedRubySDK::Shared::MarketingMember])
          res.marketing_members = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, marketing_list: T.nilable(::UnifiedRubySDK::Shared::MarketingList)).returns(::UnifiedRubySDK::Operations::PatchMartechListResponse) }
    def patch_martech_list(connection_id, id, marketing_list = nil)
      # patch_martech_list - Update a list
      request = ::UnifiedRubySDK::Operations::PatchMartechListRequest.new(
        
        connection_id: connection_id,
        id: id,
        marketing_list: marketing_list
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

      res = ::UnifiedRubySDK::Operations::PatchMartechListResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::MarketingList)
          res.marketing_list = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, marketing_member: T.nilable(::UnifiedRubySDK::Shared::MarketingMember)).returns(::UnifiedRubySDK::Operations::PatchMartechMemberResponse) }
    def patch_martech_member(connection_id, id, marketing_member = nil)
      # patch_martech_member - Update a member
      request = ::UnifiedRubySDK::Operations::PatchMartechMemberRequest.new(
        
        connection_id: connection_id,
        id: id,
        marketing_member: marketing_member
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

      res = ::UnifiedRubySDK::Operations::PatchMartechMemberResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::MarketingMember)
          res.marketing_member = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String).returns(::UnifiedRubySDK::Operations::RemoveMartechListResponse) }
    def remove_martech_list(connection_id, id)
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
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::RemoveMartechListResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status >= 200 && r.status < 300
      else
                
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::String)
          res.string = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String).returns(::UnifiedRubySDK::Operations::RemoveMartechMemberResponse) }
    def remove_martech_member(connection_id, id)
      # remove_martech_member - Remove member
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
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::RemoveMartechMemberResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status >= 200 && r.status < 300
      else
                
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::String)
          res.string = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, marketing_list: T.nilable(::UnifiedRubySDK::Shared::MarketingList)).returns(::UnifiedRubySDK::Operations::UpdateMartechListResponse) }
    def update_martech_list(connection_id, id, marketing_list = nil)
      # update_martech_list - Update a list
      request = ::UnifiedRubySDK::Operations::UpdateMartechListRequest.new(
        
        connection_id: connection_id,
        id: id,
        marketing_list: marketing_list
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

      res = ::UnifiedRubySDK::Operations::UpdateMartechListResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::MarketingList)
          res.marketing_list = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, marketing_member: T.nilable(::UnifiedRubySDK::Shared::MarketingMember)).returns(::UnifiedRubySDK::Operations::UpdateMartechMemberResponse) }
    def update_martech_member(connection_id, id, marketing_member = nil)
      # update_martech_member - Update a member
      request = ::UnifiedRubySDK::Operations::UpdateMartechMemberRequest.new(
        
        connection_id: connection_id,
        id: id,
        marketing_member: marketing_member
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

      res = ::UnifiedRubySDK::Operations::UpdateMartechMemberResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::MarketingMember)
          res.marketing_member = out
        end
      end
      res
    end
  end
end
