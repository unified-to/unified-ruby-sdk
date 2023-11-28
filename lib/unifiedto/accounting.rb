# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Accounting

    extend T::Sig
    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end

    sig { params(connection_id: String, accounting_customer: T.nilable(Shared::AccountingCustomer)).returns(Utils::FieldAugmented) }
    def create_accounting_customer(connection_id, accounting_customer = nil)
      # create_accounting_customer - Create a customer
      request = Operations::CreateAccountingCustomerRequest.new(
        
        connection_id: connection_id,
        accounting_customer: accounting_customer
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::CreateAccountingCustomerRequest,
        base_url,
        '/accounting/{connection_id}/customer',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_customer, :json)
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

      res = Operations::CreateAccountingCustomerResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::AccountingCustomer)
          res.accounting_customer = out
        end
      end
      res
    end

    sig { params(connection_id: String, accounting_invoice: T.nilable(Shared::AccountingInvoice)).returns(Utils::FieldAugmented) }
    def create_accounting_invoice(connection_id, accounting_invoice = nil)
      # create_accounting_invoice - Create a invoice
      request = Operations::CreateAccountingInvoiceRequest.new(
        
        connection_id: connection_id,
        accounting_invoice: accounting_invoice
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::CreateAccountingInvoiceRequest,
        base_url,
        '/accounting/{connection_id}/invoice',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_invoice, :json)
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

      res = Operations::CreateAccountingInvoiceResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::AccountingInvoice)
          res.accounting_invoice = out
        end
      end
      res
    end

    sig { params(connection_id: String, accounting_payment: T.nilable(Shared::AccountingPayment)).returns(Utils::FieldAugmented) }
    def create_accounting_payment(connection_id, accounting_payment = nil)
      # create_accounting_payment - Create a payment
      request = Operations::CreateAccountingPaymentRequest.new(
        
        connection_id: connection_id,
        accounting_payment: accounting_payment
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::CreateAccountingPaymentRequest,
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

      res = Operations::CreateAccountingPaymentResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::AccountingPayment)
          res.accounting_payment = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String, fields: T.nilable(T::Array[String])).returns(Utils::FieldAugmented) }
    def get_accounting_customer(connection_id, id, fields = nil)
      # get_accounting_customer - Retrieve a customer
      request = Operations::GetAccountingCustomerRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields: fields
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::GetAccountingCustomerRequest,
        base_url,
        '/accounting/{connection_id}/customer/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::GetAccountingCustomerRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetAccountingCustomerResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::AccountingCustomer)
          res.accounting_customer = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String, fields: T.nilable(T::Array[String])).returns(Utils::FieldAugmented) }
    def get_accounting_invoice(connection_id, id, fields = nil)
      # get_accounting_invoice - Retrieve a invoice
      request = Operations::GetAccountingInvoiceRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields: fields
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::GetAccountingInvoiceRequest,
        base_url,
        '/accounting/{connection_id}/invoice/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::GetAccountingInvoiceRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetAccountingInvoiceResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::AccountingInvoice)
          res.accounting_invoice = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String, fields: T.nilable(T::Array[String])).returns(Utils::FieldAugmented) }
    def get_accounting_payment(connection_id, id, fields = nil)
      # get_accounting_payment - Retrieve a payment
      request = Operations::GetAccountingPaymentRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields: fields
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::GetAccountingPaymentRequest,
        base_url,
        '/accounting/{connection_id}/payment/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::GetAccountingPaymentRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetAccountingPaymentResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::AccountingPayment)
          res.accounting_payment = out
        end
      end
      res
    end

    sig { params(request: T.nilable(Operations::ListAccountingCustomersRequest)).returns(Utils::FieldAugmented) }
    def list_accounting_customers(request)
      # list_accounting_customers - List all customers
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::ListAccountingCustomersRequest,
        base_url,
        '/accounting/{connection_id}/customer',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::ListAccountingCustomersRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ListAccountingCustomersResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[Shared::AccountingCustomer])
          res.accounting_customers = out
        end
      end
      res
    end

    sig { params(request: T.nilable(Operations::ListAccountingInvoicesRequest)).returns(Utils::FieldAugmented) }
    def list_accounting_invoices(request)
      # list_accounting_invoices - List all invoices
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::ListAccountingInvoicesRequest,
        base_url,
        '/accounting/{connection_id}/invoice',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::ListAccountingInvoicesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ListAccountingInvoicesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[Shared::AccountingInvoice])
          res.accounting_invoices = out
        end
      end
      res
    end

    sig { params(request: T.nilable(Operations::ListAccountingPaymentsRequest)).returns(Utils::FieldAugmented) }
    def list_accounting_payments(request)
      # list_accounting_payments - List all payments
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::ListAccountingPaymentsRequest,
        base_url,
        '/accounting/{connection_id}/payment',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::ListAccountingPaymentsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ListAccountingPaymentsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[Shared::AccountingPayment])
          res.accounting_payments = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String, accounting_customer: T.nilable(Shared::AccountingCustomer)).returns(Utils::FieldAugmented) }
    def patch_accounting_customer(connection_id, id, accounting_customer = nil)
      # patch_accounting_customer - Update a customer
      request = Operations::PatchAccountingCustomerRequest.new(
        
        connection_id: connection_id,
        id: id,
        accounting_customer: accounting_customer
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::PatchAccountingCustomerRequest,
        base_url,
        '/accounting/{connection_id}/customer/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_customer, :json)
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

      res = Operations::PatchAccountingCustomerResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::AccountingCustomer)
          res.accounting_customer = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String, accounting_invoice: T.nilable(Shared::AccountingInvoice)).returns(Utils::FieldAugmented) }
    def patch_accounting_invoice(connection_id, id, accounting_invoice = nil)
      # patch_accounting_invoice - Update a invoice
      request = Operations::PatchAccountingInvoiceRequest.new(
        
        connection_id: connection_id,
        id: id,
        accounting_invoice: accounting_invoice
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::PatchAccountingInvoiceRequest,
        base_url,
        '/accounting/{connection_id}/invoice/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_invoice, :json)
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

      res = Operations::PatchAccountingInvoiceResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::AccountingInvoice)
          res.accounting_invoice = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String, accounting_payment: T.nilable(Shared::AccountingPayment)).returns(Utils::FieldAugmented) }
    def patch_accounting_payment(connection_id, id, accounting_payment = nil)
      # patch_accounting_payment - Update a payment
      request = Operations::PatchAccountingPaymentRequest.new(
        
        connection_id: connection_id,
        id: id,
        accounting_payment: accounting_payment
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::PatchAccountingPaymentRequest,
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

      res = Operations::PatchAccountingPaymentResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::AccountingPayment)
          res.accounting_payment = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String).returns(Utils::FieldAugmented) }
    def remove_accounting_customer(connection_id, id)
      # remove_accounting_customer - Remove a customer
      request = Operations::RemoveAccountingCustomerRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::RemoveAccountingCustomerRequest,
        base_url,
        '/accounting/{connection_id}/customer/{id}',
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

      res = Operations::RemoveAccountingCustomerResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if true
        res.res = r.env.response_body if Utils.match_content_type(content_type, 'application/json')
      end
      res
    end

    sig { params(connection_id: String, id: String).returns(Utils::FieldAugmented) }
    def remove_accounting_invoice(connection_id, id)
      # remove_accounting_invoice - Remove a invoice
      request = Operations::RemoveAccountingInvoiceRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::RemoveAccountingInvoiceRequest,
        base_url,
        '/accounting/{connection_id}/invoice/{id}',
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

      res = Operations::RemoveAccountingInvoiceResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if true
        res.res = r.env.response_body if Utils.match_content_type(content_type, 'application/json')
      end
      res
    end

    sig { params(connection_id: String, id: String).returns(Utils::FieldAugmented) }
    def remove_accounting_payment(connection_id, id)
      # remove_accounting_payment - Remove a payment
      request = Operations::RemoveAccountingPaymentRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::RemoveAccountingPaymentRequest,
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

      res = Operations::RemoveAccountingPaymentResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if true
        res.res = r.env.response_body if Utils.match_content_type(content_type, 'application/json')
      end
      res
    end

    sig { params(connection_id: String, id: String, accounting_customer: T.nilable(Shared::AccountingCustomer)).returns(Utils::FieldAugmented) }
    def update_accounting_customer(connection_id, id, accounting_customer = nil)
      # update_accounting_customer - Update a customer
      request = Operations::UpdateAccountingCustomerRequest.new(
        
        connection_id: connection_id,
        id: id,
        accounting_customer: accounting_customer
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::UpdateAccountingCustomerRequest,
        base_url,
        '/accounting/{connection_id}/customer/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_customer, :json)
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

      res = Operations::UpdateAccountingCustomerResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::AccountingCustomer)
          res.accounting_customer = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String, accounting_invoice: T.nilable(Shared::AccountingInvoice)).returns(Utils::FieldAugmented) }
    def update_accounting_invoice(connection_id, id, accounting_invoice = nil)
      # update_accounting_invoice - Update a invoice
      request = Operations::UpdateAccountingInvoiceRequest.new(
        
        connection_id: connection_id,
        id: id,
        accounting_invoice: accounting_invoice
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::UpdateAccountingInvoiceRequest,
        base_url,
        '/accounting/{connection_id}/invoice/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :accounting_invoice, :json)
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

      res = Operations::UpdateAccountingInvoiceResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::AccountingInvoice)
          res.accounting_invoice = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String, accounting_payment: T.nilable(Shared::AccountingPayment)).returns(Utils::FieldAugmented) }
    def update_accounting_payment(connection_id, id, accounting_payment = nil)
      # update_accounting_payment - Update a payment
      request = Operations::UpdateAccountingPaymentRequest.new(
        
        connection_id: connection_id,
        id: id,
        accounting_payment: accounting_payment
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::UpdateAccountingPaymentRequest,
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

      res = Operations::UpdateAccountingPaymentResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::AccountingPayment)
          res.accounting_payment = out
        end
      end
      res
    end
  end
end
