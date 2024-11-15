# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Taxrate
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(connection_id: ::String, accounting_taxrate: T.nilable(::UnifiedRubySDK::Shared::AccountingTaxrate), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::CreateAccountingTaxrateResponse) }
    def create_accounting_taxrate(connection_id, accounting_taxrate = nil, fields_ = nil)
      # create_accounting_taxrate - Create a taxrate
      request = ::UnifiedRubySDK::Operations::CreateAccountingTaxrateRequest.new(
        
        connection_id: connection_id,
        accounting_taxrate: accounting_taxrate,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateAccountingTaxrateRequest,
        base_url,
        '/accounting/{connection_id}/taxrate',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_taxrate, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::CreateAccountingTaxrateRequest, request)
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

      res = ::UnifiedRubySDK::Operations::CreateAccountingTaxrateResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AccountingTaxrate)
          res.accounting_taxrate = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::GetAccountingTaxrateResponse) }
    def get_accounting_taxrate(connection_id, id, fields_ = nil)
      # get_accounting_taxrate - Retrieve a taxrate
      request = ::UnifiedRubySDK::Operations::GetAccountingTaxrateRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetAccountingTaxrateRequest,
        base_url,
        '/accounting/{connection_id}/taxrate/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetAccountingTaxrateRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetAccountingTaxrateResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AccountingTaxrate)
          res.accounting_taxrate = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListAccountingTaxratesRequest)).returns(::UnifiedRubySDK::Operations::ListAccountingTaxratesResponse) }
    def list_accounting_taxrates(request)
      # list_accounting_taxrates - List all taxrates
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListAccountingTaxratesRequest,
        base_url,
        '/accounting/{connection_id}/taxrate',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListAccountingTaxratesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListAccountingTaxratesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::UnifiedRubySDK::Shared::AccountingTaxrate])
          res.accounting_taxrates = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, accounting_taxrate: T.nilable(::UnifiedRubySDK::Shared::AccountingTaxrate), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::PatchAccountingTaxrateResponse) }
    def patch_accounting_taxrate(connection_id, id, accounting_taxrate = nil, fields_ = nil)
      # patch_accounting_taxrate - Update a taxrate
      request = ::UnifiedRubySDK::Operations::PatchAccountingTaxrateRequest.new(
        
        connection_id: connection_id,
        id: id,
        accounting_taxrate: accounting_taxrate,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchAccountingTaxrateRequest,
        base_url,
        '/accounting/{connection_id}/taxrate/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_taxrate, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::PatchAccountingTaxrateRequest, request)
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

      res = ::UnifiedRubySDK::Operations::PatchAccountingTaxrateResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AccountingTaxrate)
          res.accounting_taxrate = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String).returns(::UnifiedRubySDK::Operations::RemoveAccountingTaxrateResponse) }
    def remove_accounting_taxrate(connection_id, id)
      # remove_accounting_taxrate - Remove a taxrate
      request = ::UnifiedRubySDK::Operations::RemoveAccountingTaxrateRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveAccountingTaxrateRequest,
        base_url,
        '/accounting/{connection_id}/taxrate/{id}',
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

      res = ::UnifiedRubySDK::Operations::RemoveAccountingTaxrateResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      else
                
        res.headers = r.headers
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, accounting_taxrate: T.nilable(::UnifiedRubySDK::Shared::AccountingTaxrate), fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::UpdateAccountingTaxrateResponse) }
    def update_accounting_taxrate(connection_id, id, accounting_taxrate = nil, fields_ = nil)
      # update_accounting_taxrate - Update a taxrate
      request = ::UnifiedRubySDK::Operations::UpdateAccountingTaxrateRequest.new(
        
        connection_id: connection_id,
        id: id,
        accounting_taxrate: accounting_taxrate,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateAccountingTaxrateRequest,
        base_url,
        '/accounting/{connection_id}/taxrate/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_taxrate, :json)
      headers['content-type'] = req_content_type
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::UpdateAccountingTaxrateRequest, request)
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

      res = ::UnifiedRubySDK::Operations::UpdateAccountingTaxrateResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AccountingTaxrate)
          res.accounting_taxrate = out
        end
      end
      res
    end
  end
end
