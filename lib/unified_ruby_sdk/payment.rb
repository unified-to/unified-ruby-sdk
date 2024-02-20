# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Payment
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(connection_id: ::String, accounting_payment: T.nilable(::UnifiedRubySDK::Shared::AccountingPayment)).returns(::UnifiedRubySDK::Operations::CreateAccountingPaymentResponse) }
    def create_accounting_payment(connection_id, accounting_payment = nil)
      # create_accounting_payment - Create a payment
      request = ::UnifiedRubySDK::Operations::CreateAccountingPaymentRequest.new(
        
        connection_id: connection_id,
        accounting_payment: accounting_payment
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::CreateAccountingPaymentRequest,
        base_url,
        '/accounting/{connection_id}/payment',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_payment, :json)
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

      res = ::UnifiedRubySDK::Operations::CreateAccountingPaymentResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AccountingPayment)
          res.accounting_payment = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, fields_: T.nilable(T::Array[::String])).returns(::UnifiedRubySDK::Operations::GetAccountingPaymentResponse) }
    def get_accounting_payment(connection_id, id, fields_ = nil)
      # get_accounting_payment - Retrieve a payment
      request = ::UnifiedRubySDK::Operations::GetAccountingPaymentRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields_: fields_
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::GetAccountingPaymentRequest,
        base_url,
        '/accounting/{connection_id}/payment/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::GetAccountingPaymentRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::GetAccountingPaymentResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AccountingPayment)
          res.accounting_payment = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::UnifiedRubySDK::Operations::ListAccountingPaymentsRequest)).returns(::UnifiedRubySDK::Operations::ListAccountingPaymentsResponse) }
    def list_accounting_payments(request)
      # list_accounting_payments - List all payments
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::ListAccountingPaymentsRequest,
        base_url,
        '/accounting/{connection_id}/payment',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::UnifiedRubySDK::Operations::ListAccountingPaymentsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::UnifiedRubySDK::Operations::ListAccountingPaymentsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::UnifiedRubySDK::Shared::AccountingPayment])
          res.accounting_payments = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, accounting_payment: T.nilable(::UnifiedRubySDK::Shared::AccountingPayment)).returns(::UnifiedRubySDK::Operations::PatchAccountingPaymentResponse) }
    def patch_accounting_payment(connection_id, id, accounting_payment = nil)
      # patch_accounting_payment - Update a payment
      request = ::UnifiedRubySDK::Operations::PatchAccountingPaymentRequest.new(
        
        connection_id: connection_id,
        id: id,
        accounting_payment: accounting_payment
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::PatchAccountingPaymentRequest,
        base_url,
        '/accounting/{connection_id}/payment/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_payment, :json)
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

      res = ::UnifiedRubySDK::Operations::PatchAccountingPaymentResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AccountingPayment)
          res.accounting_payment = out
        end
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String).returns(::UnifiedRubySDK::Operations::RemoveAccountingPaymentResponse) }
    def remove_accounting_payment(connection_id, id)
      # remove_accounting_payment - Remove a payment
      request = ::UnifiedRubySDK::Operations::RemoveAccountingPaymentRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::RemoveAccountingPaymentRequest,
        base_url,
        '/accounting/{connection_id}/payment/{id}',
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

      res = ::UnifiedRubySDK::Operations::RemoveAccountingPaymentResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if True
                
        res.res = r.env.response_body if Utils.match_content_type(content_type, 'application/json')
      
      end
      res
    end


    sig { params(connection_id: ::String, id: ::String, accounting_payment: T.nilable(::UnifiedRubySDK::Shared::AccountingPayment)).returns(::UnifiedRubySDK::Operations::UpdateAccountingPaymentResponse) }
    def update_accounting_payment(connection_id, id, accounting_payment = nil)
      # update_accounting_payment - Update a payment
      request = ::UnifiedRubySDK::Operations::UpdateAccountingPaymentRequest.new(
        
        connection_id: connection_id,
        id: id,
        accounting_payment: accounting_payment
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::UnifiedRubySDK::Operations::UpdateAccountingPaymentRequest,
        base_url,
        '/accounting/{connection_id}/payment/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_payment, :json)
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

      res = ::UnifiedRubySDK::Operations::UpdateAccountingPaymentResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::UnifiedRubySDK::Shared::AccountingPayment)
          res.accounting_payment = out
        end
      end
      res
    end
  end
end
