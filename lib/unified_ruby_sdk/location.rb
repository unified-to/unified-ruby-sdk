# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Location
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(connection_id: ::String, commerce_location: T.nilable(::UnifiedRubySDK::Shared::CommerceLocation)).returns(::UnifiedRubySDK::Operations::CreateCommerceLocationResponse) }
    def create_commerce_location(connection_id, commerce_location = nil)
      # create_commerce_location - Create a location
      request = ::UnifiedRubySDK::Operations::CreateCommerceLocationRequest.new(
        
        connection_id: connection_id,
        commerce_location: commerce_location
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateCommerceLocationRequest,
        base_url,
        '/commerce/{connection_id}/location',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :commerce_location, :json)
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

      res = ::UnifiedRubySDK::Operations::CreateCommerceLocationResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::CommerceLocation)
          res.commerce_location = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, hris_location: T.nilable(::UnifiedRubySDK::Shared::HrisLocation)).returns(::UnifiedRubySDK::Operations::CreateHrisLocationResponse) }
    def create_hris_location(connection_id, hris_location = nil)
      # create_hris_location - Create a location
      request = ::UnifiedRubySDK::Operations::CreateHrisLocationRequest.new(
        
        connection_id: connection_id,
        hris_location: hris_location
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateHrisLocationRequest,
        base_url,
        '/hris/{connection_id}/location',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :hris_location, :json)
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

      res = ::UnifiedRubySDK::Operations::CreateHrisLocationResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::HrisLocation)
          res.hris_location = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::GetCommerceLocationResponse) }
    def get_commerce_location(connection_id, id, fields_ = nil)
      # get_commerce_location - Retrieve a location
      request = ::UnifiedRubySDK::Operations::GetCommerceLocationRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetCommerceLocationRequest,
        base_url,
        '/commerce/{connection_id}/location/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetCommerceLocationRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetCommerceLocationResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::CommerceLocation)
          res.commerce_location = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::GetHrisLocationResponse) }
    def get_hris_location(connection_id, id, fields_ = nil)
      # get_hris_location - Retrieve a location
      request = ::UnifiedRubySDK::Operations::GetHrisLocationRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetHrisLocationRequest,
        base_url,
        '/hris/{connection_id}/location/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetHrisLocationRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetHrisLocationResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::HrisLocation)
          res.hris_location = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListCommerceLocationsRequest)).returns(::UnifiedRubySDK::Operations::ListCommerceLocationsResponse) }
    def list_commerce_locations(request)
      # list_commerce_locations - List all locations
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListCommerceLocationsRequest,
        base_url,
        '/commerce/{connection_id}/location',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListCommerceLocationsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListCommerceLocationsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::UnifiedRubySDK::Shared::CommerceLocation])
          res.commerce_locations = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListHrisLocationsRequest)).returns(::UnifiedRubySDK::Operations::ListHrisLocationsResponse) }
    def list_hris_locations(request)
      # list_hris_locations - List all locations
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListHrisLocationsRequest,
        base_url,
        '/hris/{connection_id}/location',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListHrisLocationsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListHrisLocationsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::UnifiedRubySDK::Shared::HrisLocation])
          res.hris_locations = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, commerce_location: T.nilable(::UnifiedRubySDK::Shared::CommerceLocation)).returns(::UnifiedRubySDK::Operations::PatchCommerceLocationResponse) }
    def patch_commerce_location(connection_id, id, commerce_location = nil)
      # patch_commerce_location - Update a location
      request = ::UnifiedRubySDK::Operations::PatchCommerceLocationRequest.new(
        
        connection_id: connection_id,
        id: id,
        commerce_location: commerce_location
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchCommerceLocationRequest,
        base_url,
        '/commerce/{connection_id}/location/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :commerce_location, :json)
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

      res = ::UnifiedRubySDK::Operations::PatchCommerceLocationResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::CommerceLocation)
          res.commerce_location = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, hris_location: T.nilable(::UnifiedRubySDK::Shared::HrisLocation)).returns(::UnifiedRubySDK::Operations::PatchHrisLocationResponse) }
    def patch_hris_location(connection_id, id, hris_location = nil)
      # patch_hris_location - Update a location
      request = ::UnifiedRubySDK::Operations::PatchHrisLocationRequest.new(
        
        connection_id: connection_id,
        id: id,
        hris_location: hris_location
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchHrisLocationRequest,
        base_url,
        '/hris/{connection_id}/location/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :hris_location, :json)
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

      res = ::UnifiedRubySDK::Operations::PatchHrisLocationResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::HrisLocation)
          res.hris_location = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String).returns(::UnifiedRubySDK::Operations::RemoveCommerceLocationResponse) }
    def remove_commerce_location(connection_id, id)
      # remove_commerce_location - Remove a location
      request = ::UnifiedRubySDK::Operations::RemoveCommerceLocationRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveCommerceLocationRequest,
        base_url,
        '/commerce/{connection_id}/location/{id}',
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

      res = ::UnifiedRubySDK::Operations::RemoveCommerceLocationResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if True
                
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::String)
          res.string = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String).returns(::UnifiedRubySDK::Operations::RemoveHrisLocationResponse) }
    def remove_hris_location(connection_id, id)
      # remove_hris_location - Remove a location
      request = ::UnifiedRubySDK::Operations::RemoveHrisLocationRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveHrisLocationRequest,
        base_url,
        '/hris/{connection_id}/location/{id}',
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

      res = ::UnifiedRubySDK::Operations::RemoveHrisLocationResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if True
                
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::String)
          res.string = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, commerce_location: T.nilable(::UnifiedRubySDK::Shared::CommerceLocation)).returns(::UnifiedRubySDK::Operations::UpdateCommerceLocationResponse) }
    def update_commerce_location(connection_id, id, commerce_location = nil)
      # update_commerce_location - Update a location
      request = ::UnifiedRubySDK::Operations::UpdateCommerceLocationRequest.new(
        
        connection_id: connection_id,
        id: id,
        commerce_location: commerce_location
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateCommerceLocationRequest,
        base_url,
        '/commerce/{connection_id}/location/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :commerce_location, :json)
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

      res = ::UnifiedRubySDK::Operations::UpdateCommerceLocationResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::CommerceLocation)
          res.commerce_location = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, hris_location: T.nilable(::UnifiedRubySDK::Shared::HrisLocation)).returns(::UnifiedRubySDK::Operations::UpdateHrisLocationResponse) }
    def update_hris_location(connection_id, id, hris_location = nil)
      # update_hris_location - Update a location
      request = ::UnifiedRubySDK::Operations::UpdateHrisLocationRequest.new(
        
        connection_id: connection_id,
        id: id,
        hris_location: hris_location
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateHrisLocationRequest,
        base_url,
        '/hris/{connection_id}/location/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :hris_location, :json)
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

      res = ::UnifiedRubySDK::Operations::UpdateHrisLocationResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::HrisLocation)
          res.hris_location = out
        end
      end
      res
    end
  end
end
