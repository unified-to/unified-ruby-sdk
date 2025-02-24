# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Invoice
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(accounting_invoice: ::UnifiedRubySDK::Shared::AccountingInvoice, connection_id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::CreateAccountingInvoiceResponse) }
    def create_accounting_invoice(accounting_invoice, connection_id, fields_ = nil)
      # create_accounting_invoice - Create an invoice
      request = ::UnifiedRubySDK::Operations::CreateAccountingInvoiceRequest.new(
        
        accounting_invoice: accounting_invoice,
        connection_id: connection_id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateAccountingInvoiceRequest,
        base_url,
        '/accounting/{connection_id}/invoice',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_invoice, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::CreateAccountingInvoiceRequest, request)
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

      res = ::UnifiedRubySDK::Operations::CreateAccountingInvoiceResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AccountingInvoice)
          res.accounting_invoice = out
        end
      end

      res
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::GetAccountingInvoiceResponse) }
    def get_accounting_invoice(connection_id, id, fields_ = nil)
      # get_accounting_invoice - Retrieve an invoice
      request = ::UnifiedRubySDK::Operations::GetAccountingInvoiceRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetAccountingInvoiceRequest,
        base_url,
        '/accounting/{connection_id}/invoice/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetAccountingInvoiceRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetAccountingInvoiceResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AccountingInvoice)
          res.accounting_invoice = out
        end
      end

      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListAccountingInvoicesRequest)).returns(::UnifiedRubySDK::Operations::ListAccountingInvoicesResponse) }
    def list_accounting_invoices(request)
      # list_accounting_invoices - List all invoices
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListAccountingInvoicesRequest,
        base_url,
        '/accounting/{connection_id}/invoice',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListAccountingInvoicesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListAccountingInvoicesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::UnifiedRubySDK::Shared::AccountingInvoice])
          res.accounting_invoices = out
        end
      end

      res
    end


    sig { params(accounting_invoice: ::UnifiedRubySDK::Shared::AccountingInvoice, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::PatchAccountingInvoiceResponse) }
    def patch_accounting_invoice(accounting_invoice, connection_id, id, fields_ = nil)
      # patch_accounting_invoice - Update an invoice
      request = ::UnifiedRubySDK::Operations::PatchAccountingInvoiceRequest.new(
        
        accounting_invoice: accounting_invoice,
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchAccountingInvoiceRequest,
        base_url,
        '/accounting/{connection_id}/invoice/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_invoice, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::PatchAccountingInvoiceRequest, request)
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

      res = ::UnifiedRubySDK::Operations::PatchAccountingInvoiceResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AccountingInvoice)
          res.accounting_invoice = out
        end
      end

      res
    end


    sig { params(connection_id: ::String, id: ::String).returns(::UnifiedRubySDK::Operations::RemoveAccountingInvoiceResponse) }
    def remove_accounting_invoice(connection_id, id)
      # remove_accounting_invoice - Remove an invoice
      request = ::UnifiedRubySDK::Operations::RemoveAccountingInvoiceRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveAccountingInvoiceRequest,
        base_url,
        '/accounting/{connection_id}/invoice/{id}',
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

      res = ::UnifiedRubySDK::Operations::RemoveAccountingInvoiceResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      else
        res.headers = r.headers
      end

      res
    end


    sig { params(accounting_invoice: ::UnifiedRubySDK::Shared::AccountingInvoice, connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::UpdateAccountingInvoiceResponse) }
    def update_accounting_invoice(accounting_invoice, connection_id, id, fields_ = nil)
      # update_accounting_invoice - Update an invoice
      request = ::UnifiedRubySDK::Operations::UpdateAccountingInvoiceRequest.new(
        
        accounting_invoice: accounting_invoice,
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateAccountingInvoiceRequest,
        base_url,
        '/accounting/{connection_id}/invoice/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_invoice, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::UpdateAccountingInvoiceRequest, request)
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

      res = ::UnifiedRubySDK::Operations::UpdateAccountingInvoiceResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AccountingInvoice)
          res.accounting_invoice = out
        end
      end

      res
    end
  end
end
