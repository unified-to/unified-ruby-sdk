# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module UnifiedRubySDK
  extend T::Sig
  class Customer

    extend T::Sig
    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end

    sig { params(connection_id: String, ticketing_customer: T.nilable(Shared::TicketingCustomer)).returns(Utils::FieldAugmented) }
    def create_ticketing_customer(connection_id, ticketing_customer = nil)
      # create_ticketing_customer - Create a customer
      request = Operations::CreateTicketingCustomerRequest.new(
        
        connection_id: connection_id,
        ticketing_customer: ticketing_customer
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::CreateTicketingCustomerRequest,
        base_url,
        '/ticketing/{connection_id}/customer',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ticketing_customer, :json)
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

      res = Operations::CreateTicketingCustomerResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::TicketingCustomer)
          res.ticketing_customer = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String, fields: T.nilable(T::Array[String])).returns(Utils::FieldAugmented) }
    def get_ticketing_customer(connection_id, id, fields = nil)
      # get_ticketing_customer - Retrieve a customer
      request = Operations::GetTicketingCustomerRequest.new(
        
        connection_id: connection_id,
        id: id,
        fields: fields
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::GetTicketingCustomerRequest,
        base_url,
        '/ticketing/{connection_id}/customer/{id}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::GetTicketingCustomerRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetTicketingCustomerResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::TicketingCustomer)
          res.ticketing_customer = out
        end
      end
      res
    end

    sig { params(request: T.nilable(Operations::ListTicketingCustomersRequest)).returns(Utils::FieldAugmented) }
    def list_ticketing_customers(request)
      # list_ticketing_customers - List all customers
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::ListTicketingCustomersRequest,
        base_url,
        '/ticketing/{connection_id}/customer',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::ListTicketingCustomersRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ListTicketingCustomersResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[Shared::TicketingCustomer])
          res.ticketing_customers = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String, ticketing_customer: T.nilable(Shared::TicketingCustomer)).returns(Utils::FieldAugmented) }
    def patch_ticketing_customer(connection_id, id, ticketing_customer = nil)
      # patch_ticketing_customer - Update a customer
      request = Operations::PatchTicketingCustomerRequest.new(
        
        connection_id: connection_id,
        id: id,
        ticketing_customer: ticketing_customer
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::PatchTicketingCustomerRequest,
        base_url,
        '/ticketing/{connection_id}/customer/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ticketing_customer, :json)
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

      res = Operations::PatchTicketingCustomerResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::TicketingCustomer)
          res.ticketing_customer = out
        end
      end
      res
    end

    sig { params(connection_id: String, id: String).returns(Utils::FieldAugmented) }
    def remove_ticketing_customer(connection_id, id)
      # remove_ticketing_customer - Remove a customer
      request = Operations::RemoveTicketingCustomerRequest.new(
        
        connection_id: connection_id,
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::RemoveTicketingCustomerRequest,
        base_url,
        '/ticketing/{connection_id}/customer/{id}',
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

      res = Operations::RemoveTicketingCustomerResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if True
                
        res.res = r.env.response_body if Utils.match_content_type(content_type, 'application/json')
      
      end
      res
    end

    sig { params(connection_id: String, id: String, ticketing_customer: T.nilable(Shared::TicketingCustomer)).returns(Utils::FieldAugmented) }
    def update_ticketing_customer(connection_id, id, ticketing_customer = nil)
      # update_ticketing_customer - Update a customer
      request = Operations::UpdateTicketingCustomerRequest.new(
        
        connection_id: connection_id,
        id: id,
        ticketing_customer: ticketing_customer
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::UpdateTicketingCustomerRequest,
        base_url,
        '/ticketing/{connection_id}/customer/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :ticketing_customer, :json)
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

      res = Operations::UpdateTicketingCustomerResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::TicketingCustomer)
          res.ticketing_customer = out
        end
      end
      res
    end
  end
end
