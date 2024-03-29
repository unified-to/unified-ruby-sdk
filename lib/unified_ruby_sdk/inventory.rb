# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Inventory
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(connection_id: ::String, commerce_inventory: T.nilable(::UnifiedRubySDK::Shared::CommerceInventory)).returns(::UnifiedRubySDK::Operations::CreateCommerceInventoryResponse) }
    def create_commerce_inventory(connection_id, commerce_inventory = nil)
      # create_commerce_inventory - Create an inventory
      request = ::UnifiedRubySDK::Operations::CreateCommerceInventoryRequest.new(
        
        connection_id: connection_id,
        commerce_inventory: commerce_inventory
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateCommerceInventoryRequest,
        base_url,
        '/commerce/{connection_id}/inventory',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :commerce_inventory, :json)
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

      res = ::UnifiedRubySDK::Operations::CreateCommerceInventoryResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::CommerceInventory)
          res.commerce_inventory = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::GetCommerceInventoryResponse) }
    def get_commerce_inventory(connection_id, id, fields_ = nil)
      # get_commerce_inventory - Retrieve an inventory
      request = ::UnifiedRubySDK::Operations::GetCommerceInventoryRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetCommerceInventoryRequest,
        base_url,
        '/commerce/{connection_id}/inventory/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetCommerceInventoryRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetCommerceInventoryResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::CommerceInventory)
          res.commerce_inventory = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListCommerceInventoriesRequest)).returns(::UnifiedRubySDK::Operations::ListCommerceInventoriesResponse) }
    def list_commerce_inventories(request)
      # list_commerce_inventories - List all inventories
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListCommerceInventoriesRequest,
        base_url,
        '/commerce/{connection_id}/inventory',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListCommerceInventoriesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListCommerceInventoriesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::UnifiedRubySDK::Shared::CommerceInventory])
          res.commerce_inventories = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, commerce_inventory: T.nilable(::UnifiedRubySDK::Shared::CommerceInventory)).returns(::UnifiedRubySDK::Operations::PatchCommerceInventoryResponse) }
    def patch_commerce_inventory(connection_id, id, commerce_inventory = nil)
      # patch_commerce_inventory - Update an inventory
      request = ::UnifiedRubySDK::Operations::PatchCommerceInventoryRequest.new(
        
        connection_id: connection_id,
        id: id,
        commerce_inventory: commerce_inventory
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchCommerceInventoryRequest,
        base_url,
        '/commerce/{connection_id}/inventory/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :commerce_inventory, :json)
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

      res = ::UnifiedRubySDK::Operations::PatchCommerceInventoryResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::CommerceInventory)
          res.commerce_inventory = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String).returns(::UnifiedRubySDK::Operations::RemoveCommerceInventoryResponse) }
    def remove_commerce_inventory(connection_id, id)
      # remove_commerce_inventory - Remove an inventory
      request = ::UnifiedRubySDK::Operations::RemoveCommerceInventoryRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveCommerceInventoryRequest,
        base_url,
        '/commerce/{connection_id}/inventory/{id}',
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

      res = ::UnifiedRubySDK::Operations::RemoveCommerceInventoryResponse.new(
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


    sig { params(connection_id: ::String, id: ::String, commerce_inventory: T.nilable(::UnifiedRubySDK::Shared::CommerceInventory)).returns(::UnifiedRubySDK::Operations::UpdateCommerceInventoryResponse) }
    def update_commerce_inventory(connection_id, id, commerce_inventory = nil)
      # update_commerce_inventory - Update an inventory
      request = ::UnifiedRubySDK::Operations::UpdateCommerceInventoryRequest.new(
        
        connection_id: connection_id,
        id: id,
        commerce_inventory: commerce_inventory
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateCommerceInventoryRequest,
        base_url,
        '/commerce/{connection_id}/inventory/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :commerce_inventory, :json)
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

      res = ::UnifiedRubySDK::Operations::UpdateCommerceInventoryResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::CommerceInventory)
          res.commerce_inventory = out
        end
      end
      res
    end
  end
end
